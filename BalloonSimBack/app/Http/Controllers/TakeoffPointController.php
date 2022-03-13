<?php

namespace App\Http\Controllers;

use App\Models\TakeoffPoint;
use Illuminate\Http\Request;

/**
 * Class TakeoffPointController
 * @package App\Http\Controllers
 */
class TakeoffPointController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $takeoffPoints = TakeoffPoint::paginate();

        return view('takeoff-point.index', compact('takeoffPoints'))
            ->with('i', (request()->input('page', 1) - 1) * $takeoffPoints->perPage());
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $takeoffPoint = new TakeoffPoint();
        return view('takeoff-point.create', compact('takeoffPoint'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate(TakeoffPoint::$rules);

        $takeoffPoint = TakeoffPoint::create($request->all());

        return redirect()->route('takeoff-points.index')
            ->with('success', 'TakeoffPoint created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $takeoffPoint = TakeoffPoint::find($id);

        return view('takeoff-point.show', compact('takeoffPoint'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $takeoffPoint = TakeoffPoint::find($id);

        return view('takeoff-point.edit', compact('takeoffPoint'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  TakeoffPoint $takeoffPoint
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, TakeoffPoint $takeoffPoint)
    {
        request()->validate(TakeoffPoint::$rules);

        $takeoffPoint->update($request->all());

        return redirect()->route('takeoff-points.index')
            ->with('success', 'TakeoffPoint updated successfully');
    }

    /**
     * @param int $id
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function destroy($id)
    {
        $takeoffPoint = TakeoffPoint::find($id)->delete();

        return redirect()->route('takeoff-points.index')
            ->with('success', 'TakeoffPoint deleted successfully');
    }
}
