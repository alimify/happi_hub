<?php
namespace App\Traits;

use App\Http\Requests\ValidateLoginDetails;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Support\Facades\DB;

trait AuthTrait
{

    /**
     * login
     *
     * @param  mixed $request
     * @return void
     */
    public function login(ValidateLoginDetails $request)
    {

        try {

            $success = false;
            $message = "Something went wrong";
            $token = null;

            if (auth()->guard($this->guard)
                ->attempt($request->only('email', 'password'))
            ) {
                $success = true;
                $message = $this->guard . ' token generated';
                $token = auth()->guard($this->guard)
                    ->user()
                    ->createToken($this->guard . '_token')->plainTextToken;

            }

            return response()->json([
                'success' => $success,
                'message' => $message,
                'token' => $token,
            ], 201);

        } catch (\Throwable $th) {

            return response()->json([
                'success' => false,
                'message' => 'Something went wrong',
            ]);
        }
    }

    /**
     * registration
     *
     * @param  mixed $request
     * @return void
     */
    public function registration($request)
    {
        DB::beginTransaction();
        try {
            $user = new $this->model();
            $fillableData = $request->only($user->getFillable());
            $user->fill($fillableData)->save();
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Successfully done.'
            ], 201);

        } catch (ModelNotFoundException $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
                'message' => 'Something went wrong'
            ], 404);
        }

    }
}
