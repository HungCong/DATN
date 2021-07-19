@extends('admin.layouts.main')
@section('title','Tạo mới tài khoản admin')
@section('content')

<div class="animated fadeIn">
  <div class="row">
    <div class="col-md-12">
      <div class="card show">
        <div class="card-header">
          <strong class="card-title">Tạo mới tài khoản</strong>
        </div>
        <div class="card-body">
          {!! Form::open(array('route' => 'admin.store','method'=>'POST')) !!}
          <div class="form-group row">
            <div class="col-md-6 mt-2">
              {{ Form::label('Họ và tên','',['class' => 'font-weight-bold']) }}
              {!! Form::text('name', null, array('placeholder'=> 'Xin nhập họ và tên','class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('name')}}</span>
            </div>
            <div class="col-md-6 mt-2">
              {{ Form::label(trans('acadmin.Email'),'',['class' => 'font-weight-bold']) }}
              {!! Form::text('email', null, array('placeholder'=> 'Xin nhập email','class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('email')}}</span>
            </div>
            <div class="col-md-6 mt-2">
              {{ Form::label(trans('acadmin.Password'),'',['class' => 'font-weight-bold']) }}
              {!! Form::password('password', array('placeholder'=> trans('placeholder.password'),'class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('password')}}</span>
            </div>
            <div class="col-md-6 mt-2">
              {{ Form::label(trans('acadmin.ConfirmPassword'),'',['class' => 'font-weight-bold']) }}
              {!! Form::password('confirm-password', array('placeholder'=> trans('placeholder.Confipasswword'),'class' => 'form-control')) !!}
              <span class="text-danger">{{ $errors->first('confirm-password')}}</span>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 mt-2">
                <div class="form-group">
                    <strong>Nhóm Quyền</strong>
                    {!! Form::select('roles[]', $roles,[], array('class' => 'form-control','multiple')) !!}
                </div>
            </div>
          </div>
        </div>
        <div class="card-footer">
         {{ Form::submit('Lưu',['class' => 'btn btn-primary']) }}
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
