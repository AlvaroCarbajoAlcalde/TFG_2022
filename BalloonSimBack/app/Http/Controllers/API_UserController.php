<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;

/**
 * Class API_UserController
 * @package App\Http\Controllers
 */
class API_UserController extends Controller
{

    /**
     * LogIn
     *
     * @param  int $chain separated by @@@
     * @return \Illuminate\Http\Response
     */
    public function show($chain)
    {
        try {
            $name = explode("@@@", $chain)[0];
            $password = sha1(explode("@@@", $chain)[1]);
        } catch (Exception) {
            return 'badRequest';
        }

        $users = User::all();

        foreach ($users as $user) {
            if ($user->name == $name && $user->password == $password) {
                return response()->json(['login' => true]);
            }
        }
        return response()->json(['login' => false]);
    }

}
