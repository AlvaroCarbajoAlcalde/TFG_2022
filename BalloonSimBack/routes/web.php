<?php

use App\Http\Controllers\TakeoffPointController;
use App\Http\Controllers\UserController;
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
    return view('home');
})->name('home');

Route::get('/login-failed', function () {
    return view('home', ['message' => 'Invalid username or password']);
});

Route::get('logout', 'App\Http\Controllers\AdminController@logout');
Route::get('login', 'App\Http\Controllers\AdminController@login');

Route::resource('takeoff-points', TakeoffPointController::class);
Route::resource('users', UserController::class);
