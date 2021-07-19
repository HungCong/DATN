@extends('admin.layouts.main')
@section('title','Danh sách tài khoản người dùng')
@section('content')
<div class="animated fadeIn">
  <div class="row">

    <div class="col-md-12">
      <div class="card">
        <div class="card-header">
          <strong class="card-title">Danh sách tài khoản người dùng</strong>
        </div>
        <div class="card-body">
          <table id="bootstrap-data-table" class="table  table-hover table-bordered table-striped ">
            <thead>
              <tr>
                <th>{{trans('user.stt')}}</th>
                <th>Tài khoản</th>
                <th>{{trans('user.Email')}}</th>
                <th>Trạng thái</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              @foreach($users as $key => $data)
              <tr>
                <td>{{++$key}}</td>
                <td>{{$data->username}}</td>
                <td>{{$data->email}}</td>
                 <td>
                  <form id="data_status_edit" action="{{route('user.editStatus', ['id'=>$data->id])}}" method="post" enctype="multipart/form-data" class="form-horizontal" data-parsley-validate="">
                    @csrf
                    @if($data->status == 0)
                    <select style="padding: 0px;font-size: 15px;" name="status" id="booking_status" class="form-control" data-parsley-trigger="change">
                      <option value="0" selected="selected" >Hoạt động</option>
                      <option value="1">Không hoạt động</option>
                    </select>
                     @can('user-edit')
                    <button type="submit"  class="btn btn-primary btn-sm">
                      <i class="fa fa-dot-circle-o"></i> Thay đổi
                    </button>
                    @endcan
                    @else
                    <select style="padding: 0px;font-size: 15px; " name="status" id="booking_status" class="form-control" data-parsley-trigger="change">
                      <option value="0"  >Hoạt động</option>
                      <option value="1" selected="selected">Không hoạt động</option>
                    </select>
                    @can('user-edit')
                    <button type="submit"  class="btn btn-primary btn-sm btn-op">
                      <i class="fa fa-dot-circle-o"></i> Thay đổi
                    </button>
                    @endcan
                    @endif
                  </form>
                </td>
                <td width="100" class="text-center">
                  @can('user-show')
                  <a href="{{route('user.show',$data->id)}}"><i class="fa fa-tripadvisor"></i></a>
                  @endcan
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
{{Form::open(['route' => ['user_delete'], 'method' => 'DELETE'])}}
@include('admin.modal.modaldelete')
{{ Form::close() }}
@endsection
@section('script')
@include('admin.shared.notification')
@endsection
