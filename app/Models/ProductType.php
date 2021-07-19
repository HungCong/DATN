<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductType extends Model
{
    protected $table = 'product_types_tb';
    protected $guarded = ['id'];
    protected $timestamp = true;

    public function products(){
        return $this->hasMany('App\Models\Product');
    }
}
