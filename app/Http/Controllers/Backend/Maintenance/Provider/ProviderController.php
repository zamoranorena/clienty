<?php

namespace App\Http\Controllers\Backend\Maintenance\Provider;

use App\Http\Controllers\Controller;
use App\Models\Maintenance\Country\Country;
use App\Models\Maintenance\Provider\Provider;
use Illuminate\Http\Request;

class ProviderController extends Controller
{
    public function index()
    {
        $datos = Provider::where('created_user_id',access()->user()->id)->where('active','=', 1)->get();
        return view('backend.provider.index', compact('datos'));
    }
    public function create()
    {
        $countries = Country::all();
        return view('backend.provider.create', compact('countries'));
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'name'     => 'required|max:255',
            /*'email'    => ['required', 'email', 'max:255'],
            
            'telefono' => 'required|max:9','direccion'=> 'required|max:255',*/
            'pais'     => 'required|not_in:0',
            
        ]);
        $provee = new Provider;
        $provee->create($request->all());
        return Redirect('/admin/maintenance/provider')->withFlashSuccess('El proveedor ha sido creado correctamente');
    }
    public function destroy($id)
    {
        alert()->success('El proveedor ha sido eliminado correctamente', 'Eliminado');
        $provee = Provider::find($id);
        $provee->active=0;
        $provee->save();
        return Redirect('/admin/maintenance/provider');
    }
    public function show($id)
    {
        alert()->success('El proveedor ha sido eliminado correctamente', 'Eliminado');
        $provee = Provider::find($id);
        $provee->delete();
        return Redirect('/admin/maintenance/provider');
    }
    public function edit($id)
    {
        $countries = Country::all();
        $proveedor = Provider::find($id);
        return view('backend.provider.edit', compact('proveedor', 'countries'));
        withFlashSuccess('El proveedor ha sido editado correctamente');
    }
    public function update($id, Request $request)
    {
        $provee = Provider::find($id);
        $provee->update($request->all());
        $provee->save();
        return Redirect('/admin/maintenance/provider')->withFlashSuccess('El proveedor ha Actualizado correctamente');
    }
}
