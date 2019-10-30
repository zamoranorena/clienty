<?php
namespace App\Models\Maintenance\Gender;
use Illuminate\Database\Eloquent\Model;
class Gender extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table="genders";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name'];
    /**
     * @param array $attributes
     */
    public function customer(){
        return $this->hasOne('App\Models\Maintenance\Customer\Customer');
    }
}
