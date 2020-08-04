<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subscriber extends Model
{
    public function subscriptions()
    {
        return $this->belongsToMany('App\Subscription');
    }
}
