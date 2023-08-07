<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateAdminStore;
use App\Http\Requests\ValidateUserStore;
use App\Models\Admin;
use App\Models\User;
use App\Traits\CommonCrudTrait;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public $model = Admin::class;

    use CommonCrudTrait;

    /**
     * update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return void
     */
    public function update(ValidateAdminStore $request, string $id)
    {
        return $this->updateResponse($request, $id);
    }

    /**
     * user_index
     *
     * @param  mixed $request
     * @return void
     */
    public function user_index(Request $request)
    {
        $this->model = User::class;
        return $this->index($request);
    }

    /**
     * user_show
     *
     * @param  mixed $id
     * @return void
     */
    public function user_show(string $id)
    {
        $this->model = User::class;
        return $this->show($id);
    }

    /**
     * user_update
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return void
     */
    public function user_update(ValidateUserStore $request, string $id)
    {
        $this->model = User::class;
        return $this->updateResponse($request, $id);
    }

    /**
     * user_destroy
     *
     * @param  mixed $id
     * @return void
     */
    public function user_destroy(string $id)
    {
        $this->model = User::class;
        return $this->destroy($id);
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
    public function self_profile_update(ValidateAdminStore $request)
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
