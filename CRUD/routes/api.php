<?php

use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\User\AuthController as UserAuthController;
use App\Http\Controllers\User\UserController as UserUserController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// admin route
Route::prefix('admin')->group(function(){
    // admin auth
    Route::post('auth/login',[AuthController::class,'login']);
    Route::post('auth/signup',[AuthController::class,'signup']);

    Route::middleware(['auth:sanctum','admin'])->group(function(){


        // user crud
        Route::get('user', [UserController::class,'user_index']);
        Route::get('user/{id}', [UserController::class,'user_show']);
        Route::put('user/{id}', [UserController::class,'user_update']);
        Route::delete('user/{id}', [UserController::class,'user_destroy']);

        //self profile
        Route::get('profile', [UserController::class,'self_profile']);
        Route::put('profile', [UserController::class,'self_profile_update']);
        Route::get('logout', [UserController::class,'self_logout']);

        // admin crud
        Route::get('', [UserController::class,'index']);
        Route::get('/{id}', [UserController::class,'show']);
        Route::put('/{id}', [UserController::class,'update']);
        Route::delete('/{id}', [UserController::class,'destroy']);
    });
});



// user route
Route::prefix('user')->group(function(){
    // user auth
    Route::post('auth/login',[UserAuthController::class,'login']);
    Route::post('auth/signup',[UserAuthController::class,'signup']);

    Route::middleware(['auth:sanctum','user'])->group(function(){

        //self profile
        Route::get('profile', [UserUserController::class,'self_profile']);
        Route::put('profile', [UserUserController::class,'self_profile_update']);
        Route::get('logout', [UserUserController::class,'self_logout']);

        // user crud
        Route::get('/', [UserUserController::class,'index']);
        Route::get('/{id}', [UserUserController::class,'show']);

        // Route::put('/{id}', [UserUserController::class,'update']);
        // Route::delete('/{id}', [UserUserController::class,'destroy']);

    });

});

