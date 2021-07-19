<?php

namespace App\Http\Controllers\Admin;

use App\Models\ProductType;
use App\Repositories\ProductTypes\ProductTypeInterface;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class ProductTypeController extends Controller
{
    protected $productTypeRP;
    public function __construct(ProductTypeInterface $productTypeRepository)
    {
        $this->productTypeRP = $productTypeRepository;
    }
    public function index()
    {
        $productTypes = $this->productTypeRP->getAll();
        return view('admin.producttype.index', compact('productTypes'));
    }

    public function create()
    {
        return view('admin.producttype.create');
    }

    public function store(Request $request)
    {
        $data = new ProductType([
            'name' => $request->name,
            'description' => $request->description,
            'isdeleted' => false,
            'created_by' =>  Auth::user()->id,
            'updated_by' =>  Auth::user()->id,
        ]);
        $result = $this->productTypeRP->create($data->toArray());
        if ($result){
            return redirect()->route('producttype.index')->with('message', trans('message.success-create'));
        }else{
            return back()->with('message',trans('message.save_error'));
        }
    }

    public function show($id)
    {
        $productType = $this->productTypeRP->find($id);
        return view('admin.producttype.detail', compact('productType'));
    }

    public function edit($id)
    {
        $productType = $this->productTypeRP->find($id);
        return view('admin.producttype.edit', compact('productType'));
    }

    public function update(Request $request, $id)
    {
        $productType = $this->productTypeRP->find($id);
        $productType->name = $request->name;
        $productType->description = $request->description;
        $productType->updated_by = Auth::user()->id;
        $result = $this->productTypeRP->update($id, $productType->toArray());
        if ($result){
            return redirect()->route('producttype.index')->with('message', trans('message.success-edit'));
        }else{
            return back()->with('message',trans('message.update_error'));
        }
    }

    public function destroy(Request $request)
    {
        $productType = $this->productTypeRP->find($request->id);
        $productType->isdeleted = true;
        $result = $this->productTypeRP->update($productType->id, $productType->toArray());
        if ($result) {
            return back()->with('message', trans('message.success-delete'));;
        } else {
            return back()->with('message',trans('message.delete_failse'));
        }
    }
}
