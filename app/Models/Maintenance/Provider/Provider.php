<?php
namespace App\Models\Maintenance\Provider;

use Illuminate\Database\Eloquent\Model;


class Provider extends Model
{


    /**
     * The database table used by the model.
     *
     * @var string
     */


    protected $table="proveedores";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name', 'email', 'telefono','pais','direccion','created_user_id'];
    /**
     * @param array $attributes
     */
    /**public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = config('access.roles_table');
    }**/
}
