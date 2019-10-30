<?php
namespace App\Models\Maintenance\Payments;
use Illuminate\Database\Eloquent\Model;
class Payments extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */

    public static $rules = array(
    'name'=>'required|min:2',
    );
    protected $table="payments_type";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name','porcentaje'];
    /**
     * @param array $attributes
     */
    /**public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = config('access.roles_table');
    }**/
    public function sale(){
        return $this->hasOne('App\Models\Maintenance\Payments\Payments');
    }

}
