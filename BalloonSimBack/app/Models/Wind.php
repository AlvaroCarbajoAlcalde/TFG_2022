<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Wind
 *
 * @property $id
 * @property $weather
 * @property $altitude
 * @property $wind_direction
 * @property $wind_speed
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Wind extends Model
{

  static $rules = [
    'weather' => 'required',
    'altitude' => 'required',
    'wind_direction' => 'required',
    'wind_speed' => 'required',
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['weather', 'altitude', 'wind_direction', 'wind_speed'];
}
