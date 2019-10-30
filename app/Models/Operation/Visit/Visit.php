<?php
namespace App\Models\Operation\Visit;
use Illuminate\Database\Eloquent\Model;
class Visit extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    
    protected $table="visits";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['user_id','customer_id','counter_id','reason','created_user_id','updated_user_id'];
    /**
     * @param array $attributes
     */
    public function user()
    {
        return $this->belongsTo('App\Models\Access\User\User');
    }   
    public function counter()
    {
        return $this->belongsTo('App\Models\Access\User\User');
    }
    public function customer()
    {
        return $this->belongsTo('App\Models\Maintenance\Customer\Customer');
    }
    public function motivo()
    {
        return $this->belongsTo('App\Models\Maintenance\Reason\Reason','reason');
    }
}
