<?php
namespace App\Http\Controllers\Backend\Operation\Liquidation;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use App\Models\Maintenance\Service\Service;
use App\Models\Maintenance\Provider\Provider;
use App\Models\Operation\Sale_service\Sale_service;
use App\Models\Operation\Sale\Sale;
use App\Models\Operation\File\File;
use Illuminate\Support\Facades\File as Archivo;
use App\Http\Controllers\Controller;
use App\Models\Operation\Liquidation\Liquidation;
use App\Models\Operation\Liquidation_service\Liquidation_service;
use Illuminate\Support\Facades\Input;
use DB;
use Storage;
use PDF;
class LiquidationController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function listar(){
        $liquidations=Liquidation::join('sales','sales.id','=','liquidations.sale_id')
            ->OrderBy('liquidations.id','DESC')
            ->select('liquidations.*'3

        ,'sales.identifier as sale_identifier');
        $array = array(1,4);/*Contabilidad y administraciòn*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $liquidations=$liquidations->where('liquidations.created_user_id',access()->user()->id)->where('send',0);
        }
        
        $liquidations=$liquidations->where('send',0)->get();

        foreach ($liquidations as $liquidation){
              $liquidadas=DB::table('liquidations')
                //->join('files','files.liquidation_id','=','liquidations.id')
                ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
                ->where('liquidation_service.liquidation_id','=',$liquidation->id)
                ->pluck('liquidations.id')
                ->first();
                $liquidation["liquidacion"]=$liquidadas;
        }
        return view ('backend.liquidation.listar_liquidations', compact('liquidations'));
    }


/*Utilidades por mes*/
        public function utilidades(){

        $array = array(1,4);/*Contabilidad y administraciòn*/
        $mes = date('m');


        $liquidations=Liquidation::join('sales','sales.id','=','liquidations.sale_id')
        ->join('users','users.id','=','liquidations.created_user_id')
         ->OrderBy('liquidations.id','DESC')
        ->select('liquidations.*','sales.identifier as sale_identifier','users.name as counter');

        
        $utilidades = Liquidation::join('users','users.id','=','liquidations.created_user_id')
        ->groupBy(\DB::raw('MONTH(liquidations.created_at)','YEAR(liquidations.created_at)','liquidations.created_user_id','users.id'));

        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $liquidations=$liquidations->where('liquidations.created_user_id',access()->user()->id);
           $utilidades= $utilidades->where('liquidations.created_user_id',access()->user()->id);
        }

        $liquidations=$liquidations->get();      
        $utilidades= $utilidades->select(\DB::raw('MONTH(liquidations.created_at) as Mes,YEAR(liquidations.created_at) as Ano, SUM(total_utility) as Cantidad, users.name as counter,users.id'))->OrderBy('Mes','Ano','users.id')->get();


