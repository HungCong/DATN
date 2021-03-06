@extends('admin.layouts.main')
@section('title','Cập nhật tài khoản')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Cập nhật tài khoản {{$user->name}}</strong>
        </div>
        <div class="card-body">
          {!! Form::model($user, ['method' => 'PATCH','route' => ['admin.update', $user->id]]) !!}
          <input type="hidden" name="id" value="{{$user->id}}" placeholder=""> 
          <div class="form-group row">
            <div class="col-md-6 mt-2">
              {{ Form::label('Họ và tên','',['class' => 'font-weight-bold']) }}
              {!! Form::text('name', null, array('placeholder'=> 'Xin nhập họ và tên','class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('name')}}</span>
            </div>
            <div class="col-md-6 mt-2">
              {{ Form::label('Email','',['class' => 'font-weight-bold']) }}
              {!! Form::text('email', null, array('placeholder'=> 'Xin nhập email','class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('email')}}</span>
            </div>
            <div class="col-md-6">
              {{ Form::label(trans('acadmin.Password'),'',['class' => 'font-weight-bold']) }}
              {!! Form::password('password', array('placeholder'=> trans('placeholder.password'),'class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('password')}}</span>
            </div>
            <div class="col-md-6">
              {{ Form::label(trans('acadmin.ConfirmPassword'),'',['class' => 'font-weight-bold']) }}
              {!! Form::password('confirm-password', array('placeholder'=> trans('placeholder.Confipasswword'),'class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('confirm-password')}}</span>
            </div>
            <div class="col-md-12">
              {{ Form::label('Nhóm quyền','',['class' => 'font-weight-bold']) }}
               {!! Form::select('roles[]', $roles,$userRole, array('class' => 'form-control','multiple')) !!}
              <span class="text-danger">{{ $errors->first('roles')}}</span>
            </div>
          </div>
        </div>
        <div class="card-footer">
          {{ Form::submit('Cập nhật',['class' => 'btn btn-primary']) }}
          <a class="btn btn-outline-secondary" href="{{route('admin.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
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
