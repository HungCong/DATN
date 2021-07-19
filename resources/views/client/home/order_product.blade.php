@extends('client.layouts.mainss')
@section('title','Order Product')
@section('content')
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(clients/images/bg/2.jpg) no-repeat scroll center center / cover ;">
        <div class="ht__bradcaump__wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="bradcaump__inner text-center">
                            <h2 class="bradcaump-title">Order Product</h2>
                            <nav class="bradcaump-inner">
                                <h2>{{$data->name}}</h2>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Checkout Area -->
    <section class="our-checkout-area ptb--120 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8">
                    <div class="ckeckout-left-sidebar">
                        <!-- Start Checkbox Area -->
                        <div class="checkout-form">
                            <h2 class="section-title-3">Information User</h2>
                            <form action="{{ route('home.post-order-product') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="hidden" name="id" value="{{$data->id}}">
                                <div class="checkout-form-inner">
                                    <div class="single-checkout-box">
                                        <input type="text" name="full_name" placeholder="Full Name*">
                                        <input type="text" name="phone" placeholder="Phone*">
                                    </div>
                                    <div class="single-checkout-box">
                                        <input type="email" name="email" placeholder="Email*">
                                    </div>
                                    <div class="single-checkout-box">
                                        <textarea name="message" placeholder="Message*"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-danger btn-lg">CONFIRM & BUY NOW</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4">
                    <div class="checkout-right-sidebar">
                        <div class="our-important-note">
                            <h2 class="section-title-3">Information Product</h2>
                            <p class="note-desc">{!!html_entity_decode($data->description)!!}</p>
                            <ul class="important-note">
                                <li><a><i class="zmdi zmdi-caret-right-circle"></i>Manufacturer Price: {{$data->manufacturer_price}}</a></li>
                                <li><a><i class="zmdi zmdi-caret-right-circle"></i>Price: {{number_format($data->price)}} </a></li>
                                <li><a href="#"><i class="zmdi zmdi-caret-right-circle"></i>Product type:  {{$data->productTypes->name}}</a></li>
                            </ul>
                        </div>
                        <div class="puick-contact-area mt--60">
                            <h2 class="section-title-3">Quick Contract</h2>
                            <a href="phone:+8801722889963">+012 345 678 102 </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Checkout Area -->
@endsection
@section('script1')
@endsection
