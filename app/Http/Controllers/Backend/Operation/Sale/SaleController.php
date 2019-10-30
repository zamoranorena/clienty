<?php
namespace App\Http\Controllers\Backend\Operation\Sale;
use App\Models\Operation\Quote\Quote;
use App\Models\Operation\Sale\Sale;
use App\Models\Operation\Liquidation\Liquidation;
use App\Models\Operation\Liquidation_service\Liquidation_service;
use App\Models\Operation\Receipt\Receipt;
use App\Models\Maintenance\Service\Service;
use App\Models\Operation\Sale_service\Sale_service;
use App\Models\Operation\Deposit\Deposit;
use App\Models\Maintenance\Payments\Payments;
use App\Models\Access\User\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
use DB;
use PDF;
class SaleController extends Controller
{

//LISTADO DE VENTAS

  public function index(){
      $sales=Sale::join('quotes','quotes.id','=','sales.quote_id')->select('sales.*','quotes.identifier as quote_identifier')->where('sales.active',1)->orderBy("sales.id","DESC");
      $array = array(1,4);//*Contabilidad y administraciòn*//
      if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
        $sales=$sales->where('sales.created_user_id',access()->user()->id)->where('sales.active',1);
      }
        $sales=$sales->where('sales.active',1)->get();
      foreach ($sales as $venta){
        $consulta=DB::table('receipts')
        ->join('deposits','deposits.receipt_id','=','receipts.id')
        ->where('receipts.sale_id','=',$venta->id)
        ->sum('deposits.amount');
        $venta["monto"]=$consulta;      
      }
      foreach ($sales as $sale){
        $consulta=DB::table('liquidations')
        ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
        ->where('liquidations.sale_id','=',$sale->id)
        ->pluck('liquidations.id')
        ->first();
        $sale["liquidacion"]=$consulta;
      }
      $ventas = collect(new Sale());
      foreach ($sales as $sale){
        $consulta=DB::table('liquidations')
        ->join('liquidation_service','liquidations.id','=','liquidation_service.liquidation_id')
        ->where('liquidations.sale_id','=',$sale->id)
        ->select('liquidations.id','liquidations.active as abierta')->get()->first();
      if($consulta!=null){
        $sale["liquidacion"]=$consulta->id;
        $sale["abierta"]=$consulta->abierta;
      } else {
        $sale["abierta"]=2;
      }  
        $ventas->push($sale); 
      }
      return view('backend.sale.index',compact('sales'));
  }

//CREAR VENTA

  public function create($id){
    $quote=Quote::find($id);
    $payments=Payments::all();
    $quote_service=DB::table('services')
      ->join('quote_service','quote_service.service_id','=','services.id')
      ->join('quotes','quote_service.quote_id','=','quotes.id')
      ->join('proveedores','proveedores.id','=','services.provider_id')
      ->select('services.id','services.name as name','quote_service.price as price','proveedores.name as provider_name','proveedores.id as provider_id','quote_service.cantidad as cantidad', 'quotes.id as quote_id','quote_service.coments as coments_quote','quotes.total as total_quote','quotes.coments as coments_general')->where('quotes.id','=',$id)->get();
    return view('backend.sale.create', compact('quote','payments','quote_service'));
  }
    
// GUARDAR VENTA  

  public function store(Request $request){
    $sale=new Sale;
    $sale->quote_id=$request['quote_id'];
    $sale->customer_id=$request['customer_id'];
    $sale->user_id=$request['user_id'];
    $sale->total=$request['total'];
    $sale->coments=$request['coments_general'];
    $sale->created_user_id=$request['created_user_id'];
    $sale->save();
    $sale_id=$sale->id;
    $cadena="VO-";
    $sale->identifier = $cadena. str_repeat('0', 6 - strlen($sale->id)) . $sale_id;
    $sale->save();//Guardo la venta
    $receipt=new Receipt;
    $receipt->monto_total=$request['total'];
    $receipt->sale_id=$sale_id;
    $receipt->created_user_id=$request['created_user_id'];
    $receipt->save();
    $receipt_id=$receipt->id;
    $cadena="RO-";
    $receipt->identifier = $cadena. str_repeat('0', 6 - strlen($receipt->id)) . $receipt_id;
    $receipt->active="1";
    $receipt->save();
    foreach ($request['servicotizado'] as $servicios){
      $sale->services()->attach( 
        $servicios['service_id'], 
          array(
            'name'=>$servicios['service_name'],
            'price'=>str_replace(',', '',$servicios['service_price']),
            'cantidad'=>$servicios['service_cantidad'],
            'total_price'=>str_replace(',', '',$servicios['total_price']),
            'coments'=>$servicios['coments_service'],
            'created_user_id'=>$request['created_user_id']
          )
      );
    }
      return Redirect('/admin/operation/sale')->withFlashSuccess(trans('La venta ha sido creada satisfactoriamente'));
    }

