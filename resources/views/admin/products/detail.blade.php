@extends('admin.layouts.main')
@section('title','Chi tiết sản phẩm')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Chi tiết sản phẩm {{$product->name}}</strong>
        </div>
        <div class="card-body">
          <div class="row">
            <div class="col-md-7">
              <div class="row">
                <div class="col-md-12">
                  <p class="font-weight-bold">Tên sản phẩm: {{$product->name}}</p>
                  <p class="font-weight-bold">Loại sản phẩm: {{$product->productTypes->name}}</p>
                    <p class="font-weight-bold">Giá: {{$product->price}}</p>
                    <p class="font-weight-bold">Giá nhà sản phẩm {{$product->manufacturer_price}}</p>
                  <p class="font-weight-bold">Trạng thái:
                    @if($product->status == '0')
                        Hiển thị
                    @else
                        Không hiển thị
                    @endif
                  </p>
                </div>
              </div>
               <p class="font-weight-bold">
              @if($product->createByAdmin->name)
                       Người tạo : {{$product->createByAdmin->name}} Create on :
              {{date('H:i | d/m/Y',strtotime($product->created_at))}}
              @endif
              <p class="font-weight-bold">
                @if($product->updateByAdmin->name)
                Người cập nhật : {{$product->updateByAdmin->name}} Update ON :
                {{date('H:i | d/m/Y',strtotime($product->updated_at))}}
                @endif
              </p>
            </div>
            <div class="col-md-5">
                <label for="image" class=" form-control-label font-weight-bold">Ảnh<span class="text text-danger"></span></label><br/>
                <div class="col-12">
                  <img class="mt-3 img-thumbnail" id="preview_avatar" src="{{ asset('administration/imageRooms').'/'.$product->thumbnail }}" alt="Photo avatar" style="height: 250px;" >
                </div>
              </div>
            </div>
            <p class="font-weight-bold">: {!!html_entity_decode($product->description)!!}</p>
          </div>
          <div class="card-footer">
            <a class="btn btn-outline-secondary" href="{{route('product.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>
  @endsection
  @section('script')
  @endsection
