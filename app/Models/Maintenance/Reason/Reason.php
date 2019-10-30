<?php
namespace App\Models\Maintenance\Reason;
use Illuminate\Database\Eloquent\Model;

class Reason extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table="reasons";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name','reasons','reason_id'];
    /**
     * @param array $attributes
     */
    public function visit()
    {
        return $this->hasOne('App\Models\Operation\Visit\Visit');
    }
}
