<?php
namespace App\Http\Controllers\Backend\Maintenance\Payments;

use App\Http\Controllers\Controller;
use App\Models\Maintenance\Payments\Payments;
use Illuminate\Http\Request;

class PaymentsController extends Controller
{
    public function index()
    {
        $payments = Payments::all();
        return view('backend.payments.index', compact('payments'));
    }
    public function store(Request $request)
    {
        $payment = new Payments;
        $payment->create($request->all());
        return Redirect('/admin/maintenance/payments')->withFlashSuccess(trans('El tipo de pago ha sido creado correctamente'));
    }
    public function destroy($id)
    {
        alert()->success('El Tipo de pago ha sido eliminado correctamente', 'Eliminado');
        $payment = Payments::find($id);
        $payment->delete();
        return Redirect('/admin/maintenance/payments');
    }
    public function update($id, Request $request)
    {
        $payment       = Payments::find($request->id);
        $payment->name = $request['name'];
        $payment->save();

        return Redirect('/admin/maintenance/payments')->withFlashSuccess(trans('El tipo de pago ha sido actualizado correctamente'));
    }
}
