<?php

namespace App\Http\Controllers;

use App\Models\Weather;
use Illuminate\Http\Request;

/**
 * Class WeatherController
 * @package App\Http\Controllers
 */
class WeatherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $weather = Weather::paginate();

        return view('weather.index', compact('weather'))
            ->with('i', (request()->input('page', 1) - 1) * $weather->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $weather = new Weather();
        return view('weather.create', compact('weather'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Weather::$rules);

        $weather = Weather::create($request->all());

        return redirect()->route('weather.index')
            ->with('success', 'Weather created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $weather = Weather::find($id);

        return view('weather.show', compact('weather'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $weather = Weather::find($id);

        return view('weather.edit', compact('weather'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Weather $weather
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Weather $weather)
    {
        request()->validate(Weather::$rules);

        $weather->update($request->all());

        return redirect()->route('weather.index')
            ->with('success', 'Weather updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $weather = Weather::find($id)->delete();

        return redirect()->route('weather.index')
            ->with('success', 'Weather deleted successfully');
    }
}
