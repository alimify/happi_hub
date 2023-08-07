<?php
namespace App\Traits;

use App\Models\Admin;
use App\Models\User;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

trait CommonCrudTrait
{

    public const modelList = [
        'admin' => Admin::class,
        'user' => User::class,
    ];

    /**
     * index
     *
     * @param  mixed $request
     * @return void
     */
    public function index(Request $request)
    {

        $model = $this->model;
        if (!empty(request('model'))) {
            $model = self::modelList[request('model')] ?? $model;
        }

        $response = $model::orderBy('id', 'desc')->searchable([
            [
                'column_name' => 'name',
                'type' => 'like',
                'value' => request('name'),
                'relation' => '',
            ],
            [
                'column_name' => 'division',
                'type' => 'where',
                'value' => request('division'),
                'relation' => '',
            ],
            [
                'column_name' => 'email',
                'type' => 'like',
                'value' => request('email'),
                'relation' => '',
            ],
        ]);

        $response = $response->paginate(30);

        return response()->json([
            'success' => true,
            'response' => $response,
        ]);
    }

    /**
     * show
     *
     * @param  mixed $id
     * @return void
     */
    function show(string $id)
    {
        try
        {
            $model = $this->model;
            if (!empty(request('model'))) {
                $model = self::modelList[request('model')] ?? $model;
            }
            $data = $model::findOrFail($id);

            return response()->json([
                'success' => true,
                'response' => $data,
            ]);
        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'response' => null,
            ], 404);
        }
    }

    /**
     * updateResponse
     *
     * @param  mixed $request
     * @param  mixed $id
     * @return void
     */
    function updateResponse($request, string $id)
    {
        $model = $this->model;
        if (!empty(request('model'))) {
            $model = self::modelList[request('model')] ?? $model;
        }

        DB::beginTransaction();
        try {

            $user = $model::findOrFail($id);
            $fillableData = $request->only($user->getFillable());
            $user->update($fillableData);
            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Successfully updated',
            ], 200);

        } catch (ModelNotFoundException $e) {
            DB::rollBack();

            return response()->json([
                'success' => false,
            ], 404);
        }

    }

    /**
     * destroy
     *
     * @param  mixed $id
     * @return void
     */
    function destroy(string $id)
    {
        try
        {
            $model = $this->model;
            if (!empty(request('model'))) {
                $model = self::modelList[request('model')] ?? $model;
            }
            $delete = $model::findOrFail($id);
            if ($delete->delete()) {
                return response()->json([
                    'success' => true,
                    'message' => 'Deleted'
                ], 200);
            } else {
                return response()->json([
                    'success' => false,
                    'message' => 'Failed'
                ], 404);
            }

        } catch (ModelNotFoundException $e) {
            return response()->json([
                'success' => false,
                'message' => 'Failed'
            ], 404);
        }
    }

}
