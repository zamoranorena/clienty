<?php

namespace App\Http\Requests\Backend\Provider;

use App\Http\Requests\Request;
use Illuminate\Validation\Rule;

/**
 * Class StoreUserRequest.
 */
class StoreProviderRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return access()->allow('view-backend');
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'     => 'required|max:255',
            'email'    => ['required', 'email', 'max:255'],
            'telefono' => 'required|max:9',
            'pais'     => 'required|max:255',
            'direccion'=> 'required|max:255',
        ];
    }
}
