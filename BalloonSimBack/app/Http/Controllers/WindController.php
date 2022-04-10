<?php

namespace App\Http\Controllers;

use App\Models\Wind;
use Illuminate\Http\Request;

/**
 * Class WindController
 * @package App\Http\Controllers
 */
class WindController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $winds = Wind::paginate();

        return view('wind.index', compact('winds'))
            ->with('i', (request()->input('page', 1) - 1) * $winds->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $wind = new Wind();
        return view('wind.create', compact('wind'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(Wind::$rules);

        $wind = Wind::create($request->all());

        return redirect()->route('winds.index')
            ->with('success', 'Wind created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $wind = Wind::find($id);

        return view('wind.show', compact('wind'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $wind = Wind::find($id);

        return view('wind.edit', compact('wind'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  Wind $wind
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Wind $wind)
    {
        request()->validate(Wind::$rules);

        $wind->update($request->all());

        return redirect()->route('winds.index')
            ->with('success', 'Wind updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $wind = Wind::find($id)->delete();

        return redirect()->route('winds.index')
            ->with('success', 'Wind deleted successfully');
    }
}
