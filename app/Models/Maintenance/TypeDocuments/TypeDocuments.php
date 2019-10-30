<?php
namespace App\Models\Maintenance\TypeDocuments;
use Illuminate\Database\Eloquent\Model;
class TypeDocuments extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */

    public static $rules = array(
    'name'=>'required|min:2',
    );
    protected $table="type_documents";
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
    public function sale(){
        return $this->hasOne('App\Models\Maintenance\TypeDocuments\TypeDocuments');
    }
    public function customer(){
        return $this->belongsTo('App\Models\Maintenance\Customer\Customer');
    }

}