// AGREGAR PAGO

  public function addPayment($id){
    $venta= Sale::find($id);//el id de la venta y sus atributos
    $payments=Payments::all();
    $detalleventas=Sale_service::where('sale_id',$venta->id)->get();//todos los detalles de las venta
    $depositos=Deposit::join('payments_type','payments_type.id','=','deposits.payment_id')->where('sale_id', $venta->id)->get();//todos los pagos de la venta
    $total=0;
    foreach($detalleventas as $detalleventa){
      $total=$total+($detalleventa['price']*$detalleventa['cantidad']);
    }
    $montopagado=0;
    foreach($depositos as $deposito){
      $montopagado=$montopagado+$deposito['amount'];
    }
      $debe=$total-$montopagado;
      return view('backend.sale.edit',compact('depositos','total','montopagado','debe','venta','payments'));
  }

//GUARDAR PAGO

  public function guardarpago(Request $request){
    $receipt=new Receipt;
    $receipt->sale_id=$request['sale_id'];
    $receipt->save();
    $receipt_id=$receipt->id;
    $cadena='RO-';
    $receipt->identifier=$cadena.str_repeat('0',6 - strlen($receipt->id)).$receipt_id;
    $receipt->save();
    $deposito=new Deposit;
    $deposito->payment_id=$request['select_payment'];
    $deposito->sale_id=$request['sale_id'];
    $deposito->customer_id=$request['customer_id'];
    $deposito->amount=$request['amount'];
    $deposito->receipt_id=$receipt_id;
    $deposito->save();
      return Redirect('/admin/operation/sale');
  }

//DESACTIVAR VENTAS

  public function desactivated($id)
  {
    $sale = Sale::find($id);
    $sale_service = Sale_service::where("sale_id",$id)->first();
    $receipt= Receipt::where("sale_id", $id)->first();
    $deposit= Deposit::join('receipts','receipts.id','=','deposits.receipt_id')
      ->join('sales','sales.id','=','receipts.sale_id')
      ->where("sales.id", $id)
      ->get();
    if($deposit->count() > 0) {
      foreach ($deposit as $deposit) {
        $deposit->active = 0;
        $deposit->save();
      }
      
    } else {
 
    }
    $sale_service->active = 0;
    $receipt->active = 0;
    $receipt->save();
    $sale->active = 0;
    $sale->save();
    $sale_service->save(); 
    return Redirect('/admin/operation/sale')->withFlashSuccess(trans('La venta se ha eliminado correctamente'));
  }

//VENTAS DESACTIVADAS

  public function salesdesactivated()
  {
    $sales=Sale::join('quotes','quotes.id','=','sales.quote_id')
      ->select('sales.*','quotes.identifier as quote_identifier')->where('sales.active',0)->orderBy("sales.id","DESC");
    $array = array(1,4);//*Contabilidad y administraciòn*//
    if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
      $sales=$sales->where('sales.created_user_id',access()->user()->id)->where('sales.active',0);
    }
    $sales=$sales->where('sales.active',0)->get();

    foreach ($sales as $venta){
      $consulta=DB::table('receipts')
      //->select('quotes.id') 
      ->join('deposits','deposits.receipt_id','=','receipts.id')
      ->where('receipts.sale_id','=',$venta->id)
      ->sum('deposits.amount');
      $venta["monto"]=$consulta;      
    }

    foreach ($sales as $sale){
      $consulta=DB::table('liquidations')
      //->join('files','files.liquidation_id','=','liquidations.id')
      ->join('liquidation_service','liquidation_service.liquidation_id','=','liquidations.id')
      ->where('liquidations.sale_id','=',$sale->id)
      ->pluck('liquidations.id')
      ->first();
      $sale["liquidacion"]=$consulta;
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
        $ventas->push($sale);       
    }
      //Todos los detalles de la venta
      return view('backend.sale.desactivated',compact('sales'));
  }

//RESTAURAR VENTA
  public function restore($id){
    $sale = Sale::find($id);
    $sale_service = Sale_service::where("sale_id",$id)->first();
    $receipt= Receipt::where("sale_id", $id)->first();
    $deposit= Deposit::join('receipts','receipts.id','=','deposits.receipt_id')
      ->join('sales','sales.id','=','receipts.sale_id')
      ->where("sales.id", $id)
      ->get();
    if($deposit->count() > 0) {
      foreach ($deposit as $deposit) {
        $deposit->active = 1;
        $deposit->save(); 
      }
    } else {
 
    }
    $sale_service->active = 1;
    $receipt->active = 1;
    $receipt->save();
    $sale->active = 1;
    $sale->save();
    $sale_service->save(); 
      return Redirect('/admin/operation/sale')->withFlashSuccess(trans('La venta se ha restaurado correctamente'));
  }

//VISUALIZAR VENTA

  public function show($id)
  {
    $venta=Sale::find($id);
    $detalles_venta=DB::table('sale_service')
      ->join('services','services.id','=','sale_service.service_id')
      ->join('proveedores','proveedores.id','=','services.provider_id')
      ->join('sales','sales.id', '=','sale_service.sale_id')
      ->join('customers','customers.id','=','sales.customer_id')
      ->select('services.name as nombre_servicio' , 'proveedores.name as nombre_proveedor','sale_service.price as precio','sale_service.cantidad as cantidad','sale_service.total_price as precio_total','sales.total as venta_total','customers.name as nombre_cliente','sales.coments as coments_general','sale_service.coments as coments_service')
      ->where('sale_service.sale_id','=',$id)
      ->get();
    return view('backend.sale.show',compact('detalles_venta','venta'));
  }
}
