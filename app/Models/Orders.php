<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Orders extends Model
{
    protected $table = 'orders_tb';
    protected $guarded = ['id'];
    protected $timestamp = true;

    public function products(){
        return $this->belongsTo('App\Models\Product','product_id','id');
    }
    public function createByAdmin(){
        return $this->belongsTo('App\Models\Admin','created_by','id');
    }
    public function updateByAdmin(){
        return $this->belongsTo('App\Models\Admin','updated_by','id');
    }
}
