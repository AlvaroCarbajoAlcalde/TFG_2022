<?php

namespace App\Http\Controllers;

use App\Models\Flight;
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
        $routes = Route::all()->where('flight', $id);
        foreach ($routes as $route) $route->delete();
        Flight::find($id)->delete();

        return redirect()->route('flights.index')
            ->with('success', 'Flight deleted successfully');
    }
}
