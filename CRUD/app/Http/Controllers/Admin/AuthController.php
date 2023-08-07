<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateAdminStore;
use App\Models\Admin;
use App\Traits\AuthTrait;

class AuthController extends Controller
{
    use AuthTrait;
    /**
     * guard
     *
     * @var string
     */
    private $guard = 'admin';
    /**
     * model
     *
     * @var undefined
     */
    private $model = Admin::class;

    /**
     * signup
     *
     * @param  mixed $request
     * @return void
     */
    public function signup(ValidateAdminStore $request)
    {
        return $this->registration($request);
    }
}
