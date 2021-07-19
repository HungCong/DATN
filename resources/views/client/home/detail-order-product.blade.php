@extends('client.layouts.mainss')
@section('title','History Product')
@section('content')
    <div class="container">
        <h1>Detail Order Product: {{$data->products->name}}</h1>
        <hr>
        <p>Order Code: {{$data->order_code}}</p>
        <p>Transaction Date: {{$data->transaction_date}}</p>
        <p>Full Name: {{$data->full_name}}</p>
        <p>Phone: {{$data->phone}}</p>
        <p>Email: {{$data->email}}</p>
        <p>Key Product: {{$data->key_product}}</p>
        <p>Total Amount: {{number_format($data->total_amount)}}</p>
        <p>Message: {{$data->message}}</p>
        <p>Status: @if($data->status == 0)
                Unconfirmed
            @else
                Confirmed
            @endif
        </p>
    </div>
@endsection
@section('script1')
@endsection
