<?php

use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Models\Flight;
use App\Models\TakeoffPoint;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
*/

Route::get('takeoffs', function () {
    return TakeoffPoint::all();
});

Route::get('newflight/{user}', function ($user) {
    $flight = new Flight();
    $flight->date = date('Y-m-d H:i:s');
    $flight->user = $user;
    $flight->save();

    return DB::table('flights')->latest('updated_at')->first()->id;
});

Route::get('login/{name}/{pass}', function ($name, $pass) {
    $user = User::all()->where('name', $name)->first();
    if (!$user) return response()->json(false);
    return response()->json($user->password == sha1($pass));
});

Route::get('newpoint/{flight}/{s}/{lat}/{lon}/{alt}', function ($flight, $s, $lat, $lon, $alt) {
    $route = new App\Models\Route();
    $route->flight = $flight;
    $route->seconds = $s;
    $route->lat = $lat;
    $route->lon = $lon;
    $route->altitude = $alt;
    $route->save();
    return DB::table('routes')->latest('updated_at')->first()->id;
});
