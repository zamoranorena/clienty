<?php
namespace App\Models\Operation\Quote;
use Illuminate\Database\Eloquent\Model;
class Quote extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */


    protected $table="quotes";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['user_id','visit_id', 'customer_id','created_user_id','updated_user_id','coments','total','coments','date_vality'];
    /**
     * @param array $attributes
     */
    /**public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = config('access.roles_table');
    }**/

    public function visit(){
        return $this->belongsTo('App\Models\Operation\Visit\Visit');
    }
    public function customer(){
       return $this->belongsTo('App\Models\Maintenance\Customer\Customer');
    }
    public function services(){
       return $this->belongsToMany('App\Models\Maintenance\Service\Service');
    }
    public function user(){
        return $this->belongsTo('App\Models\Access\User\User');
    }
    public function counter(){
        return $this->belongsTo('App\Models\Access\User\User');
    }
}
