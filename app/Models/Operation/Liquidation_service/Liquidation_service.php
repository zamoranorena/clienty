<?php
namespace App\Models\Operation\Liquidation_service;
use Illuminate\Database\Eloquent\Model;
class Liquidation_service extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */

    protected $table="liquidation_service";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['liquidation_id','service_id','precio_t','price','cantidad','costo','fecha_pago','active'];
    

}
