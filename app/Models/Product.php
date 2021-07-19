<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $table = 'products_tb';
    protected $guarded = ['id'];
    protected $timestamp = true;

    public function productTypes(){
        return $this->belongsTo('App\Models\ProductType','product_type_id','id');
    }
    public function createByAdmin(){
        return $this->belongsTo('App\Models\Admin','created_by','id');
    }
    public function updateByAdmin(){
        return $this->belongsTo('App\Models\Admin','updated_by','id');
    }
}
