<?php
namespace App\Http\Controllers\Backend\Maintenance\Service;

use App\Http\Controllers\Controller;
use App\Models\Maintenance\Provider\Provider;
use App\Models\Maintenance\Service\Service;
use DB;
use Illuminate\Http\Request;

/**
 * Class UserController.
 */
class ServiceController extends Controller
{
    public function getservice($id)
    {
        $services        = Service::where('created_user_id',access()->user()->id)->where('active','=', 1)->get();;
        $service_consult = DB::table('services')
            ->join('proveedores', 'proveedores.id', '=', 'services.provider_id')
            ->select('services.id', 'services.name', 'services.price', 'proveedores.name as proveedor', 'proveedores.id as provider_id')->where('services.id', '=', $id)->first();
        $json_services = json_encode($service_consult);
        return $json_services;
    }
    public function index()
    {
        $datos = Service::where('created_user_id',access()->user()->id)->where('active','=', 1)->get();
        return view('backend.service.index', compact('datos'));
    }
    public function create()
    {
        $proveedores = Provider::where('created_user_id',access()->user()->id)->where('active','=', 1)->get();
        return view('backend.service.create', compact('proveedores'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'     => 'required|max:255',
            'price'    => ['required', 'max:255'],
            'provider_id' => 'required|not_in:0',
        ]);
        $service = new Service;
        $service->create($request->all());
        return Redirect('/admin/maintenance/service')->withFlashSuccess('El servicio se ha creado correctamente');
    }
    public function destroy($id)
    {
        alert()->success('El Servicio ha sido eliminado correctamente', 'Eliminado');
        $service = Service::find($id);
        $service->active=0;
        $service ->save();
        return Redirect('/admin/maintenance/service')->withFlashSuccess(trans('El servicio se ha eliminado correctamente'));
    }
    public function edit($id)
    {
        $proveedores = Provider::all();
        $service     = Service::find($id);
        return view('backend.service.edit', compact('service', 'proveedores'));
    }
    public function update($id, Request $request)
    {
        $service = Service::find($id);
        $service->update($request->all());
        return Redirect('/admin/maintenance/service')->withFlashSuccess(trans('El servicio se ha actualizado correctamente'));
    }
}
