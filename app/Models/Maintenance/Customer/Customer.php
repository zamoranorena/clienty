<?php
namespace App\Models\Maintenance\Customer;

use Illuminate\Database\Eloquent\Model;
class Customer extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */

    public static $rules = array(
    'name'=>'required|min:2',
    'last_name'=>'required|min:2',
    'nationality'=>'required|min:2',
    'email'=>'required|min:2',
    'phone'=>'required|min:2',
    'marketing'=>'required|min:2',
    );
    protected $table="customers";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name','last_name','nationality','email','gender','phone','marketing','user_id','created_user_id','type_document_id','number_document'];
    /**
     * @param array $attributes
     */
    public function visit(){
        return $this->hasMany('App\Models\Maintenance\Visit');
    }
    public function sales(){
        return $this->hasOne('App\Models\Operation\Sale\Sale');
    }
    public function TypeDocument(){
        return $this->belongsTo('App\Models\Maintenance\TypeDocuments\TypeDocuments');
    }
    public function genders(){
        return $this->belongsTo('App\Models\Maintenance\Gender\Gender','gender');
    }
    
}
