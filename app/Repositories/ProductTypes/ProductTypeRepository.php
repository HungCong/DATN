<?php
namespace App\Repositories\ProductTypes;

use App\Repositories\EloquentRepository;

class ProductTypeRepository extends EloquentRepository implements ProductTypeInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return \App\Models\ProductType::class;
    }

    public function countProductTypeClient()
    {
        return $this->_model->where('isdeleted',0)->count();
    }
}
