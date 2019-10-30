<?php
namespace App\Models\Operation\File;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;
class File extends Model
{
    /**
     * The database table used by the model.
     *
     * @var string
     */

    protected $table="files";
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['route', 'name','liquidation_service_id'];
    /**
     * @param array $attributes
     */
    public function liquidation(){
        return $this->belongsto('App\Models\Operation\Liquidation\Liquidation');
    }
}



