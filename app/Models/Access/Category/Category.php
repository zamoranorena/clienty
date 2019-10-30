<?php
namespace App\Models\Access\Category;

use Illuminate\Database\Eloquent\Model;


class Category extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */
    public static $rules = array(
    'name'=>'required|min:2',
    );
    protected $table="categories";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['name'];
    /**
     * @param array $attributes
     */
    /**public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->table = config('access.roles_table');
    }**/
}
