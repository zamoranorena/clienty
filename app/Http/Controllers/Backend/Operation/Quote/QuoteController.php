<?php
namespace App\Http\Controllers\Backend\Operation\Quote;
use App\Models\Operation\Quote\Quote;
use App\Models\Operation\Quote_Service\Quote_Service;
use App\Models\Access\User\User;
use App\Models\Maintenance\Service\Service;
use App\Models\Maintenance\Provider\Provider;
use App\Models\Operation\Visit\Visit;
use App\Models\Maintenance\Customer\Customer;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use DB;
use PDF;
use Carbon;
class QuoteController extends Controller
{
    public function index(Request $request){
        $quote = Quote::join('users','users.id','quotes.created_user_id')
                ->select('users.name as counter','quotes.*');
        $array = array(1);/*Contabilidad y administraciòn*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $quote=$quote->where('quotes.created_user_id','=',access()->user()->id)->where('active',1);
        }
        $quote=$quote->orderBy("quotes.id","DESC")->where('active',1)->get();
        foreach ($quote as $cotizacion){
            $consulta=DB::table('quotes')
                ->select('quotes.id') 
                ->join('sales','quotes.id','=','sales.quote_id')
                ->where('sales.quote_id','=',$cotizacion->id)
                ->pluck('quotes.id')
                ->first();
            $cotizacion["test"]=$consulta;
        }
        return view('backend.quote.index', compact('quote'));
    }
    public function create($id){
        $visits=Visit::where('id', $id)->first();

        $idusuario=access()->user()->id;
        $service=Service::where('active',1)->where('services.created_user_id',$idusuario)->get();


        $carbon = new \Carbon\Carbon();
        $date = $carbon->now();
        $date2=$carbon->now();
        $starDate=$date2->addDays(0);  /*Cotizacion valida por 15 dias*/

        $endDate = $date->addDays(14);
        $starDate=$starDate->format('Y-m-d');
        $endDate = $endDate->format('Y-m-d');

        return view('backend.quote.create', compact('customers','visits','service','starDate','endDate'));
    }
    
    public function edit($id){
        $quote=Quote::find($id);
        $idusuario=access()->user()->id;
        $service=Service::where('active',1)->where('services.created_user_id',$idusuario)->get();
        $quote_service=DB::table('services')
           ->join('quote_service','quote_service.service_id','=','services.id')
           ->join('quotes','quote_service.quote_id','=','quotes.id')
           ->join('proveedores','proveedores.id','=','services.provider_id')
           ->select('services.id','services.name','proveedores.name as provider_name','quote_service.price','proveedores.id as provider_id','quote_service.cantidad as cantidad','quote_service.id as detallecotid', 'quotes.id as quote_id','quote_service.coments as coments','quotes.coments as comentsquote')
           ->where('quotes.id','=',$id)->orderBy('quote_service.id')
           ->get();
        $carbon = new \Carbon\Carbon();
        $date = $carbon->now();
        $date2=$carbon->now();
        $starDate=$date2->addDays(0);  /*Cotizacion valida por 15 dias*/

        $endDate = $date->addDays(14);
        $starDate=$starDate->format('Y-m-d');
        $endDate = $endDate->format('Y-m-d');
        return view('backend.quote.edit', compact('quote','service','quote_service','starDate','endDate'));
    }

