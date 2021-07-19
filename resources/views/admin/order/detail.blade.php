@extends('admin.layouts.main')
@section('title','Chi tiết đơn đặt hàng')
@section('content')
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Chi tiết đơn đặt hàng {{$data->products->name}}</strong>
                    </div>
                    <div class="card-body">
                        <div class="col-md-12">
                            <p class="font-weight-bold">Mã đơn đặt: {{$data->order_code}}</p>
                            <p class="font-weight-bold">Ngày đặt hàng: {{$data->transaction_date}}</p>
                            <p class="font-weight-bold">Họ và tên: {{$data->full_name}}</p>
                            <p class="font-weight-bold">Số điện thoại: {{$data->phone}}</p>
                            <p class="font-weight-bold">Email : {{$data->email}}</p>
                            <p class="font-weight-bold">Key sản phẩm: {{$data->key_product}}</p>
                            <p class="font-weight-bold">Tổng tiền : {{$data->total_amount}}</p>
                            <p class="font-weight-bold">Ghi chú : {{$data->message}}</p>
                        </div>
                    </div>
                    <div class="card-footer">
                        <a class="btn btn-outline-secondary" href="{{route('order.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('script')
    @include('admin.shared.notification')
@endsection
