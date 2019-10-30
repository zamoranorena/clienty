<?php
namespace App\Models\Maintenance\Service;

use Illuminate\Database\Eloquent\Model;


class service extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */

    protected $table="services";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name','price','provider_id','created_user_id'];
    /**
     * @param array $attributes
     */
    public function quotes(){
        return $this->belongsToMany('App\Models\Access\Quote\Quote');
    }
    public function visit(){
        return $this->hasMany('App\Models\Access\Visit');
    }
    public function sale_service(){
        return $this->hasMany('App\Models\Operation\Sale\Sale');
    } 
    public function liquidations(){
        return $this->belongsToMany('App\Models\Operation\Liquidation\Liquidation');
    }
}
