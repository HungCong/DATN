@extends('admin.layouts.main')
@section('title','Danh sách đặt hàng')
@section('content')
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Danh sách đặt hàng</strong>
                    </div>
                    <div class="card-body">
                        <table id="bootstrap-data-table" class="table table-hover table-bordered">
                            <thead>
                            <tr>
                                <th>Stt</th>
                                <th>Tên sản phẩm</th>
                                <th>Mã đơn hàng</th>
                                <th>Ngày đặt</th>
                                <th>Họ và tên</th>
                                <th>Số điện thoại</th>
                                <th>Email</th>
                                <th>Key Sản phẩn</th>
                                <th>Tổng tiền</th>
                                <th>Trạng thái</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($orders as $key => $data)
                                <tr>
                                    <td>{{++$key}}</td>
                                    <td>{{$data->products->name}}</td>
                                    <td>{{$data->order_code}}</td>
                                    <td>{{$data->transaction_date}}</td>
                                    <td>{{$data->full_name}}</td>
                                    <td>{{$data->phone}}</td>
                                    <td>{{$data->email}}</td>
                                    <td>{{$data->key_product}}</td>
                                    <td>{{$data->total_amount}}</td>
                                    <td>
                                        @if($data->status == 0)
                                            <span class="badge badge-success">Chưa xác nhận</span>
                                        @else
                                            <span class="badge badge-danger">Đã xác nhận</span>
                                        @endif
                                    </td>
                                    <td width="100px" class="text-center">

                                        <a href="{{route('order.show',$data->id)}}"><i class="fa fa-tripadvisor"></i></a>

                                        <a href="{{route('order.edit',$data->id)}}" class="ml-1"><i class="fa fa-pencil"></i></a>

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
@endsection
@section('script')
    @include('admin.shared.notification')
@endsection
