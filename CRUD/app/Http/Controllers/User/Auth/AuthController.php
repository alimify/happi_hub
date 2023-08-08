<?php

namespace App\Http\Controllers\User\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateUserStore;
use App\Models\User;
use App\Traits\AuthTrait;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    use AuthTrait;
    /**
     * guard
     *
     * @var string
     */
    private $guard = 'web';
    /**
     * model
     *
     * @var undefined
     */
    private $model = User::class;

    /**
     * signup
     *
     * @param  mixed $request
     * @return void
     */
    public function signup(ValidateUserStore $request)
    {
        return $this->registration($request);
    }
}
