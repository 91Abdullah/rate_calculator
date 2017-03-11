<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rate extends Model
{
    protected $fillable = ['weight', 'rate', 'additional', 'per'];

    public function service() {
        return $this->belongsTo('App\Service');
    }

    public function destination() {
        return $this->belongsTo('App\Destination');
    }
}
