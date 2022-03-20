<?php

namespace App\Http\Controllers;

use App\Models\Route;

/**
 * Class RouteController
 * @package App\Http\Controllers
 */
class RouteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $routes = Route::paginate();

        return view('route.index', compact('routes'))
            ->with('i', (request()->input('page', 1) - 1) * $routes->perPage());
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $route = Route::find($id);

        return view('route.show', compact('route'));
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $route = Route::find($id)->delete();

        return redirect()->route('routes.index')
            ->with('success', 'Route deleted successfully');
    }
}
