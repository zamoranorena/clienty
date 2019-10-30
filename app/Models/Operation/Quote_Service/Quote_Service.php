<?php
namespace App\Models\Operation\Quote_Service;
use Illuminate\Database\Eloquent\Model;
class Quote_Service extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */


    protected $table="quote_service";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['service_id', 'quote_id','price','cantidad','coments','created_user_id','updated_user_id','total_price'];
    /**
     * @param array $attributes
     */

}
