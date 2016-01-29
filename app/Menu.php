<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    protected $table = 'menus';
    public function getLeftMenu()
    {
        return $this->orderBy('weight')->Published()->Left()->get();
    }
    public function getRightMenu()
    {
        return $this->orderBy('weight')->Published()->Right()->get();
    }


    public function scopePublished($query)
    {
        $query->where(['active'=>'1']);
    }
    public function scopeLeft($query)
    {
        $query->where(['position'=>'left']);
    }
    public function scopeRight($query)
    {
        $query->where(['position'=>'right']);
    }
}
