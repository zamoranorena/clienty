<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Operation\Visit\Visit;
use App\Models\Operation\Sale\Sale;
use App\Models\Operation\Quote\Quote;
use App\Models\Operation\Liquidation\Liquidation;
use DB;
use Storage;
use App\Models\Operation\Deposit\Deposit;
use App\Models\Maintenance\Payments\Payments;
use App\Models\Maintenance\Customer\Customer;
use App\Models\Operation\Receipt\Receipt;

use App\Models\Maintenance\Nationality\Nationality;
/**
 * Class DashboardController.
 */
class DashboardController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function index()
    {
    	
        $idusuario=access()->user()->id;
        $array = array(1,5);/*Contabilidad y administraciòn*/

        /*Tablas Grid*/
        $visitasCount = Visit::Select('visits.*','customers.*','visits.id as visita_id')
        ->leftjoin('quotes','quotes.visit_id','=','visits.id')
        ->join('customers','customers.id','=','visits.customer_id')
        ->orderBy("visits.id","DESC")
        ->where('quotes.visit_id',null)
        ->where('visits.active','=',1);

        $visitas = Visit::Select('visits.*','customers.*','visits.id as visita_id')->leftjoin('quotes','quotes.visit_id','=','visits.id')->join('customers','customers.id','=','visits.customer_id')
        ->orderBy("visits.id","DESC")
        ->where('quotes.visit_id',null)->where('visits.active','=',1);

        $sales=Sale::join('quotes','quotes.id','=','sales.quote_id')->select('sales.*','quotes.identifier as quote_identifier')
        //->leftjoin('liquidations','liquidations.sale_id','=','sales.id')->where('liquidations.active','=',1)
        ;
        
        $quote2 = Quote::join('users','users.id','quotes.created_user_id')->join('customers','customers.id','=','quotes.customer_id')->select('users.name as counter','quotes.*','customers.name','customers.last_name');
     
 
        $liquidations=Liquidation::join('sales','sales.id','=','liquidations.sale_id')
        ->where('liquidations.active','=',1)
        ->select('liquidations.*','sales.identifier as sale_identifier')
        ->orderBy('liquidations.id','DESC');


        $utilidades = Liquidation::select(\DB::raw('MONTH(created_at) as Mes,YEAR(created_at) as Ano, SUM(total_utility) as Cantidad'));
            /*Permisologia*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $visitas=$visitas->where('counter_id',$idusuario);
           $visitas=$visitas->get();
           $visitasCount=$visitasCount->where('counter_id',$idusuario)->count();
           $quote2=$quote2->where('quotes.created_user_id','=',$idusuario)->orderBy("quotes.id","DESC");;
           $sales=$sales->where('sales.created_user_id',$idusuario)->orderBy("sales.id","DESC");
           $sales=$sales->get();
           $liquidations=$liquidations->where('liquidations.created_user_id',$idusuario);
           $utilidades= $utilidades->where('liquidations.created_user_id',$idusuario);
        }else{
            $visitasCount = $visitasCount->count();
            $sales=$sales->get();
            $visitas=$visitas->get();
        }



        foreach ($sales as $venta){
            $consulta=DB::table('receipts')
                ->join('deposits','deposits.receipt_id','=','receipts.id')
                ->where('receipts.sale_id','=',$venta->id)
                ->sum('deposits.amount');
            $venta["monto"]=$consulta;      
        }


    $ventas = collect(new Sale());

       foreach ($sales as $sale){
              $consulta=DB::table('liquidations')
              ->join('liquidation_service','liquidations.id','=','liquidation_service.liquidation_id')
                ->where('liquidations.sale_id','=',$sale->id)
                //->where('liquidations.active','=',1)
                ->select('liquidations.id','liquidations.active as abierta')
                ->get()->first();
           
                  if($consulta!=null){

                    $sale["liquidacion"]=$consulta->id;
                    $sale["abierta"]=$consulta->abierta;
                  }else{
                    $sale["abierta"]=2;
                  } 

                  if(($sale["monto"]!=$sale["total"]) ||  $sale['abierta']==2){
                         $ventas->push($sale); 
                    }
        }


        $ventasCount =$ventas->count();    
        $quote2=$quote2->get();
        foreach ($quote2 as $cotizacion){
            $consulta=DB::table('quotes')
                ->select('quotes.id') 
                ->join('sales','quotes.id','=','sales.quote_id')
                ->where('sales.quote_id','=',$cotizacion->id)
                ->pluck('quotes.id')
                ->first();
            $cotizacion["test"]=$consulta;
        }
  

      $quote = collect(new Quote());
      foreach ($quote2 as $vent3){
            if($vent3["test"]!=$vent3["id"]){
                $quote->push($vent3); 
            }    
        }

        $cotizaciones =$quote->count();
        
        $mes = date('m');
        $ano=date('Y');

        $liquidations=$liquidations->get();


        $liquidaciones=$liquidations->count();

        $utilidades= $utilidades->where('liquidations.active','=',0)->groupBy(\DB::raw('Mes','Ano'))
        ->OrderBy('Mes','Ano')
        ->get();

        $totalutilidad=0.00;
        foreach ($utilidades as $item) {
            $Mes=$item->Mes;
            $Ano=$item->Ano;

            if(($Mes==$mes) && ($Ano==$ano)){
                $totalutilidad=$totalutilidad+$item->Cantidad;
            }
           
         }
        $totalutilidad=number_format($totalutilidad,2);

          $ventaarray = array(2);/*Counter*/
          $conta = array(4);/*contabilidad*/
          $recepcion = array(3);/*recepción*/
          $gene = array();/*general*/
          $supervisor = array(5);/*supervisor counter*/

          if (count(array_intersect($ventaarray,access()->user()->roles()->pluck('roles.id')->ToArray()))==1){
                 return view('backend.dashboard_vendedor',compact('visitas','visitasCount','ventas','cotizaciones','liquidaciones','quote','ventasCount','liquidations','totalutilidad'));
             }
        
          else if (count(array_intersect($conta,access()->user()->roles()->pluck('roles.id')->ToArray()))==1){



              $liquidations=DB::table('liquidations')
                ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
                ->join('sales','sales.id','=','liquidations.sale_id')                
                ->join('services','liquidation_service.service_id','=','services.id')
                ->join('proveedores','proveedores.id','=','services.provider_id')
                ->where('liquidation_service.active','=',1)
                ->where('liquidations.active','=',0)
                ->where('liquidations.send','=',1)
                ->orderBy('liquidation_service.id','DESC')
                ->orderBy('liquidation_service.liquidation_id','DESC')
                ->select('liquidation_service.*','services.*','liquidations.identifier','proveedores.name as proveedor','sales.identifier as venta','proveedores.telefono as telefono','proveedores.email as email')
                ->get();


              $depos=Receipt::join('sales','sales.id','=','receipts.sale_id')
                ->join('users','users.id','=','sales.created_user_id')
                ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')
                ->orderBy('receipts.id','DESC')
                ->get();//todos los recibos

          $receipts = collect(new Receipt());

                    foreach ($depos as $receipt){
                      $depositos = DB::table('receipts')
                        ->join('deposits','deposits.receipt_id','=','receipts.id')
                        ->join('sales','receipts.sale_id','=','sales.id')
                        ->where('deposits.receipt_id','=',$receipt->id)
                        ->sum('deposits.amount');
                        $receipt["monto"]=$depositos;//SUMA DE / LOS DEPOSITOS DE LA VENTA

                             if($receipt["monto_total"]!=$depositos){
                                  $receipts->push($receipt); 
                                }
                    }




                 return view('backend.dashboard_contabilidad',compact('visitas','sales','ventas','cotizaciones','liquidaciones','quote','receipts','liquidations','totalutilidad'));
             }else if (count(array_intersect($recepcion,access()->user()->roles()->pluck('roles.id')->ToArray()))==1){



                $datos=Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')->select('customers.*','reasonsvisits.name as marketing')->orderBy('id','DESC')->get();    
                $nacionalidades = Nationality::all();
                
                  return view('backend.dashboard_recepcion',compact('datos', 'users', 'users_visit', 'nacionalidades','datos', 'users', 'users_visit', 'nacionalidades','visitas','visitasCount','ventas','cotizaciones','liquidaciones','quote','ventasCount','liquidations','totalutilidad'));
             }else if (count(array_intersect($supervisor,access()->user()->roles()->pluck('roles.id')->ToArray()))==1){



                $datos=Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')->select('customers.*','reasonsvisits.name as marketing')->orderBy('id','DESC')->get();    
                $nacionalidades = Nationality::all();
                

      $utilidades_counters = DB::table('liquidations')
                ->select(DB::raw('SUM(liquidations.total_utility) as suma,users.NAME as counter, MONTH (NOW()) as mes'))
                ->join('users','users.id','=','liquidations.created_user_id')
                ->groupBy('users.name')
               
                ->get();




                  return view('backend.dashboard_supervisor',compact('utilidades_counters','datos', 'users', 'users_visit', 'nacionalidades','datos', 'users', 'users_visit', 'nacionalidades','visitas','visitasCount','ventas','cotizaciones','liquidaciones','quote','ventasCount','liquidations','totalutilidad'));
             }

       
                 return view('backend.dashboard',compact('visitas','visitasCount','ventas','cotizaciones','liquidaciones','quote','ventasCount','liquidations','totalutilidad'));
             


        
    }
}
