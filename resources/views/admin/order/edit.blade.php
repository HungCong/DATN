@extends('admin.layouts.main')
@section('title','Xác nhận đơn hàng')
@section('content')
    <div class="animated fadeIn">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <strong class="card-title">Xác nhận đơn hàng {{$data->order_code}}</strong>
                    </div>
                    <div class="card-body">
                        {{ Form::open(['route' => ['order.update',$data->id], 'method' => 'put','enctype '=>'multipart/form-data']) }}
                        {{--<input type="hidden" name="order_code" value="{{$data->order_code}}" placeholder="">
                        <input type="hidden" name="transaction_date" value="{{$data->transaction_date}}" placeholder="">
                        <input type="hidden" name="full_name" value="{{$data->full_name}}" placeholder="">
                        <input type="hidden" name="phone" value="{{$data->phone}}" placeholder="">
                        <input type="hidden" name="email" value="{{$data->email}}" placeholder="">
                        <input type="hidden" name="total_amount" value="{{$data->total_amount}}" placeholder="">
                        <input type="hidden" name="message" value="{{$data->message}}" placeholder="">
                        <input type="hidden" name="product_id" value="{{$data->product_id }}" placeholder="">
                        <input type="hidden" name="isdeleted" value="{{$data->isdeleted}}" placeholder="">
                        <input type="hidden" name="created_by" value="{{$data->created_by}}" placeholder="">
                        <input type="hidden" name="created_at" value="{{$data->created_at}}" placeholder="">--}}
                        <div class="form-group row">
                            <div class="col-md-6">
                                {{ Form::label('Key sản phẩn','',['class' => 'font-weight-bold']) }}
                                {{ Form::text('key_product', null, ['class' => 'form-control','placeholder'=> 'xin nhập key sản phẩm','required' ]) }}
                                <span class="text-danger">{{ $errors->first('key_product')}}</span>
                            </div>

                            <div class="col-md-6">
                                {{ Form::label('Trạng thái','',['class' => 'font-weight-bold']) }}
                                {{ Form::select('status', array('0' => 'Chưa thanh toán', '1' => 'Đã thanh toán'),$data->status,['class' => 'form-control','required'=>'required'])}}
                                <span class="text-danger">{{ $errors->first('status')}} </span>
                            </div>
                        </div>

                    </div>
                    <div class="card-footer">
                        {{ Form::submit('Cập nhật',['class' => 'btn btn-primary']) }}
                        <a class="btn btn-outline-secondary" href="{{route('order.index')}}"><i class="fa fa-undo" aria-hidden="true"></i></a>
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
