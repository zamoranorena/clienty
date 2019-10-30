<?php
namespace App\Http\Controllers\Backend\Operation\Visit;
use App\Models\Operation\Visit\Visit;
use App\Models\Operation\Quote\Quote;
use App\Models\Access\User\User;
use App\Models\Maintenance\Service\Service;
use App\Models\Maintenance\Gender\Gender;
use App\Models\Maintenance\Customer\Customer;
use App\Models\Maintenance\Reason\Reason;
use App\Models\Maintenance\Reasonvisits\Reasonvisits;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Model;
use App\Models\Maintenance\Nationality\Nationality;
use DB;
class VisitController extends Controller
{
    public function index()
    {
        $idusuario=access()->user()->id;
        $visitas = Visit::Join('reasons','reasons.id','=','visits.reason')->select('visits.*','reasons.name as reason')->orderBy("visits.id","DESC")->where('visits.active','1')->get();
        $array = array(1,3);/*Contabilidad y administraciòn*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $visitas=$visitas->where('counter_id', $idusuario);
        }
        foreach ($visitas as $visita){            
            $consulta=DB::table('visits')
                ->select('quotes.id') 
                ->join('quotes','quotes.visit_id','=','visits.id')
                ->where('quotes.visit_id','=',$visita->id)
                ->pluck('quotes.id')
                ->first();
            $visita["quote_id"]=$consulta;
        }
        return view('backend.visit.index', compact('visitas'));
    }

    public function destroy($id){
        $visit = Visit::findOrFail($id);
        $visit->active = 0;
        $visit->save();
        return Redirect('/admin/operation/visit')->withFlashSuccess('La visita se ha eliminado correctamente');
    }


    public function restore($id){
        $visit = Visit::findOrFail($id);
        $visit->active = 1;
        $visit->save();
        return Redirect('/admin/operation/visit')->withFlashSuccess('La visita se ha restuarado correctamente');
    }

    public function visitdesactivated(){
        $idusuario=access()->user()->id;
        $visitas = Visit::Join('reasons','reasons.id','=','visits.reason')->select('visits.*','reasons.name as reason')->orderBy("visits.id","DESC")->where('visits.active',0)->get();
        $array = array(1,3);/*Contabilidad y administraciòn*/
        if (count(array_intersect($array,access()->user()->roles()->pluck('roles.id')->ToArray()))==0){
           $visitas=$visitas->where('counter_id', $idusuario)->where('active',0);
        }
        foreach ($visitas as $visita){            
            $consulta=DB::table('visits')
                ->select('quotes.id') 
                ->join('quotes','quotes.visit_id','=','visits.id')
                ->where('quotes.visit_id','=',$visita->id)
                ->pluck('quotes.id')
                ->first();
            $visita["quote_id"]=$consulta;
        }
        return view('backend.visit.desactivated', compact('visitas'));
    }



    public function crearVisita($id){
        $counter_atendio=Visit::join('users','users.id','=','visits.counter_id')
          ->select('users.id','users.name')
          ->where('customer_id',$id)
          ->orderBy('visits.id', 'DESC')
          ->pluck('users.id')
          ->first();



        $reasons=Reason::all();

        $customer=Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')
            ->select('customers.*','reasonsvisits.name as marketing','reasonsvisits.id as marketing_id')
            ->where('customers.id',$id)->orderBy("id","DESC")->first();

        $users          = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            //->leftjoin('visits','users.id','=','visits.counter_id')
            ->select('users.id', 'users.name')
            ->orderBy('name','ASC')
            ->where('roles.id', '=', '2')
            ->get();
        return view('backend.visit.create',compact('customer','users','counter_atendio','reasons'));
    }
    public function crearcliente(){
        $users          = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            ->orderBy('name','ASC')
            ->select('users.id', 'users.name')
            ->where('roles.id', '=', '2')
            ->get();
        $genders = Gender::all();
        $nationalities=Nationality::where('active','=',1)->get();
        $reasonvisits=Reasonvisits::where('active','=',1)->orderBy('name','ASC')->get();
        $reasons=Reason::where('active','=',1)->orderBy('name','ASC')->get();


        return view('backend.visit.create_visit_customer',compact('reasonvisits','reasons','counter_atendio','users','nationalities','genders'));
    }
    public function store(Request $request){
        $this->validate($request, [
            'name'     => 'required',
            'last_name'     => 'required',
            'reason'     => 'required',
        ]);
        $customer= new Customer;
        $customer_id = $customer->create($request->all())->id;
        $request_visit = $request->all();
        $request_visit["customer_id"] = $customer_id;
        $visit= new Visit;  
        $visit->create($request_visit);
        return Redirect('/admin/operation/visitCustomer')->withFlashSuccess(trans('La visita se ha creado correctamente'));
    }
    public function asignarVisita(Request $request)
    {
        $visit = new Visit;
        $visit->create($request->all());
        return Redirect('/admin/operation/visitCustomer')->withFlashSuccess('La visita se ha creado correctamente');
    }

        public function visitCustomer(Request $request)
        {
        
        $user_id=access()->user()->id;


        /*$datos= DB::table('customers')
            ->where('customers.created_user_id', '=', $user_id)
            ->get();*/

        $datos=Customer::Join('reasonsvisits','reasonsvisits.id','=','customers.marketing')->select('customers.*','reasonsvisits.name as marketing')->orderBy("id","DESC")->get();    

            

        $nacionalidades = Nationality::all();
        
        $users          = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            //->leftjoin('visits','users.id','=','visits.counter_id')
            ->select('users.id', 'users.name')
            ->where('roles.id', '=', '2')
            ->get();

        /*$selected = Visit::leftjoin('users','users.id','=','visits.counter_id')
           ->where('visits.customer_id','users.id')
          ->orderBy('users.id', 'DESC')
          ->get();*/





        $users_visit = DB::table('users')
            ->join('role_user', 'role_user.user_id', '=', 'users.id')
            ->join('roles', 'roles.id', '=', 'role_user.role_id')
            ->select('users.id', 'users.name')
            ->where('roles.id', '=', '2')
            ->get();

        return view('backend.visit.customerVisit', compact('datos', 'users', 'users_visit', 'nacionalidades'));
    }

    public function edit($id)
    {
        $visita=Visit::findOrFail($id);
        $motivos=Reason::all();
        $usuarios = User::join('role_user','role_user.user_id','=','users.id')
            ->join('roles','roles.id','=','role_user.role_id')
            ->select('users.id','users.name')
            ->where('roles.id', '=', '2')
            ->orderBy('users.id','DESC')
            ->get();
        return view('backend.visit.edit',compact('visita','usuarios','motivos'));  
    }
    public function update(Request $request, $id){
        $visita = Visit::findOrFail($id);
        $visita->update($request->all());
        return Redirect('/admin/operation/visit')->withFlashSuccess('El cliente ha sido actualizado correctamente');;
    }
}
