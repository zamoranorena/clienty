<?php
namespace App\Models\Maintenance\Nationality;
use Illuminate\Database\Eloquent\Model;
class Nationality extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table="nationalities";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['nationality','countries_id'];
    /**
     * @param array $attributes
     */
}
