<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateUserStore;
use App\Models\User;
use App\Traits\CommonCrudTrait;
use Illuminate\Http\Request;

class UserController extends Controller
{
    /**
     * model
     *
     * @var undefined
     */
    public $model = User::class;

    use CommonCrudTrait;

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return void
     */
    public function update(ValidateUserStore $request, string $id)
    {
        return $this->updateResponse($request, $id);
    }

    /**
     * self_profile
     *
     * @param  mixed $request
     * @return void
     */
    public function self_profile(Request $request)
    {
        return response()->json([
            'success' => $request->user() != null,
            'data' => $request->user(),
        ]);
    }

    /**
     * self_profile_update
     *
     * @param  mixed $request
     * @return void
     */
    public function self_profile_update(ValidateUserStore $request)
    {
        $id = auth()->id();

        return $this->updateResponse($request, $id);
    }

    /**
     * self_logout
     *
     * @param  mixed $request
     * @return void
     */
    public function self_logout(Request $request)
    {
        $logout = $request->user()->currentAccessToken()->delete();

        return response()->json([
            'success' => $logout,
            'message' => $logout ? "Succesfully logged out" : "Something went wrong",
        ]);
    }

}
