<?php
namespace App\Models\Operation\Deposit;
use Illuminate\Database\Eloquent\Model;
class Deposit extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */


    protected $table="deposits";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['amount', 'payment_id','customer_id','user_id','active'];
    /**
     * @param array $attributes
     */



}