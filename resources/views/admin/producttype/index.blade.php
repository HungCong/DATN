@extends('admin.layouts.main')
@section('title','Danh sách thể loại sản phẩm')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Danh sách thể loại sản phẩm </strong>
          <a class="btn btn-primary btn-sm ml-2" href="{{route('producttype.create')}}"><i class="fa fa-plus"></i> Thêm mới</a>
        </div>
        <div class="card-body">
          <table id="bootstrap-data-table" class="table table-striped table-bordered table-hover">
            <thead>
              <tr>
                <th>Stt</th>
                <th>Tên thể loại</th>
                <th>Mô tả</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              @foreach($productTypes as $key => $data)
              <tr>
                <td>{{++$key}}</td>
                <td>{{$data->name}}</td>
                <td>{{  substr(strip_tags($data->description), 0, 20)."..." }}</td>
                <td width="100" class="text-center">

                  <a href="{{route('producttype.show',$data->id)}}"><i class="fa fa-tripadvisor"></i></a>

                  <a type="button" class="fa fa-trash deletebutton btn" data-id="{{$data->id}}" data-toggle="modal" data-target="#Modal" >
                  </a>


                  <a href="{{route('producttype.edit',$data->id)}}" class="ml-1"><i class="fa fa-pencil"></i></a>

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
{{Form::open(['route' => ['producttype_delete'], 'method' => 'DELETE'])}}
@include('admin.modal.modaldelete')
{{ Form::close() }}
@endsection
@section('script')
@include('admin.shared.scriptModalDialog')
@include('admin.shared.notification')
@endsection
