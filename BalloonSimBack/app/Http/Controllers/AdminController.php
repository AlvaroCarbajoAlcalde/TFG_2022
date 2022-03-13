<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

/**
 * Class AdminController
 * @package App\Http\Controllers
 */
class AdminController extends Controller
{
    /**
     * Login.
     *
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $sha1user = sha1($request['user']);
        $sha1pass = sha1($request['pass']);

        $admins = Admin::all();
        foreach ($admins as $admin) {
            if (
                $admin->name == $sha1user &&
                $admin->password == $sha1pass
            ) {
                session()->put('user', true);
                return redirect('');
            }
        }

        return redirect('/login-failed');
    }

    /**
     * Logout.
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        session()->put('user', false);
        return redirect('');
    }
}
