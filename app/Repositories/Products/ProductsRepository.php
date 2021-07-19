<?php
namespace App\Repositories\Products;

use App\Repositories\EloquentRepository;

class ProductsRepository extends EloquentRepository implements ProductsInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return \App\Models\Product::class;
    }

    public function countProductClient()
    {
        return $this->_model->where('isdeleted',0)->count();
    }


}