    public function store(Request $request){
        
        /*$this->validate($request, [
            'servicios'     => 'required|not_in:""',
        ]);*/
        $quote= new Quote;
        $proveedor=new Provider;
        $quote->created_user_id=$request['created_user_id'];
        $quote->customer_id = $request["customer_id"];
        $quote->visit_id=$request["visit_id"];
        $quote->date_vality=$request['fechavalidez'];
        $quote->coments=$request['coments'];
        $quote->total=str_replace(',', '',$request['total']);

        $customers=Customer::find($request["customer_id"]);
        $customers->name=$request["name"];
        $customers->last_name=$request["last_name"];
        $customers->email=$request["email"];
        $customers->phone=$request["telefono"];
        $customers->save();

        $cadena="QO-";
        $quote->save();
        $quote_id=$quote->id;
        $quote->identifier = $cadena. str_repeat('0', 6 - strlen($quote->id)) . $quote_id;
        $quote->save();
        if(isset($request["serviexiste"])){

            foreach ($request["serviexiste"] as $servicios){
                //$service= new Service;
                //$service= Service::find($servicios["service_id"]);
                //$service->name=$servicios["service_name"];
                //$service->price=$servicios["price"];
                //$proveedor=Provider::find($servicios["provider_id"]);
                //$proveedor->name=$servicios["provider_name"];
                //$proveedor->save();
                //$provider_id=$proveedor->id;//obtengo id del proveedor
                //$service->provider_id=$provider_id;
                //$service->save();
                $quote->services()->attach(
                    $servicios["service_id"],
                    array(
                        'price' => str_replace(',', '',$servicios["price"]),
                        'cantidad' => $servicios['cantidad'],
                        'created_user_id'=>$servicios['created_user_id'],
                        'coments'=>$servicios['coments'],
                        'total_price'=>str_replace(',', '',$servicios['price_total']),
                        'created_user_id'=>$servicios['created_user_id'],
                        
                    )
                );
            }        
        }
        if(isset($request["services"])){
            foreach($request["services"] as $servicios){

                $proveedor=new Provider;
                $quote->save();//guardo la cotizacion
                $quote_id=$quote->id;
                $proveedor->name=$servicios["provider"];
                $proveedor->created_user_id=$request["created_user_id"];
                $proveedor->save();//guardando un nuevo proveedor
                $quote->save();
                $quote_id=$quote->id;
                $quote->identifier = $cadena. str_repeat('0', 6 - strlen($quote->id)) . $quote_id;
                $quote->save();
                $provider_id=$proveedor->id;//obtengo id del proveedor
                $service= new Service;
                $service->provider_id=$provider_id;
                $service->name=$servicios["name"];
                $service->price=str_replace(',', '',$servicios["price"]);
                $service->created_user_id=$request["created_user_id"];
                $service->save();
                $id=$service->id;
                $quote->services()->attach( 
                    $id, 
                    array(
                        //'provider_name'=>$servicios['provider'],
                        //'service_name'=>$servicios['name'],
                        'price'=> str_replace(',', '',$servicios['price']),
                        'total_price'=>str_replace(',', '',$servicios['price_total']),
                        'cantidad'=>$servicios['cantidad'],
                        'coments'=>$servicios['coments'],
                        'created_user_id'=>$servicios['created_user_id'],
                    )
                );
            }
        }            
        return Redirect('/admin/operation/quote')->withFlashSuccess(trans('La cotización se ha creado correctamente'));
    }


    public function eliminar($id){
        $quote=Quote::find($id);
        $quote_service = Quote_Service::where("quote_id",$id)->first();
        $quote_service->active=0;
        $quote->active = 0;
        $quote->save();
        $quote_service->save(); 
        return Redirect('/admin/operation/quote')->withFlashSuccess(trans('La cotización se ha eliminado correctamente'));
    }
    public function deleteservicios($id){
        $quotes_services=Quote_Service::where($id,'quote_id');
    }
    public function update($id, Request $request){
        $quote=Quote::find($id);
        //$quote->update($request->all());
        //ACTUALIZANDO COTIZACION/
        $customers=Customer::find($request["customer_id"]);
        $customers->name=$request["name"];
        $customers->last_name=$request["last_name"];
        $customers->email=$request["email"];
        $customers->phone=$request["telefono"];

        $customers->save();



        $proveedor=new Provider;
        /*servicios del crud de servicios*/
        if(isset($request["servicotizado"])){
        /*eliminar los que estan en base de datos y no en la cotización modificada*/
        $detallescotizacion=Quote_Service::where('quote_id','=',$quote->id)->select('id')->get();

        $bdarray = array();//array vacio
        $arraycotiza= array();//array vacio
            foreach ($detallescotizacion as $detalle) {
               array_push($bdarray,$detalle['id']);
            }


        foreach ($request["servicotizado"] as $servicios){
        $reques_service_id=$servicios["detallecotid"];
        array_push($arraycotiza,$reques_service_id);

            $quote=Quote::find($servicios["quoteid"]);
            $serviceid=$servicios["service_id"];

                                $quote->services()->updateExistingPivot( 
                                $serviceid, 
                                array(
                                'price'=> str_replace(',', '',$servicios['service_price']),
                                'cantidad'=>$servicios['service_cantidad'],
                                //'provider_name'=>$servicios['provider_name'],
                                //'service_name'=>$servicios['service_name'],
                                'total_price'=>str_replace(',', '',$servicios['total_price']),
                                'coments'=>$servicios['coments'],
                                'updated_user_id'=>$request['updated_user_id']
                                )
                            );     
        }


        //for
        //Eliminado
        $result=array_values(array_diff($bdarray,$arraycotiza));
        for ($i=0; $i < count($result); $i++) { 
    
            $quotes_services=Quote_Service::find($result[$i]);
            $quotes_services->delete();
            }
        }//id

/*servicio nuevo creado*/

        if(isset($request["services"])){
            foreach ($request["services"] as $servicios) {

                $proveedor=new Provider;
                $proveedor->name=$servicios["providername"];
                $proveedor->save();//guardando un nuevo proveedor
                $providerid=$proveedor->id;//obtengo id del proveedor
                $provider_name=$proveedor->name;//obtengo id del proveedor

                $service=new Service;
                $service->name=$servicios["name"];
                $service->price=str_replace(',', '',$servicios['price']);
                $service->provider_id=$providerid;
                $service->save();
                $id     =    $service->id;

                $quote  =  Quote::find($servicios["quoteid"]);
                $quote->services()->attach( 
                    $id, 
                    array(
                        'price'=> str_replace(',', '',$servicios['price']),
                        'cantidad'=>$servicios['cantidad'],
                        'coments'=>$servicios['coments'],
                        'total_price'=>str_replace(',', '',$servicios['total_price']),
                        'created_user_id'=>$request['created_user_id'],
                    )
                );
            }
        }

        if (isset($request["serviexiste"])){
            foreach ($request["serviexiste"] as $servicios){

                //$quote=Quote::find($servicios["quoteid"]);
                
                $serviceid = $servicios["service_id"];
                
                $quote->services()->attach( 
                $serviceid, 
                    array(
                        'price'=> str_replace(',', '',$servicios['price']),
                
                        'cantidad'=>$servicios['cantidad'],
                        'coments'=>$servicios['coments'],
                        'total_price'=> str_replace(',', '',$servicios['total_price']),
                        'created_user_id'=>$request['created_user_id'],
                    )
                );
            }
            /*servicios de bd de la cotizacion*/
        }



        /*Actualizar el total de la cotizacion*/
        $montoCotizacion=Quote_Service::where('quote_id','=',$quote->id)->sum('total_price');
        
        number_format($montoCotizacion,2,'.','');
        //ACTUALIZANDO COTIZACION//
        $quote->updated_user_id=$request['updated_user_id'];
        $quote->customer_id=$request['customer_id'];
        $quote->total=$request['total'];
        $quote->coments=$request['coments'];
        $quote->date_vality=$request['date_vality'];
        $quote->total=$montoCotizacion;
        $quote->save();


        return Redirect('/admin/operation/quote')->withFlashSuccess(trans('La cotización se ha editado correctamente'));
   


    }
    public function show($id){
        $quote = Quote::join('users','users.id','quotes.created_user_id')
            ->where('quotes.created_user_id','=',access()->user()->id)
            ->where('quotes.id','=',$id)
            ->select('users.name as counter','quotes.*')
            ->get();
        $quote=Quote::find($id);
        $service=Service::all();
        $quote_service=DB::table('services')
            ->join('quote_service','quote_service.service_id','=','services.id')
            ->join('quotes','quote_service.quote_id','=','quotes.id')
            ->join('proveedores','proveedores.id','=','services.provider_id')
            ->select('services.id','services.name as name','quote_service.price','proveedores.id as provider_id','proveedores.name as provider_name','quote_service.cantidad as cantidad', 'quotes.id as quote_id','quote_service.coments as coments_service')
            ->where('quotes.id','=',$id)
            ->get();
        return view('backend.quote.show',compact('quote','service','quote_service'));
    }

