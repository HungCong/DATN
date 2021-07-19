@extends('admin.layouts.main')
@section('title','Chi tiết loại sản phẩm')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Chi tiết loại sản phẩm {{$productType->name}}</strong>
        </div>
        <div class="card-body">
          <div class="col-md-12">
            <p class="font-weight-bold">Tên loại sản phẩm : {{$productType->name}}</p>
              <p class="font-weight-bold">Mô tả : {{$productType->description}}</p>
          </div>
        </div>

        <div class="card-footer">
          <a class="btn btn-outline-secondary" href="{{route('producttype.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@section('script')
@include('admin.shared.notification')
@endsection
