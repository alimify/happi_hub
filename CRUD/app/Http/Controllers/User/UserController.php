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
}
