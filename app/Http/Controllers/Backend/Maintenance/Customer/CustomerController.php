<?php
namespace App\Http\Controllers\Backend\Maintenance\Customer;

use App\Http\Controllers\Controller;
use App\Models\Maintenance\Customer\Customer;
use App\Models\Maintenance\Gender\Gender;
use App\Models\Maintenance\TypeDocuments\TypeDocuments;
use App\Models\Maintenance\Nationality\Nationality;
use DB;
use Illuminate\Http\Request;
use Yajra\Datatables\Datatables;
use App\Models\Maintenance\Reason\Reason;
use App\Models\Maintenance\Reasonvisits\Reasonvisits;

class CustomerController extends Controller
{
    public function index(Request $request)
    {

        $datos          = Customer::orderBy('id','DESC')->get();
        $nacionalidades = Nationality::all();
        $users          = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            ->select('users.id', 'users.name')
            
            ->get();
        $users_visit = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            ->orderBy('id','DESC')
            ->select('users.id', 'users.name')
            ->get();
        return view('backend.customer.index', compact('datos', 'users', 'users_visit', 'nacionalidades'));
    }
    public function create()
    {
        $nacionalidades = Nationality::all();
        $users          = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            ->select('users.id', 'users.name')
            ->where('roles.id', '=', '2')
            ->get();

        //$genders=Gender::all();
        $nationalities=Nationality::where('active','=',1)->get();
        $reasonvisits=Reasonvisits::where('active','=',1)->orderBy('name','ASC')->get();
        $reasons=Reason::where('active','=',1)->orderBy('name','ASC')->get();

        return view('backend.customer.create', compact('reasons','reasonvisits','users', 'nationalities','genders'));
    }
    public function store(Request $request)
    {
        /*$this->validate($request, [
        'reason'     => 'required',
        'counter_id'   => 'required|not_in:""',
        ]);*/


        /*$visit = new Visit;
        $visit->create($request->all());
        return Redirect('/admin/operation/visit')->withFlashSuccess('La visita se ha creado correctamente');*/

        $customer = new Customer;
        $customer->create($request->all());
        return Redirect('/admin/maintenance/customer')->withFlashSuccess('El cliente se ha creado correctamente');

    }
    public function destroy($id)
    {
        alert()->success('El Cliente ha sido eliminado correctamente', 'Eliminado');
        $customer = Customer::find($id);
        $customer->delete();
        return Redirect('/admin/maintenance/customer');
    }
    
    public function edit($id, Request $request )
    {
        $customer = Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')
            ->select('customers.*','reasonsvisits.name as marketing','reasonsvisits.id as marketing_id')
            ->where('customers.id',$id)->orderBy("id","DESC")->first();
            
        $gender=Gender::all();

        $nationalities=Nationality::all();
        $reasonsvisits=Reasonvisits::all();
        $documents=TypeDocuments::all();
        return view('backend.customer.edit', compact('customer','nationalities','reasonsvisits','documents','gender'));
    }

    public function update($id, Request $request)
    {
        $customer = Customer::find($id);
        $customer->update($request->all());
        return Redirect('/admin/maintenance/customer')->withFlashSuccess('El cliente ha sido actualizado correctamente');;
    }

    public function getcustomers()
    {
        $customers=Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')->select('customers.*','reasonsvisits.name as marketing')->orderBy("id","DESC")->get();
        return Datatables::of($customers)
            ->addColumn('action', function ($customers) {
                return  '<a href="'.route('admin.maintenance.customer.edit', $customers->id).'" class="btn btn-info"><i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="Modificar"></i></a> 

                    <!--<a href="'.route('admin.maintenance.customer.destroy', $customers->id).'"
                    data-method="delete"
                    data-trans-button-cancel="Cancelar"
                    data-trans-button-confirm="Eliminar"
                    data-trans-title="¿Está seguro?"
                    class="btn btn-info"><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.delete').'"></i></a>-->';
            })
            ->orderColumn("customers.id","DESC")
        ->make(true);

    }
}
