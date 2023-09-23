<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    function mostrar_usuarios() {
        $users = User::all();
        return json_encode($users);
    }

    function mostrar_usuario($user_id) {
        $user = User::find($user_id);
        return json_encode($user);
    }

    function mostrar_usuario_request(Request $request) {
        $user = User::find($request->user_id);
        return json_encode($user);
    }

    function crear_usuario(Request $request) {
        $request->validate([
            'name' => 'required',
            'email' => 'required|unique:users,email',
            'password' => 'required'
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();

        $message = "User created sucess";
        return json_encode($message);
    }
}
