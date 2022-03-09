<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class TakeoffPoint
 *
 * @property $id
 * @property $name
 * @property $description
 * @property $x
 * @property $z
 * @property $y
 * @property $lat
 * @property $lon
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class TakeoffPoint extends Model
{
    
    static $rules = [
		'name' => 'required',
		'x' => 'required',
		'z' => 'required',
		'y' => 'required',
    ];

    protected $perPage = 20;

    /**
     * Attributes that should be mass-assignable.
     *
     * @var array
     */
    protected $fillable = ['name','description','x','z','y','lat','lon'];



}
