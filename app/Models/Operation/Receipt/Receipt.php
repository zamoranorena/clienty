<?php
namespace App\Models\Operation\Receipt;
use Illuminate\Database\Eloquent\Model;
class Receipt extends Model
{
    /**
    * The database table used by the model.
    *
    * @var string
    */
    protected $table="receipts";
        /**
        * The attributes that are mass assignable.
        *
        * @var array
        */
    protected $fillable = ['identifier', 'montotal','sale_id','active'];
    /**
     * @param array $attributes
     */
    
    public function sale()
    {
        return $this->belongsTo('App\Models\Operation\Sale\Sale');
    }
}