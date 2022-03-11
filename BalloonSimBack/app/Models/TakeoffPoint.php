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
    'name' => 'required|max:255',
    'description' => 'max:255',
    'x' => 'required|numeric',
    'z' => 'required|numeric',
    'y' => 'required|numeric',
    'lat' => 'numeric',
    'lon' => 'numeric'
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['name', 'description', 'x', 'z', 'y', 'lat', 'lon'];
}
