<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateAdminStore;
use App\Models\Admin;
use App\Traits\CommonCrudTrait;
use Illuminate\Http\Request;

class SelfController extends Controller
{
    use CommonCrudTrait;
    
    public $model = Admin::class;

    /**
     * profile
     *
     * @param  mixed $request
     * @return void
     */
    public function profile(Request $request)
    {
        return response()->json([
            'success' => $request->user() != null,
            'data' => $request->user(),
        ]);
    }

    /**
     * update
     *
     * @param  mixed $request
     * @return void
     */
    public function update(ValidateAdminStore $request)
    {
        return $this->updateResponse($request, auth()->id());
    }

    /**
     * logout
     *
     * @param  mixed $request
     * @return void
     */
    public function logout(Request $request)
    {
        $logout = $request->user()
                          ->currentAccessToken()
                          ->delete();

        return response()->json([
            'success' => $logout,
            'message' => $logout ? "Succesfully logged out" : "Something went wrong",
        ]);
    }


}
