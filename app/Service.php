<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    protected $fillable = ['name', 'description'];

    public function rates() {
        return $this->hasMany('App\Rate');
    }
}
