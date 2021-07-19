<?php

namespace App\Http\Controllers\Admin;

use App\Models\Orders;
use App\Repositories\Order\OrderInterface;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{
    protected $orderRP;
    protected $productTypeRP;

    public function __construct(OrderInterface $orderRepository)
    {
        $this->orderRP = $orderRepository;
    }

    public function index()
    {
        $orders = $this->orderRP->getAll();
        return view('admin.order.index', compact('orders'));
    }

    public function show($id)
    {
        $data = Orders::find($id);
        return view('admin.order.detail',compact('data'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $data = Orders::find($id);
        return view('admin.order.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $order = $this->orderRP->find($id);
        $order->status = (bool)$request->status;
        $order->key_product = $request->key_product;
        $order->updated_by = Auth::user()->id;
        $result = $this->orderRP->update($id, $order->toArray());
        // Gui mail
        Mail::send('email.order',[
            'name' => $order->products->name,
            'key_product' => $order->key_product,
        ], function($message) use ($order) {
            $message->to($order->email);
            $message->subject('Notification');
        });
        if ($result){
            return redirect()->route('order.index')->with('message', trans('message.success-edit'));
        }else{
            return back()->with('message',trans('message.update_error'));
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
