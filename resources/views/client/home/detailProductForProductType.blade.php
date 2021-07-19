@extends('client.layouts.mainss')
@section('title','All Product For Product Types')
@section('content')
    <section class="htc__blog__area bg__white pb--130">
        <br/>
        <br/>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="section__title section__title--2 text-center">
                        <h2 class="title__line text-left">{{$nameProductType->name}}</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="blog__wrap clearfix mt--60 xmt-30">
            @foreach($data as $value)

                        <!-- Start Single Blog -->
                        <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog foo">
                                <div class="blog__inner">
                                    <div class="blog__thumb">
                                        <a href="./detail-product/{{$value->id}}">
                                            <img src="{{ asset('administration/imageRooms').'/'.$value->thumbnail }}" alt="blog images">
                                        </a>
                                        {{--<div class="blog__post__time">
                                            <div class="post__time--inner">
                                                <span class="date">14</span>
                                                <span class="month">sep</span>
                                            </div>
                                        </div>--}}
                                    </div>
                                    <div class="blog__hover__info bg-danger">
                                        <div class="blog__hover__action">
                                            <p class="blog__des"><a href="./detail-product/{{$value->id}}">{{$value->name}}</a></p>
                                            <ul class="bl__meta">
                                                <li>Giá bán: <a href="./detail-product/{{$value->id}}">{{number_format($value->price)}} </a></li>
                                                <li style="text-decoration: line-through;">Nguyên giá: {{number_format($value->manufacturer_price)}}</li>
                                            </ul>
                                            <div class="blog__btn">
                                                <a class="read__more__btn" href="./detail-product/{{$value->id}}">see detail</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Blog -->

            @endforeach
                </div>
            </div>
        </div>
    </section>
@endsection
@section('script1')
@endsection
