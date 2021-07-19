<?php
namespace App\Repositories\Order;

use App\Repositories\EloquentRepository;

class OrderRepository extends EloquentRepository implements OrderInterface
{
    /**
     * get model
     * @return string
     */
    public function getModel()
    {
        return \App\Models\Orders::class;
    }

    public function countOrderClient()
    {
        return $this->_model->where('isdeleted',0)->count();
    }


}
