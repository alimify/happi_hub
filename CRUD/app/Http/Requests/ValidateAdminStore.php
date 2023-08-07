<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\Validator;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;

class ValidateAdminStore extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        $id = $this->id;
        if($this->self_update == 1 && auth()->check()) $id = auth()->id();
        
        return [
            'name' => 'required',
            'email' => 'required|email|unique:admins,email,'. $id,
            'password' => 'required|min:4|confirmed',
            'division' => 'required|min:3'
        ];
    }
    
    /**
     * failedValidation
     *
     * @param  mixed $validator
     * @return void
     */
    public function failedValidation(Validator $validator) {
        
        throw new HttpResponseException(response()->json([
         'success' => false,
         'message' => 'Validation errs',
         'data' => $validator->errors()
        ], 422)); 
    }

}
