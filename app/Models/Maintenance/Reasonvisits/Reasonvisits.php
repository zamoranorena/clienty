<?php
namespace App\Models\Maintenance\Reasonvisits;
use Illuminate\Database\Eloquent\Model;

class Reasonvisits extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table="reasonsvisits";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['reasonsvisits','reasonvisits_id'];
    /**
     * @param array $attributes
     */
}
