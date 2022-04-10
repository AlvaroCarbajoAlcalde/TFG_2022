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

Route::get('addwind/{weather}/{altitude}/{winddir}/{windspeed}', function ($weather, $altitude, $winddir, $windspeed) {
    $wind = new App\Models\Wind();
    $wind->weather = $weather;
    $wind->altitude = $altitude;
    $wind->wind_direction = $winddir;
    $wind->wind_speed = $windspeed;
    $wind->save();
});

Route::get('newweather/{id}/{t}/{pressure}', function ($id, $t, $pressure) {
    $weather = new App\Models\Weather();
    $weather->flight = $id;
    $weather->temperature = $t;
    $weather->pressure = $pressure;
    $weather->save();
});

Route::get('flights/{searchfor}', function ($searchfor) {
    $flightList = [];
    if ($searchfor != '*') $flights = Flight::where('name', 'like', '%' . $searchfor . '%')->get();
    else $flights = Flight::all()->sortByDesc('updated_at');

    $limit = 20;
    foreach ($flights as $flight) {
        $s = DB::table('routes')->where('flight', $flight->id)->max('seconds');
        $flightList[] = ['id' => $flight->id, 'date' => $flight->date, 'name' => $flight->name, 'takeoff' => $flight->takeoff, 'duration' => $s];
        if (--$limit == 0) break;
    }
    return $flightList;
});

Route::get('flight/{id}', function ($id) {
    $flight = Flight::all()->where('id', $id)->firstOrFail();
    $s = DB::table('routes')->where('flight', $flight->id)->max('seconds');
    return ['id' => $flight->id, 'date' => $flight->date, 'name' => $flight->name, 'takeoff' => $flight->takeoff, 'duration' => $s];
});

Route::get('routes/{flight}', function ($flight) {
    return App\Models\Route::all()->where('flight', $flight);
});
