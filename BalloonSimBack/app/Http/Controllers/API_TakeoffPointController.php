<?php

namespace App\Http\Controllers;

use App\Models\TakeoffPoint;

/**
 * Class API_TakeoffPointController
 * @package App\Http\Controllers
 */
class API_TakeoffPointController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return TakeoffPoint::all();
    }

    /**
     * Display the specified resource.
     *
     * @param  int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return TakeoffPoint::find($id);
    }
}
