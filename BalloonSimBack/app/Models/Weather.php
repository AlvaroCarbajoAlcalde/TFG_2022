<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Weather
 *
 * @property $id
 * @property $flight
 * @property $temperature
 * @property $pressure
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Weather extends Model
{

  static $rules = [
    'flight' => 'required',
    'temperature' => 'required',
    'pressure' => 'required',
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['flight', 'temperature', 'pressure'];
}
