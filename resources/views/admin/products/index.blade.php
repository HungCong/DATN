@extends('admin.layouts.main')
@section('title','Danh sách sản phẩm')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Danh sách sản phẩm</strong>
          <a class="btn btn-primary btn-sm" href="{{route('product.create')}}"><i class="fa fa-plus"></i> Thêm mới</a>
        </div>
        <div class="card-body">
          <table id="bootstrap-data-table" class="table table-hover table-bordered">
            <thead>
              <tr>
                <th>Stt</th>
                <th>Tên sản phẩm</th>
                <th>Loại sản phẩm</th>
                <th>Giá</th>
                <th>Trạng thái</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              @foreach($products as $key => $data)
              <tr>
                <td>{{++$key}}</td>
                <td>{{$data->name}}</td>
                <td>{{$data->productTypes->name}}</td>
                <td>{{$data->price}}</td>
                <td>
                  @if($data->status == '0')
                    <span class="badge badge-success">Hiển thị</span>
                  @else
                    <span class="badge badge-danger"> Không hiển thị</span>
                  @endif
                </td>
                <td width="100px" class="text-center">

                  <a href="{{route('product.show',$data->id)}}"><i class="fa fa-tripadvisor"></i></a>

                  <a type="button" class="fa fa-trash deletebutton btn" data-id="{{$data->id}}" data-toggle="modal" data-target="#Modal" ></a>

                  <a href="{{route('product.edit',$data->id)}}" class="ml-1"><i class="fa fa-pencil"></i></a>

                </td>
              </tr>
              @endforeach
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
{{Form::open(['route' => ['product_delete'], 'method' => 'DELETE'])}}
@include('admin.modal.modaldelete')
{{ Form::close() }}
@endsection
@section('script')
@include('admin.shared.notification')
@endsection