        foreach ($liquidations as $liquidation){
              $liquidadas=DB::table('liquidations')
                //->join('files','files.liquidation_id','=','liquidations.id')
                ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
                ->where('liquidation_service.liquidation_id','=',$liquidation->id)
                ->pluck('liquidations.id')
                ->first();
                $liquidation["liquidacion"]=$liquidadas;
        }
        return view ('backend.liquidation.utilidades',compact('liquidations','utilidades'));
        }

        public function cerrarLiquidacion($id){
            $liquidation = DB::table('liquidations')->where('id', $id)->get();
            $liquidation->active=1;
            $liquidation->save();
        }



    public function editarliquidacion($id)
    {
            $files=File::where('liquidation_id',$id)->get();
            $servicios_liquidacion=Liquidation::join('sales','sales.id','=','liquidations.sale_id')
            //->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
            ->join('sale_service','sales.id','=','sale_service.sale_id')
            ->join('services','sale_service.service_id','services.id')
            ->join('proveedores','services.provider_id','proveedores.id')
            ->join('customers','customers.id','=','sales.customer_id')
            ->join('users','users.id','=','sales.created_user_id')
            ->join('quotes','quotes.id','=','sales.quote_id')
            ->join('visits','quotes.visit_id','=','visits.id')
            //->join('users','users.id','visits.counter_id')
            //->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
            ->select('sale_service.name as nameservice','sales.identifier as identifier','sale_service.cantidad as cantidad','sale_service.price as precio','sale_service.coments as coments','proveedores.name as nameprovider','sales.id as sale_id','sale_service.service_id','sale_service.total_price as precio_total','customers.name as namecustomer','customers.last_name as lastnamecustomer','users.name as namecounter','customers.id as customer_id','sales.coments as coments_general')
            ->where('liquidations.sale_id',$id)->get();

            $comision_bancaria = Liquidation::join('sales','liquidations.sale_id','=','sales.id')
            ->join('receipts','receipts.sale_id','=','sales.id')
            ->join('deposits','deposits.receipt_id','=','receipts.id')
            ->join('payments_type','payments_type.id','=','deposits.payment_id')
            ->select(DB::raw('sum(deposits.amount * payments_type.commission) as porcentaje'))
            ->where('liquidations.id',$id)->first();

        $customer_id=$servicios_liquidacion->pluck('customer_id')->first();//CUSTOMER_ID
        $namecounter=$servicios_liquidacion->pluck('namecounter')->first();//NOMBRE_COUNTER
        $namecustomer=$servicios_liquidacion->pluck('namecustomer')->first();//NOMBRE CLIENTE
        $lastnamecustomer=$servicios_liquidacion->pluck('lastnamecustomer')->first();//APELLIDO CLIENTE
        $identificador=$servicios_liquidacion->pluck('identifier')->first();



        $id_liquidation=Liquidation::where('sale_id',$id)->pluck('id')->first();//OBTENIENDO ID DE LIQUIDACION

        $liquidation=Liquidation::find($id_liquidation);//ENCONTRANDO LIQUIDACION
        $cadena="LO-";
        $liquidation->identifier = $cadena. str_repeat('0', 6 - strlen($id_liquidation)) . $id_liquidation;
        $liquidation->customer_id=$customer_id;
        $liquidation->created_user_id=access()->user()->id;
        $liquidation->save();//SALVO LIQUIDACI�N

            foreach ($servicios_liquidacion as $servicio_liquidacion){

                $service = Liquidation::join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')->where('liquidations.sale_id',$servicio_liquidacion['sale_id'])->where('liquidation_service.service_id',$servicio_liquidacion['service_id'])->count();
                if ($service == 0) {
                    $liquidation->services()->attach( 
                    $servicio_liquidacion['service_id'], 
                        array(
                            'price'=>$servicio_liquidacion['precio'],//precio
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'precio_t'=>$servicio_liquidacion['precio_total'],//precio_total
                            'created_user_id'=>access()->user()->id,//usuario
                            /*
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'costo'=>$servicio_liquidacion['costo'],//cost_total
                            'fecha_pago'=>$servicio_liquidacion['date'],
                            'created_user_id'=>$request['created_user_id'],*/
                        )
                    );  
                }else {
                    $liquidation->services()->updateExistingPivot( 
                    $servicio_liquidacion['service_id'], 
                        array(
                            'price'=>$servicio_liquidacion['precio'],//precio
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'precio_t'=>$servicio_liquidacion['precio_total'],//precio_total
                            'created_user_id'=>access()->user()->id,//usuario
                            /*
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'costo'=>$servicio_liquidacion['costo'],//cost_total
                            'fecha_pago'=>$servicio_liquidacion['date'],
                            'created_user_id'=>$request['created_user_id'],*/
                        )
                    );
                }
                $service=0;
                
                $prec_venta_total = DB::table('liquidation_service')
                    //->select(DB::raw('sum(precio_t) as p_venta_total'))
                    ->where('liquidation_service.liquidation_id', $id_liquidation)
                    ->sum('liquidation_service.precio_t');               
            }

            $liquidation->p_venta_total=$prec_venta_total;
            $liquidation->save();
            $identificado_liquidacion = $liquidation->identifier;
            $sale_id=$id;
            $services = DB::table('liquidations')
            ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
            ->join('services','liquidation_service.service_id','services.id')
            ->join('proveedores','services.provider_id','proveedores.id')
            ->join('customers','customers.id','=','liquidations.customer_id')
            ->join('users','users.id','=','liquidations.created_user_id')
            /*->select('services.name as nameservice','services.id as service_id','liquidation_service.cantidad as cantidad','liquidation_service.price as precio','proveedores.name as nameprovider','customers.id as customer_id','customers.name as namecustomer','customers.last_name as lastnamecustomer','users.name as namecounter','liquidation_service.id as idliqui','liquidation_service.costo as costo','liquidation_service.fecha_pago as fecha_pago','liquidations.identifier as identificado_liquidacion','liquidation_service.id as id_liquidacion','liquidation_service.parent_id as parent_id','liquidation_service.price as precio','liquidation_service.precio_t as prec_venta')*/
            ->selectRaw('services.name as nameservice, services.name as nameservice,services.id as service_id,liquidation_service.cantidad as cantidad,liquidation_service.price as precio,proveedores.name as nameprovider,customers.id as customer_id,customers.name as namecustomer,customers.last_name as lastnamecustomer,users.name as namecounter,liquidation_service.id as idliqui,liquidation_service.costo as costo,liquidation_service.fecha_pago as fecha_pago,liquidations.identifier as identificado_liquidacion, liquidation_service.id as id_liquidacion,liquidation_service.parent_id as parent_id,liquidation_service.price as precio,liquidation_service.precio_t as prec_venta, (SELECT COUNT(*) FROM liquidation_service WHERE liquidation_id="'.$id.'" AND parent_id IS NOT NULL) as chkPadre')
            ->where('liquidation_service.liquidation_id',$id_liquidation)
            ->get();

        //$sale_id=$id;//ID DE LA VENTA
        //$cadena="VO-";//CADENA
        //$identificador=$cadena. str_repeat('0', 6 - strlen($id)) . $id;//IDENTIFICADOR DE LA VENTA
        /*$liquidacion=Liquidation::where('sale_id',$id)->get();//ENCONTRANDO LA LIQUIDACION
        foreach ($liquidacion as $liquidacion) {
            $id=$liquidacion['id'];
        }*/
        //$liquidation_id=$liquidacion->id;
        return view ('backend.liquidation.edit',compact('servicios_liquidacion','customer_id','namecounter','namecustomer','lastnamecustomer','id_liquidation','services_liquidacion','id_liquidation','identificador','identificado_liquidacion','sale_id','files','services','id_liquidacion','comision_bancaria'));
    }

    public function edit($id){
        $files=File::where('liquidation_id',$id)->get();
        $liquidation = DB::table('liquidations')->where('id', $id)->get();
        $sale_id = $liquidation->pluck('sale_id')->first();

        //$sale_id = DB::table('liquidations')->where('liquidations.sale_id', 'John')->first();
        $services=Liquidation::join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
            ->join('services','liquidation_service.service_id','services.id')
            ->join('proveedores','services.provider_id','proveedores.id')
            ->join('customers','customers.id','=','liquidations.customer_id')
            ->join('users','users.id','=','liquidations.created_user_id')
            //->join('sales','sales.id','=','liquidations.sale_id')
            //->join('sale_service','sale_service.sale_id','=','sales.id')
            ->selectRaw('services.name as nameservice, services.name as nameservice,services.id as service_id,liquidation_service.cantidad as cantidad,liquidation_service.price as precio,proveedores.name as nameprovider,customers.id as customer_id,customers.name as namecustomer,customers.last_name as lastnamecustomer,users.name as namecounter,liquidation_service.id as idliqui,liquidation_service.costo as costo,liquidation_service.fecha_pago as fecha_pago,liquidations.identifier as identificado_liquidacion, liquidation_service.id as id_liquidacion,liquidation_service.parent_id as parent_id,liquidation_service.price as precio,liquidation_service.precio_t as prec_venta, (SELECT COUNT(*) FROM liquidation_service WHERE liquidation_id="'.$id.'" AND parent_id IS NOT NULL) as chkPadre')
            //->select('services.name as nameservice','services.id as service_id','liquidation_service.cantidad as cantidad','liquidation_service.price as precio','proveedores.name as nameprovider','customers.id as customer_id','customers.name as namecustomer','customers.last_name as lastnamecustomer','users.name as namecounter','liquidation_service.id as idliqui','liquidation_service.costo as costo','liquidation_service.fecha_pago as fecha_pago','liquidations.identifier as identificado_liquidacion', 'liquidation_service.id as id_liquidacion','liquidation_service.parent_id as parent_id','liquidation_service.price as precio','liquidation_service.precio_t as prec_venta')
            ->where('liquidations.id',$id)->get();

        $comision_bancaria = Liquidation::join('sales','liquidations.sale_id','=','sales.id')
            ->join('receipts','receipts.sale_id','=','sales.id')
            ->join('deposits','deposits.receipt_id','=','receipts.id')
            ->join('payments_type','payments_type.id','=','deposits.payment_id')
            ->select(DB::raw('sum(deposits.amount * payments_type.commission) as porcentaje, sum(deposits.amount_commission) as amount_commission'))
            ->where('liquidations.id',$id)->first();
            //->sum('payments_type.name','payments_type.commission','deposits.amount')->get();
        //dd($consulta->porcentaje);

        $identificado_liquidacion=$services->pluck('identificado_liquidacion')->first();
        //$saleid=$servicios_liquidacion->pluck('saleid')->first();
        $customer_id=$services->pluck('customer_id')->first();
        $namecounter=$services->pluck('namecounter')->first();   
        $namecustomer=$services->pluck('namecustomer')->first();
        $lastnamecustomer=$services->pluck('lastnamecustomer')->first();
       
        $sale_id=$sale_id;
        $cadena="VO-";
        $identificador=$cadena. str_repeat('0', 6 - strlen($id)) . $id;
        $liquidacion=Liquidation::where('id',$id)->get();//todos los detalles de las venta
        foreach ($liquidacion as $liquidacion) {
            $id=$liquidacion['id'];
        }
        $id_liquidation=$liquidacion->id;

        return view ('backend.liquidation.edit',compact('services','sale_id','identificador','id_liquidation','liquidacion','namecustomer','lastnamecustomer','namecounter','files','customer_id','identificado_liquidacion','saleid','comision_bancaria'));
    }
    public function reabrirliquidacion($id){
        $liquidation = Liquidation::findOrFail($id);
        $liquidation->send = 0;
        $liquidation->save();
        return Redirect('/admin/liquidation/listar')->withFlashSuccess(trans('La liquidación se ha abierto correctamente'));
    }

    //EDITAR LIQUIDACION//
    public function update($id, Request $request){
        if ($request['guardar']=== 'guardar'){
            $liquidacion=Liquidation::find($id);
            $liquidacion->send=1;
            $liquidacion->save();
            $preciototal=0;
            $costo_total=0;
            $utilidad=0;
            $liquidacion=Liquidation::find($id);//
            /*foreach($request['services_liquidacion'] as $servicio_liquidacion){
                $preciototal=$preciototal+$servicio_liquidacion['precio_total'];
                $costo_total=$costo_total+($servicio_liquidacion['costo']*$servicio_liquidacion['cantidad']);
                $utilidad=$preciototal-$costo_total;
            }*/
            $liquidacion->total_utility=str_replace(',', '',$request['total_utility']);//tota_utility
            $liquidacion->p_venta_total=str_replace(',', '',$request['p_venta_total']);//tota_utility
            $liquidacion->costo_total=str_replace(',', '',$request['costo_total']);//tota_utility
            $liquidacion->sale_id=$request['sale_id'];//sale_id
            $liquidacion->customer_id=$request['customer_id'];
            $liquidacion->created_user_id=$request['created_user_id'];
            //$liquidacion->coments=$request['coments_general'];
            $liquidacion->save();//Guardo liquidacion
            $liquidacion_id=$liquidacion->id;
            $cadena="LO-";
            $liquidacion->identifier = $cadena. str_repeat('0', 6 - strlen($liquidacion_id)) . $liquidacion_id;//identifier
            $liquidacion->save();//Guardo liquidacion

            if(isset($request['services_liquidacion'])){
                foreach ($request['services_liquidacion'] as $servicio_liquidacion){
                $liquidacion->services()->updateExistingPivot( 
                    $servicio_liquidacion['service_id'], 
                        array(
                            'precio_t'=>str_replace(',', '',$servicio_liquidacion['precio_total']),//precio total
                            'price'=>str_replace(',', '',$servicio_liquidacion['precio']),
                            //'coments'=>$servicio_liquidacion['coments'],
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'costo'=>str_replace(',', '',$servicio_liquidacion['costo']),//cost_total
                            'fecha_pago'=>$servicio_liquidacion['date'],
                            'created_user_id'=>$request['created_user_id'],
                        )
                        );
                }
            }

            if(isset($request['subfilaliquidada'])){
                $subfilas=Liquidation_service::where('parent_id','!=',null)->get();

                $bdarray = array();//array vacio
                $arrayliquida= array();//array vacio

                foreach ($subfilas as $detalle){
                    array_push($bdarray,$detalle['id']);
                }


                foreach ($request['subfilaliquidada'] as $subfilaliquidada){
                    $reques_service_id=$subfilaliquidada["id_liquidacion"];
                    array_push($arrayliquida,$reques_service_id);
                    
                    $id = $subfilaliquidada['service_id'];
                    $liquidacion->services()->updateExistingPivot( 
                    $id, 
                        array(
                            //'precio_t'=>$subfilaliquidada['p_venta'],//precio total
                            'price'=>str_replace(',', '',$subfilaliquidada['precio']),//precio
                            //'coments'=>$servicio_liquidacion['coments'],
                            'cantidad'=>$subfilaliquidada['cantidad'],//cantidad
                            'costo'=>str_replace(',', '',$subfilaliquidada['costo']),//cost_total
                            'fecha_pago'=>$subfilaliquidada['date'],
                            'created_user_id'=>$request['created_user_id'],
                        )
                    );

                }
                
                //for
                //Eliminado
                $result=array_values(array_diff($bdarray,$arrayliquida));

                for ($i=0; $i < count($result); $i++) { 
                    $liquidation_ser=liquidation_service::find($result[$i]);
                    $liquidation_ser->delete();
                    }
            }

            if(!isset($request['subfilaliquidada']) && !isset($request['subfilas'])){
                foreach ($request['services_liquidacion'] as $servicio){
                    $subfilas=Liquidation_service::where('parent_id','!=',null)->where('parent_id',$servicio['id_liquidacion'])->get();

                    
                    $bdarray = array();//array vacio
                    $arrayliquida= array();//array vacio
                    foreach ($subfilas as $detalle){
                        array_push($bdarray,$detalle['id']);
                    }


                    $result=array_values($bdarray);
                    for ($i=0; $i < count($result); $i++){ 
                        $liquidation_ser=liquidation_service::find($result[$i]);
                        $liquidation_ser->delete();

                    }

                }
                /*foreach ($request['services_liquidacion'] as $servicio){

                    $servicesliquidacion=Liquidation_service::where('parent_id','!=',null)
                        ->where('parent_id',$servicio['id_liquidacion'])->get();

                    $id=$servicesliquidacion->pluck('id')->first();

                    $liquidation_ser=Liquidation_service::find($id);

                    if($liquidation_ser != null){
                      $liquidation_ser->delete();  
                    }

                }
                */       
            }

            if(isset($request['subfilas'])){
                foreach($request['subfilas'] as $subfila){
                $service=new Service;
                $service->name=$subfila['nombre_servicio'];
                //$service->price=$subfila['subprecio'];
                $service->save();
                        
                $proveedor=new Provider;
                $proveedor->name=$subfila['nombre_proveedor'];
                $proveedor->save();

                $service->provider_id=$proveedor->id;
                $service->save();

                    $liquidacion->services()->attach(
                        $service->id, 
                            array(
                                //'price'=>$subfila['subprecio'],//precio
                                //'precio_t'=>$subfila['subprecio'],//precio
                                'parent_id'=>$subfila['parent_id'],//
                                'cantidad'=>$subfila['cantidad'],//cantidad
                                'costo'=>str_replace(',', '',$subfila['costo_unit']),//cost_total
                                'fecha_pago'=>$subfila['fecha'],
                                'created_user_id'=>$request['created_user_id'],
                                )
                        );
                }
            }
            return Redirect('/admin/liquidation/listar');
        }
        else if($request['actualizar'] === 'actualizar'){
            $preciototal=0;
            $costo_total=0;
            $utilidad=0;
            $liquidacion=Liquidation::find($id);//
            /*foreach($request['services_liquidacion'] as $servicio_liquidacion){
                $preciototal=$preciototal+$servicio_liquidacion['precio_total'];
                $costo_total=$costo_total+($servicio_liquidacion['costo']*$servicio_liquidacion['cantidad']);
                $utilidad=$preciototal-$costo_total;
            }*/
            $liquidacion->total_utility=str_replace(',', '',$request['total_utility']);//tota_utility
            $liquidacion->p_venta_total=str_replace(',', '',$request['p_venta_total']);//tota_utility
            $liquidacion->costo_total=str_replace(',', '',$request['costo_total']);//tota_utility
            $liquidacion->sale_id=$request['sale_id'];//sale_id
            $liquidacion->customer_id=$request['customer_id'];
            $liquidacion->created_user_id=$request['created_user_id'];
            //$liquidacion->coments=$request['coments_general'];
            $liquidacion->send="0";
            $liquidacion->save();//Guardo liquidacion
            $liquidacion_id=$liquidacion->id;
            $cadena="LO-";
            $liquidacion->identifier = $cadena. str_repeat('0', 6 - strlen($liquidacion_id)) . $liquidacion_id;//identifier
            $liquidacion->save();//Guardo liquidacion

            if(isset($request['services_liquidacion'])){
                foreach ($request['services_liquidacion'] as $servicio_liquidacion){
                $liquidacion->services()->updateExistingPivot( 
                    $servicio_liquidacion['service_id'], 
                        array(
                            'precio_t'=>str_replace(',', '',$servicio_liquidacion['precio_total']), 
                            'price'=>str_replace(',', '',$servicio_liquidacion['precio']),
                            //'coments'=>$servicio_liquidacion['coments'],
                            'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                            'costo'=>str_replace(',', '',$servicio_liquidacion['costo']),//cost_total
                            'fecha_pago'=>$servicio_liquidacion['date'],
                            'created_user_id'=>$request['created_user_id'],
                        )
                );
                }
            }

            if(isset($request['subfilaliquidada'])){
                $subfilas=Liquidation_service::where('parent_id','!=',null)->get();

                $bdarray = array();//array vacio
                $arrayliquida= array();//array vacio

                foreach ($subfilas as $detalle){
                    array_push($bdarray,$detalle['id']);
                }


                foreach ($request['subfilaliquidada'] as $subfilaliquidada){
                    $reques_service_id=$subfilaliquidada["id_liquidacion"];
                    array_push($arrayliquida,$reques_service_id);
                    $id = $subfilaliquidada['service_id'];
                    $liquidacion->services()->updateExistingPivot( 
                    $id, 
                        array(
                            'precio_t'=>str_replace(',', '',$subfilaliquidada['costo']),//precio total
                            'price'=>str_replace(',', '',$subfilaliquidada['precio']),//precio
                            //'coments'=>$servicio_liquidacion['coments'],
                            'cantidad'=>$subfilaliquidada['cantidad'],//cantidad
                            'costo'=>str_replace(',', '',$subfilaliquidada['costo']),//cost_total
                            'fecha_pago'=>$subfilaliquidada['date'],
                            'created_user_id'=>$request['created_user_id'],
                        )
                    );

                }
                
                //for
                //Eliminado
                $result=array_values(array_diff($bdarray,$arrayliquida));
                for ($i=0; $i < count($result); $i++){ 
                    $liquidation_ser=liquidation_service::find($result[$i]);
                    $liquidation_ser->delete();
                }
            }

            if(!isset($request['subfilaliquidada']) && !isset($request['subfilas'])){
                foreach ($request['services_liquidacion'] as $servicio){
                    $subfilas=Liquidation_service::where('parent_id','!=',null)->where('parent_id',$servicio['id_liquidacion'])->get();

                    
                    $bdarray = array();//array vacio
                    $arrayliquida= array();//array vacio
                    foreach ($subfilas as $detalle){
                        array_push($bdarray,$detalle['id']);
                    }


                    $result=array_values($bdarray);
                    for ($i=0; $i < count($result); $i++){ 
                        $liquidation_ser=liquidation_service::find($result[$i]);
                        $liquidation_ser->delete();

                    }

                }
                /*foreach ($request['services_liquidacion'] as $servicio){

                    $servicesliquidacion=Liquidation_service::where('parent_id','!=',null)
                        ->where('parent_id',$servicio['id_liquidacion'])->get();

                    $id=$servicesliquidacion->pluck('id')->first();

                    $liquidation_ser=Liquidation_service::find($id);

                    if($liquidation_ser != null){
                      $liquidation_ser->delete();  
                    }

                }
                */       
            }

            if(isset($request['subfilas'])){
                foreach($request['subfilas'] as $subfila){
                $service=new Service;
                $service->name=$subfila['nombre_servicio'];
                $service->price=$subfila['costo_unit'];
                $service->save();
                        
                $proveedor=new Provider;
                $proveedor->name=$subfila['nombre_proveedor'];
                $proveedor->save();

                $service->provider_id=$proveedor->id;
                $service->save();

                    $liquidacion->services()->attach(
                        $service->id, 
                            array(
                                //'price'=>$subfila['subprecio'],//precio
                                //'precio_t'=>$subfila['subprecio'],//precio
                                'parent_id'=>$subfila['parent_id'],//
                                'cantidad'=>$subfila['cantidad'],//cantidad
                                'costo'=>$subfila['costo_unit'],//cost_total
                                'fecha_pago'=>$subfila['fecha'],
                                'created_user_id'=>$request['created_user_id'],
                                )
                        );
                    }
            }

            return Redirect('/admin/liquidation/listar');
        }
        
        
    }
    public function updateliquidacion($id,Request $request){
      
        $preciototal=0;
        $costo_total=0;
        $utilidad=0;
        $liquidacion=Liquidation::find($id);//
        /*foreach($request['services_liquidacion'] as $servicio_liquidacion){
            $preciototal=$preciototal+$servicio_liquidacion['precio_total'];
            $costo_total=$costo_total+($servicio_liquidacion['costo']*$servicio_liquidacion['cantidad']);
            $utilidad=$preciototal-$costo_total;
        }*/
        $liquidacion->total_utility=$request['total_utility'];//tota_utility
        $liquidacion->p_venta_total=$request['p_venta_total'];//tota_utility
        $liquidacion->costo_total=$request['costo_total'];//tota_utility
        $liquidacion->sale_id=$request['sale_id'];//sale_id
        $liquidacion->customer_id=$request['customer_id'];
        $liquidacion->created_user_id=$request['created_user_id'];
        //$liquidacion->coments=$request['coments_general'];
        $liquidacion->send="1";
        $liquidacion->save();//Guardo liquidacion
        $liquidacion_id=$liquidacion->id;
        $cadena="LO-";
        $liquidacion->identifier = $cadena. str_repeat('0', 6 - strlen($liquidacion_id)) . $liquidacion_id;//identifier
        $liquidacion->save();//Guardo liquidacion
        foreach ($request['services_liquidacion'] as $servicio_liquidacion){
            $liquidacion->services()->attach( 
                $servicio_liquidacion['service_id'], 
                    array(
                        'precio_t'=>$servicio_liquidacion['precio_total'],//precio total
                        'price'=>$servicio_liquidacion['precio'],//precio
                        //'coments'=>$servicio_liquidacion['coments'],
                        'cantidad'=>$servicio_liquidacion['cantidad'],//cantidad
                        'costo'=>$servicio_liquidacion['costo'],//cost_total
                        'fecha_pago'=>$servicio_liquidacion['date'],
                        'created_user_id'=>$request['created_user_id'],

                    )
            );
        }




        return Redirect('/admin/liquidation/listar');
    }


    public function showliquidacion($id){
        $liquidation=Liquidation::find($id);//id y los atributos de la liquidacion
        $files=File::all();//todos los files de mi db    
        //$liquidations=Liquidation::all();
        $namecounter=liquidation::join('sales','liquidations.sale_id','=','sales.id')
            ->join('quotes','quotes.id','=','sales.quote_id')
            ->join('visits','visits.id','=','quotes.visit_id')
            ->join('users','users.id','=','visits.counter_id')
            ->where('liquidations.id',$id)
            ->pluck('users.name')
            ->first();
        if($files != null){
            foreach ($files as $file){
                $files=DB::table('files')->where('files.liquidation_id',$id)->get();
            }
        }
        $identifier_sale = Liquidation::join('sales','liquidations.sale_id','sales.id')
            ->where('liquidations.sale_id',$id)
            ->pluck('sales.identifier')
            ->first();
        $servicios_liquidacion=liquidation_service::join('liquidations','liquidations.id','=','liquidation_service.liquidation_id')
            ->join('services','services.id','liquidation_service.service_id')
            ->join('proveedores','services.provider_id','proveedores.id')
            //->join('sales','sales.id','=','liquidations.sale_id')
            //->join('sale_service','sale_service.sale_id','=','sales.id')
            ->select('services.name as nameservice','proveedores.name as nameprovider','liquidation_service.cantidad','liquidation_service.price','liquidation_service.fecha_pago','liquidation_service.costo as costo','liquidation_service.id as id_liquidacion','liquidation_service.parent_id as parent_id')
            ->where('liquidations.id',$id)->get();

        $comision_bancaria = Liquidation::join('sales','liquidations.sale_id','=','sales.id')
            ->join('receipts','receipts.sale_id','=','sales.id')
            ->join('deposits','deposits.receipt_id','=','receipts.id')
            ->join('payments_type','payments_type.id','=','deposits.payment_id')
            ->select(DB::raw('sum(deposits.amount * payments_type.commission) as porcentaje, sum(deposits.amount_commission) as amount_commission'))
            ->where('liquidations.id',$id)->first();

        return view('backend.liquidation.show',compact('liquidation','files','servicios_liquidacion','namecounter','identifier_sale','comision_bancaria'));
    }

    public function getarchivos(Request $request){
        $file=new File;
        $sale_id =$_POST['id'];
        $liquidation_id =$_POST['liquidation_id'];
        $id_usuario=$_POST['created_user_id'];
        $archivo = $request->file('inputficons2');//obteniendo contenido del archivo
        if($archivo!= null){
            $file->route=url('/')."/liquidaciones/$sale_id/".$archivo->getClientOriginalName();//obteniendo la ruta
            $file->name=$archivo->getClientOriginalName();//obteniendo el nombre del archivo
            $file->liquidation_id=$liquidation_id;
            $file->created_user_id=$id_usuario;
            $file->save();//Guarda
            Storage::put("$sale_id/".$archivo->getClientOriginalName(), Archivo::get($archivo)); //guardo el archivo en mi carpeta local
        
            return response()->json(['archivo' => $archivo]); 
        }else{

            return response()->json(['archivo' => 'nada']);
        }
    }


    public function crearpdfliqui($id){        
        $liquidation=Liquidation::find($id);//id y los atributos de la liquidacion
        $files=File::all();//todos los files de mi db    
        //$liquidations=Liquidation::all();
        $namecounter=liquidation::join('sales','liquidations.sale_id','=','sales.id')
            
            ->join('quotes','quotes.id','=','sales.quote_id')
            ->join('visits','visits.id','=','quotes.visit_id')
            ->join('users','users.id','=','visits.counter_id')
            ->where('liquidations.id',$id)
            ->pluck('users.name')
            ->first();
        if($files != null){
            foreach ($files as $file){
                $files=DB::table('files')->where('files.liquidation_id',$id)->get();
            }
        }
        $identifier_sale = Liquidation::join('sales','liquidations.sale_id','sales.id')
            ->where('liquidations.sale_id',$id)
            ->pluck('sales.identifier')
            ->first();

        $servicios_liquidacion=liquidation_service::join('liquidations','liquidations.id','=','liquidation_service.liquidation_id')
            ->join('services','services.id','liquidation_service.service_id')
            ->join('proveedores','services.provider_id','proveedores.id')
            //->join('sales','sales.id','=','liquidations.sale_id')
            //->join('sale_service','sale_service.sale_id','=','sales.id')
            ->select('services.name as nameservice','proveedores.name as nameprovider','liquidation_service.cantidad','liquidation_service.price','liquidation_service.fecha_pago','liquidation_service.costo as costo','liquidation_service.id as id_liquidacion','liquidation_service.parent_id as parent_id')
            ->where('liquidations.id',$id)->get();

        $pdf=PDF::loadView('backend.liquidation.liquidationpdf',compact('liquidation','files','servicios_liquidacion','namecounter','identifier_sale'));

        $pdf->setPaper('A4', 'landscape');
        return $pdf->stream($liquidation->identifier.'.pdf');
    }







    public function deletefile($id) {
        $file = File::find($id);
        $file->delete();
        $json_services = json_encode($file);
        return $json_services;
        /*$exists = Storage::disk('articulo')->exists($imagen->editado);
        if($exists == true):
            Storage::disk('articulo')->delete($imagen->editado);
        endif;*/
    }
}
