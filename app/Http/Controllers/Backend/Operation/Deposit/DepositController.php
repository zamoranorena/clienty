<?php

namespace App\Http\Controllers\Backend\Operation\Deposit;

use App\Http\Controllers\Controller;
use App\Models\Maintenance\Payments\Payments;
use App\Models\Operation\Deposit\Deposit;
use App\Models\Operation\Liquidation\Liquidation;
use App\Models\Operation\Receipt\Receipt;
use App\Models\Access\User\User;
use DB;
use Illuminate\Http\Request;

/**
 * Class DashboardController.
 */
class DepositController extends Controller
{
    /**
     * @return \Illuminate\View\View
     */
    public function addPayment($id)
    {
        $receipt=Receipt::join('sales','sales.id','=','receipts.sale_id')
        ->join('users','users.id','=','sales.created_user_id')
        ->orderBy('receipts.id','DESC')
        ->select('receipts.*','sales.identifier as sale_identifier','users.name as namecounter')->where('receipts.id',$id)->first();//todos los recibos
        $payments = Payments::all();
        //$detalleventas=Sale_service::where('sale_id',$venta->id)->get();//todos los detalles de las venta
        $depositos = Deposit::join('payments_type', 'payments_type.id', '=', 'deposits.payment_id')->join('users','users.id','=','deposits.created_user_id')->select('payments_type.*','deposits.*','users.name as cajero')
            ->where('receipt_id', $receipt->id)->get(); //todos los pagos del recibo
        
        /*$total=0;
        foreach($detalleventas as $detalleventa){
        $total=$total+($detalleventa['price']*$detalleventa['cantidad']);
        }*/
        $montopagado = 0;
        $commission = 0;
        foreach ($depositos as $deposito) {
            $commission = $commission + $deposito->commission;
            $montopagado = $montopagado + $deposito['amount'];
        }
        $total_recibo = $receipt->monto_total + $commission;
        $pago_acuenta = $montopagado + $commission;

        $debe = $receipt->monto_total - $montopagado;
        return view('backend.deposit.addpayments', compact('montopagado', 'debe', 'payments', 'receipt', 'depositos','total_recibo','pago_acuenta','cajero'));
    }

    public function getbancario($id){
        $porcentaje_bancario  = Payments::where('id',$id)->where('active','=', 1)->first();
        return response()->json($porcentaje_bancario);
    }

    public function guardarpago(Request $request)
    {
        /*if ($request["payment_various"]) {
        foreach ($request["payment_various"] as $payments) {*/
        $deposit             = new Deposit;
        $deposit->amount     = str_replace(',', '',$request['amount']);
        $deposit->amount_commission = str_replace(',', '',$request['amount_commission']);
        $deposit->commission = str_replace(',', '',$request['commission']);
        $deposit->receipt_id = $request['receipt_id'];
        $deposit->payment_id = $request['tipos_pagos'];
        $deposit->user_id    = $request['user_id'];
        $deposit->created_user_id = $request['created_user_id'];
        $deposit->active     = "1";
        $deposit->save();
            /*    }
            }*/
        $this->validate($request, [
            'tipos_pagos'     => 'required|not_in:""',
        ]);
        $receipts   = Receipt::all(); //todos los recibos
        $receipt_id = $request['receipt_id'];
        foreach ($receipts as $receipt) {
            $depositos = DB::table('receipts')
                ->join('deposits', 'deposits.receipt_id', '=', 'receipts.id')
                ->join('sales', 'receipts.sale_id', '=', 'sales.id')
                ->where('deposits.receipt_id', '=', $receipt->id)
                ->sum('deposits.amount');
            $receipt["monto"] = $depositos; //SUMA DE / LOS DEPOSITOS DE LA VENTA
            if ($receipt->id == $receipt_id) {
                if ($receipt['monto_total'] == $receipt['monto']) {
                    $Liquidation          = new Liquidation;
                    $Liquidation->sale_id = $receipt['sale_id'];
                    //$Liquidation->created_user_id=$request['created_user_id'];
                    $Liquidation->save();
                }
            }
        }
        return Redirect('/admin/box/receipt')->withFlashSuccess('El pago ha sido registrado correctamente');;
    }
}
