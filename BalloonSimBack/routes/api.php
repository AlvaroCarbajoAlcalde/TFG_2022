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

Route::get('newflight/{name}/{takeoff}', function ($name, $takeoff) {
    $flight = new Flight();
    $flight->date = date('Y-m-d H:i:s');
    $flight->name = $name;
    $flight->takeoff = $takeoff;
    $flight->save();
    return DB::table('flights')->latest('updated_at')->first()->id;
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

Route::get('flights', function () {
    return getFlights();
});

Route::get('flight/{id}', function ($id) {
    return Flight::all()->where('id', $id)->firstOrFail();
});

Route::get('routes/{flight}', function ($flight) {
    return App\Models\Route::all()->where('flight', $flight);
});

function getFlights()
{
    $flightList = [];
    $flights = Flight::all();
    $limit = 10;
    foreach ($flights as $flight) {
        $s = App\Models\Route::where('flight', $flight->id)->max('seconds');
        $flightList[] = ['id' => $flight->id, 'date' => $flight->date, 'name' => $flight->name, 'takeoff' => $flight->takeoff, 'duration' => $s];
        if (--$limit == 0) {
            break;
        }
    }
    return $flightList;
}
