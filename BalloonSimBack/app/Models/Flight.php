<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Flight
 *
 * @property $id
 * @property $date
 * @property $user
 * @property $created_at
 * @property $updated_at
 *
 * @package App
 * @mixin \Illuminate\Database\Eloquent\Builder
 */
class Flight extends Model
{

  static $rules = [
    'date' => 'required',
    'user' => 'required',
  ];

  protected $perPage = 20;

  /**
   * Attributes that should be mass-assignable.
   *
   * @var array
   */
  protected $fillable = ['date', 'user'];
}
