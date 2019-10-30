<?php
namespace App\Models\Operation\Sale_service;
use Illuminate\Database\Eloquent\Model;
class Sale_service extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */

    protected $table="Sale_service";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'price','cantidad','sale_id','service_id','coments_quote'];
    /**
     * @param array $attributes
     */
    public function services(){
       return $this->belongsToMany('App\Models\Maintenance\Service\Service');
    }
    public function customer(){
        return $this->belongsTo('App\Models\Maintenance\Customer\Customer');
    }
    public function sals(){
        return $this->belongsToMany('App\Models\Operation\Sale\Sale');
    }
    public function payment(){
        return $this->belongsTo('App\Models\Maintenance\Payments\Payments');
    }
}
