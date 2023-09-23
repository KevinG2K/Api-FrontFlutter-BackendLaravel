<?php

use App\Http\Controllers\ApiController;
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

Route::get('/users/view', [ApiController::class, 'mostrar_usuarios']);
Route::get('/user/view/{user_id}', [ApiController::class, 'mostrar_usuario']);
Route::post('/user/view/request', [ApiController::class, 'mostrar_usuario_request']);
Route::post('/create/user', [ApiController::class, 'crear_usuario']);