@extends('admin.layouts.main')
@section('title','Tạo mới thể loại')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card show">
        <div class="card-header">
          <strong class="card-title">Tạo mới thể loại</strong>
        </div>
        <div class="card-body">
          {{ Form::open(['route' => 'producttype.store', 'method' => 'post','enctype '=>'multipart/form-data']) }}
          <div class="form-group row">
            <div class="col-md-12  mt-2">
              {{ Form::label('Tên thể loại','',['class' => 'font-weight-bold']) }}
              {{ Form::text('name', null, ['class' => 'form-control','placeholder'=> 'Xin nhập tên thể loại...', 'required' ]) }}
              <span class="text-danger">{{ $errors->first('name')}}</span>
            </div>
            <div class="col-md-12 mt-2">
              {{ Form::label('Mô tả','',['class' => 'font-weight-bold']) }}
              {{ Form::textarea('description', null, ['class' => 'form-control' ,'placeholder'=> 'Xin nhập mô tả...','required' ]) }}
              <span class="text-danger">{{ $errors->first('description')}} </span>
            </div>
          </div>
        </div>
        <div class="card-footer">
          {{ Form::submit('Lưu',['class' => 'btn btn-primary']) }}
          <a class="btn btn-outline-secondary" href="{{route('producttype.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
        </div>
        {{ Form::close() }}
      </div>
    </div>
  </div>
</div>
@endsection
@section('script')
@include('admin.shared.notification')
@endsection
