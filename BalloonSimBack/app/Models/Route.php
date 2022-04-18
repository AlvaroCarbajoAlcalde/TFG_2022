<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Route
 *
 * @property $id
 * @property $flight
 * @property $seconds
 * @property $lat
 * @property $lon
 * @property $altitude
 * @property $speed
 * @property $speedy
 * @property $direction
 * @property $fuel
 * @property $x
 * @property $y
 * @property $z
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Route extends Model
{

  static $rules = [
    'flight' => 'required|numeric',
    'seconds' => 'required|numeric',
    'lat' => 'required|numeric',
    'lon' => 'required|numeric',
    'altitude' => 'required|numeric',
    'speed' => 'required|numeric',
    'speedy' => 'required|numeric',
    'fuel' => 'required|numeric',
    'direction' => 'required|numeric',
    'x' => 'required|numeric',
    'y' => 'required|numeric',
    'z' => 'required|numeric',
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['flight', 'seconds', 'lat', 'lon', 'altitude', 'speed', 'speedy', 'fuel', 'direction', 'x', 'y', 'z'];
}
