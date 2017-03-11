<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class AirCargo extends Model
{
    protected $fillable = ['booking_from', 'destination', 'per', 'rate'];
}
