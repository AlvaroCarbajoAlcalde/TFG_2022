<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TakeoffPoint extends Model
{
    protected $id;
    protected $name = "undefined";
    protected $description = "undefined";
    protected $x = 0;
    protected $z = 0;
    protected $y = 0;
    protected $lat = 0;
    protected $lon = 0;
}
