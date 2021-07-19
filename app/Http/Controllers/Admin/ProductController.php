<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\Helper;
use App\Models\Product;
use App\Repositories\Products\ProductsInterface;
use App\Repositories\ProductTypes\ProductTypeInterface;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    protected $productRP;
    protected $productTypeRP;

    public function __construct(ProductsInterface $productRepository, ProductTypeInterface $productTypeRepository)
    {
        $this->productRP = $productRepository;
        $this->productTypeRP = $productTypeRepository;
    }

    public function index()
    {
        $products = $this->productRP->getAll();
        return view('admin.products.index', compact('products'));
    }

    public function create()
    {
        $productTypes = $this->productTypeRP->getPluck('name','id');
        return view('admin.products.create',compact('productTypes'));
    }

    public function store(Request $request)
    {

        $imageName = 'default.png';
        if($request->hasFile('image'))
        {
            $helper = new Helper();
            $imageName = $helper->uploadFile(request('image'));
        }
        $dataProduct = new Product();
        $dataProduct->name = $request->name;
        $dataProduct->description = $request->description;
        $dataProduct->thumbnail = $imageName;
        $dataProduct->price = $request->price;
        $dataProduct->manufacturer_price = $request->manufacturer_price;
        $dataProduct->product_type_id = $request->product_type_id_;
        $dataProduct->status = $request->status;
        $dataProduct->isdeleted = false;
        $dataProduct->created_by = Auth::user()->id;
        $dataProduct->updated_by = Auth::user()->id;

        $result = $this->productRP->create($dataProduct->toArray());
        if ($result){
            return redirect()->route('product.index')->with('message', trans('message.success-create'));
        }else{
            return back()->with('message',trans('message.save_error'));
        }
    }

    public function show($id)
    {
        $product = $this->productRP->find($id);
        return view('admin.products.detail',compact('product'));
    }


    public function edit($id)
    {
        $product = $this->productRP->find($id);
        $productTypes = $this->productTypeRP->getPluck('name','id');
        return view('admin.products.edit',compact('product','productTypes'));
    }

    public function update(Request $request, $id)
    {

        $product = $this->productRP->find($id);
        $imageName = $product->thumbnail;

        if($request->hasFile('image')){
            $helper = new Helper();
            $imageName = $helper->uploadFile(request('image'));
        }
        $product->name = $request->name;
        $product->description = $request->description;
        $product->thumbnail = $imageName;
        $product->price = $request->price;
        $product->manufacturer_price = $request->manufacturer_price;
        $product->product_type_id = $request->product_type_id_;
        $product->status = $request->status;
        $product->updated_by = Auth::user()->id;
        $result = $this->productRP->update($id, $product->toArray());
        if ($result){
            return redirect()->route('product.index')->with('message', trans('message.success-edit'));
        }else{
            return back()->with('message',trans('message.update_error'));
        }
    }


    public function destroy(Request $request)
    {
        //$product = $this->productRP->find($request->id);
        //$product->isdeleted = true;
        //$result = $this->productRP->update($product->id, $product->toArray());
        //if ($result) {
            //return back()->with('message', trans('message.success-delete'));
        //} else {
           // return back()->with('message',trans('message.delete_failse'));
        //}
		$result = $this->productRP->delete($request->id);
		if ($result) return back()->with('message', trans('message.success-delete'));;
        return back()->with('message',trans('message.delete_failse'));
    }
}
