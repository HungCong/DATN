@extends('client.layouts.mainss')
@section('title','History Product')
@section('content')
    <div class="container">
        <h1>History Order</h1>
        <hr>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Product</th>
                <th scope="col">Order Code</th>
                <th scope="col">Transaction Date</th>
                <th scope="col">Full Name</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Key Product</th>
                <th scope="col">Total Amount</th>
                <th scope="col">Status</th>
                <th scope="col">Tools</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                @foreach($data as $value)
                    <td>1</td>
                    <td>{{$value->products->name}}</td>
                    <td>{{$value->order_code}}</td>
                    <td>{{$value->transaction_date}}</td>
                    <td>{{$value->full_name}}</td>
                    <td>{{$value->phone}}</td>
                    <td>{{$value->email}}</td>
                    <td>{{$value->key_product}}</td>
                    <td>{{number_format($value->total_amount)}}</td>
                    <td>
                        @if($value->status == 0)
                            Unconfirmed
                        @else
                            Confirmed
                        @endif
                    </td>
                    <td><a href="./detail-order-product/{{$value->id}}">See detail</a></td>
                @endforeach
            </tr>
            </tbody>
        </table>
    </div>
@endsection
@section('script1')
@endsection
