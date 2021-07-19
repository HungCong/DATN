@extends('admin.layouts.main')
@section('title','Danh sách tài khoản khách hàng')
@section('content')
<div class="animated fadeIn">
  <div class="row">

    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Chi tiết tài khoản  {{$user->username}}</strong>
        </div>
        <div class="card-body row">
          <div class="col-md-7">
            <ul class="list-group">
              <li class="list-group-item">Họ và tên: {{$user->first_name}} {{$user->last_name}}</li>
              <li class="list-group-item">Tài khoản: {{$user->username}}</li>
              <li class="list-group-item">Giới tính:
               @if($user->gender == null)
               Nam
               @else
               Nữ
             @endif</li>
             <li class="list-group-item">{{trans('user.Email')}}: {{$user->email}}</li>
             <li class="list-group-item">Số điện thoại: {{$user->phone}}</li>
             <li class="list-group-item">Ngày sinh: {{date('d/m/Y',strtotime($user->dateofbirth))}}</li>
             <li class="list-group-item">Trạng thái:
              @if($user->status == '0')
              Đang hoạt động
              @else
              Không hoạt động
            @endif</li>
            <li class="list-group-item">@if($user->google_id)
              Tài khoản google
            @endif</li>
          </ul>
        </div>

        <div class="col-md-5">
          <img class="img-thumbnail" id="preview_avatar" src="@if ($user->image == null)
          client/images/user_default.png
          @else
          {{ asset('administration/imageRooms').'/'.$user->image }}
          @endif" alt="Photo avatar" >
        </div>
      </div>
      <div class="card-footer">
        <a class="btn btn-outline-secondary" href="{{route('user.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>

      </div>
    </div>
  </div>
</div>
</div>
</div>
@endsection
@section('script')
@endsection
