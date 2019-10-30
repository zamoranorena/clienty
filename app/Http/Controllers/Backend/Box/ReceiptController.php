<?php
namespace App\Http\Controllers\Backend\Box;
use Illuminate\Http\Request;
use App\Models\Operation\Deposit\Deposit;
use App\Models\Maintenance\Payments\Payments;
use App\Models\Maintenance\Customer\Customer;
use App\Http\Controllers\Controller;
use App\Models\Operation\Sale\Sale;
use App\Models\Operation\Receipt\Receipt;
use App\Models\Maintenance\TypeDocuments\TypeDocuments;
use App\Models\Access\User\User;
use DB;
use PDF;
use Carbon;


class ReceiptController extends Controller
{

    public function index()
    {
        $receipts = Receipt::join('sales','sales.id','=','receipts.sale_id')
            ->join('users','users.id','=','sales.created_user_id')
            //->join('deposits','deposits.receipt_id','=','receipts.id')
            ->orderBy('receipts.id','DESC')
            ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')->where('receipts.active',1)->get();//todos los recibos
            foreach ($receipts as $receipt){
                $depositos = DB::table('receipts')
                ->join('deposits','deposits.receipt_id','=','receipts.id')
                ->join('sales','receipts.sale_id','=','sales.id')
                ->where('deposits.receipt_id','=',$receipt->id)
                ->where('deposits.active',1)
                ->sum('deposits.amount');
                $receipt["monto"]=$depositos;//SUMA DE / LOS DEPOSITOS DE LA VENTA
            }        
        return view('backend.receipt.index',compact('receipts','sales'));
    }
    
    public function proveedores()
    {
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
            ->select('liquidation_service.*','services.*','liquidations.identifier','proveedores.name as proveedor','sales.identifier as venta','proveedores.telefono as telefono','proveedores.email as email')->get();
        return view('backend.receipt.proveedores',compact('liquidations'));
    }



    public function show($id){
        //$receipt= Receipt::find($id);//el id del recibo y sus atributos
        $receipt=Receipt::join('sales','sales.id','=','receipts.sale_id')
        ->join('users','users.id','=','sales.created_user_id')
        ->orderBy('receipts.id','DESC')
        ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')->where('receipts.id',$id)->first();//todos los recibos
        $payments=Payments::all();
        $deposits=Deposit::join('payments_type','payments_type.id','=','deposits.payment_id')->join('users','users.id','=','deposits.created_user_id')->selectRaw('payments_type.name,deposits.*,users.name as cajero')->where('receipt_id', $receipt->id)->get();//todos los pagos del recibo
        $amount_commission=0;
        foreach ($deposits as $deposit) {
            $amount_commission = $amount_commission + $deposit->amount_commission;
        }

        $commission = DB::table('deposits')
            ->select(DB::raw('sum(commission) as commission'))
            ->where('receipt_id', $receipt->id)
            ->first();
        return view('backend.receipt.show', compact('deposits','payments','receipt','commission','amount_commission'));
    }

    public function edit($id)
    {
        //$receipt=Receipt::find($id);
        $receipt=Receipt::join('sales','sales.id','=','receipts.sale_id')
        ->join('users','users.id','=','sales.created_user_id')
        ->orderBy('receipts.id','DESC')
        ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')->where('receipts.id',$id)->first();//todos los recibos

        $payments=Payments::all();
        $deposits=Deposit::join('payments_type','payments_type.id','=','deposits.payment_id')->join('users','users.id','=','deposits.created_user_id')->select('payments_type.*','deposits.*','users.name as cajero')
            ->where('receipt_id', $receipt->id)->get();//todos los pagos del recibo
        $commission=0;
        foreach ($deposits as $deposit){
            $commission = $commission + $deposit->commission;
        }

        $amount_commission=0;
        foreach ($deposits as $deposit) {
            $amount_commission = $amount_commission + $deposit->amount_commission;
        }
        $monto_total=$receipt['monto_total'];
        $tipos=TypeDocuments::all();

        return view('backend.receipt.edit', compact('receipt','monto_total','payments','deposits','tipos','commission','amount_commission'));
    }

    public function update(Request $request, $id){
        $receipt= Receipt::find($id);
        $receipt->coments=$request['coments'];
        $receipt->updated_user_id=$request['updated_user_id'];
        $receipt->save();

        //--GUARDO EL TIPO DE DOCUMENTO EN CUSTOMER--//
        $customer_id=$request['customer_id'];
        $customer=Customer::find($customer_id);
        $customer->type_document_id=$request['select_documents'];
        $customer->number_document=$request['number_document'];
        $customer->save();
       return Redirect('/admin/box/receipt')->withFlashSuccess('El recibo ha sido actualizado correctamente');
    }
    
