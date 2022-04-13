<?php

namespace App\Http\Controllers;

use App\Models\Flight;
use App\Models\Weather;
use App\Models\Wind;
use App\Models\Route;

/**
 * Class FlightController
 * @package App\Http\Controllers
 */
class FlightController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $flights = Flight::paginate();

        return view('flight.index', compact('flights'))
            ->with('i', (request()->input('page', 1) - 1) * $flights->perPage());
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $flight = Flight::find($id);

        return view('flight.show', compact('flight'));
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        foreach (Wind::all()->where('weather', $id) as $wind) $wind->delete();
        foreach (Route::all()->where('flight', $id) as $route) $route->delete();
        $weather = Weather::all()->where('flight', $id)->first();
        if($weather) $weather->delete();
        Flight::find($id)->delete();

        return redirect()->route('flights.index')
            ->with('success', 'Flight deleted successfully');
    }
}
