<?php

use App\Http\Controllers\TakeoffPointController;
use App\Http\Controllers\UserController;
use App\Models\Admin;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    if (isset($_GET['user'])) {
        $sha1user = sha1($_GET['user']);
        $sha1pass = sha1($_GET['pass']);

        $admins = Admin::all();
        foreach ($admins as $admin) {
            if (
                $admin->name == $sha1user &&
                $admin->password == $sha1pass
            ) {
                session()->put('user', true);
                return view('home');
            }
        }
        return view('home', ['message' => 'Username or password incorrect.']);
    }
    return view('home');
});

Route::get('/endsession', function () {
    session()->put('user', false);
    return view('home');
});

Route::resource('takeoff-points', TakeoffPointController::class);
Route::resource('users', UserController::class);