    public function receiptpdf($id){
        $receipt= Receipt::find($id);//el id del recibo y sus atributos
        $payments=Payments::all();
        $carbon = new \Carbon\Carbon();
        $date = $carbon->now();
        $date2=$carbon->now();
        $day=$date2->format('Y-m-d');
    
        $deposits=Deposit::join('receipts','receipts.id','=','deposits.receipt_id')
        ->join('sales','sales.id','=','receipts.sale_id')
        ->join('users','deposits.created_user_id','=','users.id')
        ->join('payments_type','payments_type.id','=','deposits.payment_id')
        ->select('deposits.*','payments_type.*','users.name as usuario')
        ->where('receipts.id','=',$id)
        ->get();//todos los pagos del recibo
        $vendedor=Receipt::join('sales','sales.id','=','receipts.sale_id')
        ->join('users','sales.created_user_id','=','users.id')
        ->where('receipts.id','=',$id)->pluck('users.name')->first();


        $cajero= User::where('id','=',access()->user()->id)->pluck('name')->first();
        $venta=Sale::where('id','=',$receipt->sale_id)->get();

        $customer_id=$venta[0]->customer_id;
        $correlativo_venta=$venta[0]->identifier;
        $cliente_name=Customer::where('id','=',$customer_id)->pluck('name')->first();
        $cliente_last_name=Customer::where('id','=',$customer_id)->pluck('last_name')->first();
        $sale_service=DB::table('sales')
           ->join('sale_service','sale_service.sale_id','=','sales.id')
           ->select('sale_service.id','sale_service.name as name','sale_service.price','sale_service.cantidad as cantidad','sale_service.coments as coments_service','sale_service.total_price as total_price')
           ->where('sales.id','=',$receipt->sale_id)
           ->get();

        $costotal=0;
        $pretotal=0;
        foreach($sale_service as $resultados){
            $valor1=$resultados->price;
            $valor2=$resultados->cantidad;
            $pretotal=$valor1*$valor2;
            $costotal=$costotal + $pretotal;
        }


        $abono=0;
        $pretotal=0;
        $commission=0;

        foreach($deposits as $resultados){
            $commission = $commission + $resultados->commission;
            $valor1=$resultados->amount_commission;
            $pretotal=$valor1;
            $abono=$abono + $pretotal;
        }
        $total = $costotal + $commission ;
        $restante=$total-$abono;

        $pdf=PDF::loadView('backend.receipt.receiptpdf',compact('receipt','payments','deposits','day','cajero','cliente_last_name','venta','cliente_name','vendedor','total','restante','abono','sale_service','correlativo_venta'));
        return $pdf->stream($receipt->identifier.'.pdf');
        //return $pdf->download('archivo.pdf');
    }

    public function deleted()
    {
        $receipts = Receipt::join('sales','sales.id','=','receipts.sale_id')
            ->join('users','users.id','=','sales.created_user_id')
            //->join('deposits','deposits.receipt_id','=','receipts.id')
            ->orderBy('receipts.id','DESC')
            ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')->where('receipts.active',0)->get();//todos los recibos       
        return view('backend.receipt.receiptsdesactivated',compact('receipts'));
    }
    public function restore($id)
    {
        $receipt=Receipt::find($id);
        $receipt->active=1;
        $receipt->save();
        $deposits_receipt = Deposit::where("receipt_id",$id)->get();
        if($deposits_receipt->count() > 0) {
            $deposits_receipt->active = 1;
            $deposits_receipt->save(); 
        } else {
 
        }
        return Redirect('/admin/box/receipt')->withFlashSuccess(trans('El recibo se ha restaurado correctamente'));   
    }
    public function desactivated($id)
    {
        $receipt=Receipt::find($id);
        $receipt->active=0;
        $receipt->save();
        $deposits_receipt = Deposit::where("receipt_id",$id)->get();
        if($deposits_receipt->count() > 0) {
            $deposits_receipt->active = 0;
            $deposits_receipt->save(); 
        } else {
 
        }
        return Redirect('/admin/box/receipt')->withFlashSuccess(trans('El recibo se ha eliminado correctamente'));   
    }
}