    public function quotedesactivated(){
        $quote = Quote::join('users','users.id','quotes.created_user_id')->select('users.name as counter','quotes.*');
        $array = array(1);/*Contabilidad y administraciòn*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $quote=$quote->where('quotes.created_user_id','=',access()->user()->id)->where('active',0);
        }
        $quote=$quote->orderBy("quotes.id","DESC")->where('active',0)->get();
        foreach ($quote as $cotizacion){
            $consulta=DB::table('quotes')
                ->select('quotes.id') 
                ->join('sales','quotes.id','=','sales.quote_id')
                ->where('sales.quote_id','=',$cotizacion->id)
                ->pluck('quotes.id')
                ->first();
            $cotizacion["test"]=$consulta;
        }
        return view('backend.quote.desactivated', compact('quote')); 
    }

    public function restore($id){
        $quote=Quote::find($id);
        $quote_service = Quote_Service::where("quote_id",$id)->first();
        $quote_service->active=1;
        $quote->active = 1;
        $quote->save();
        $quote_service->save(); 
        return Redirect('/admin/operation/quote')->withFlashSuccess(trans('La cotización se ha restaurado correctamente'));
    }

    public function crearpdf($id){        
        

     
        $cotizacion = Quote::find($id);

        $quote_service=DB::table('services')
           ->join('quote_service','quote_service.service_id','=','services.id')
           ->join('quotes','quote_service.quote_id','=','quotes.id')
           ->join('proveedores','proveedores.id','=','services.provider_id')
           ->select('services.id','services.name as name','quote_service.price','proveedores.id as provider_id','proveedores.name as provider_name','quote_service.cantidad as cantidad', 'quotes.id as quote_id','quote_service.coments as coments_service','quote_service.total_price as total_price')
           ->where('quotes.id','=',$id)
           ->get();

               
        $costotal=0;
        foreach($quote_service as $resultados){
            $valor1=$resultados->price;
            $valor2=$resultados->cantidad;
            $pretotal=number_format($valor1*$valor2,2,'.','');
            $costotal=$costotal + $pretotal;
        }
        //return view ('backend.quote.quotepdf', compact('cotizacion','cotizacion_services','costotal'));
        $pdf=PDF::loadView('backend.quote.quotepdf',compact('cotizacion','quote_service','costotal'));
        return $pdf->stream($cotizacion->identifier.'.pdf');
    }

}
