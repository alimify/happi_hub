<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\ValidateAdminStore;
use App\Models\Admin;
use App\Traits\CommonCrudTrait;
use Illuminate\Http\Request;

class AdminUserController extends Controller
{
    use CommonCrudTrait;
    
    /**
     * model
     *
     * @var undefined
     */
    public $model = Admin::class;

    public function update(ValidateAdminStore $request, string $id)
    {
        return $this->updateResponse($request, $id);
    }

}
