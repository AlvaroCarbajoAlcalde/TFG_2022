<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TakeoffPoint;

class TakeoffPointController extends Controller
{

    public function index()
    {
        return TakeoffPoint::all();
    }

    public function store(Request $request)
    {
        $takeoffPoint = new TakeoffPoint();
        $takeoffPoint->name = $request->input('name');
        $takeoffPoint->description = $request->input('description');
        $takeoffPoint->x = $request->input('x');
        $takeoffPoint->z = $request->input('z');
        $takeoffPoint->y = $request->input('y');
        $takeoffPoint->lat = $request->input('lat');
        $takeoffPoint->lon = $request->input('lon');
        $takeoffPoint->save();
    }

    public function show($id)
    {
        return TakeoffPoint::findOrFail($id);
    }
}
