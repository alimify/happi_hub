<?php

namespace App\Http\Controllers\User\Self;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateUserStore;
use App\Models\User;
use App\Traits\CommonCrudTrait;
use Illuminate\Http\Request;

class SelfController extends Controller
{
    /**
     * model
     *
     * @var undefined
     */
    public $model = User::class;
    
    use CommonCrudTrait;
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
    public function update(ValidateUserStore $request)
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
