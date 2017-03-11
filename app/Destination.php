<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Destination extends Model
{
    protected $fillable = ['name'];

    public function rates() {
        return $this->hasMany('App\Rate');
    }
}
