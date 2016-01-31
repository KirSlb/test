<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table ='blogs';

    public function getActive()
    {
        return $this->published()->latest()
            ->paginate(3);
    }

    public function scopePublished($query)
    {
        $query->where(['active'=>1]);
    }
}
