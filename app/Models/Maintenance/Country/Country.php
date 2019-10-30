<?php
namespace App\Models\Maintenance\Country;

use Illuminate\Database\Eloquent\Model;
class Country extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table="countries";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['code','name','created_user_id','updated_user_id','active'];
    /**
     * @param array $attributes
     */
}
