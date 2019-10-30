<?php
namespace App\Models\Operation\Liquidation;
use Illuminate\Database\Eloquent\Model;
class Liquidation extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */

    protected $table="liquidations";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['identifier', 'total_utility','sale_id'];
    /**
     * @param array $attributes
     */
    public function services(){
       return $this->belongsToMany('App\Models\Maintenance\Service\Service');
    }
    public function sale(){
       return $this->belongsto('App\Models\Operation\Sale\Sale');
    }
    public function file(){
        return $this->hasMany('App\Models\Operation\File\File');
    }

}
