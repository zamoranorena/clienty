<?php
namespace App\Models\Operation\Sale;
use Illuminate\Database\Eloquent\Model;
class Sale extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */

    public static $rules = array(
    'id'=>'required|min:1',
    'payment_id'=>'required|min:1',
    'quote_id'=>'required|min:1',
    'quote_id'=>'required|min:1',
    );
    protected $table="sales";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['payment_id', 'quote_id','customer_id','user_id','identifier','created_user_id'];
    /**
     * @param array $attributes
     */
    //public function services(){
       //return $this->hasMany('App\Models\Maintenance\Service\Service');
    //}
    public function customer(){
        return $this->belongsTo('App\Models\Maintenance\Customer\Customer');
    }
    public function payment(){
        return $this->belongsTo('App\Models\Maintenance\Payments\Payments');
    }
    public function services(){
        return $this->belongsToMany('App\Models\Maintenance\Service\Service');
    }
    public function user(){
        return $this->belongsTo('App\Models\Access\User\User');
    }
    public function liquidation(){
        return $this->hasOne('App\Models\Operation\Liquidation\Liquidation');
    }
}
