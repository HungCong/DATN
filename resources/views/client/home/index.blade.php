@extends('client.layouts.mains')
@section('title','Home')
@section('content')
    @foreach($data as $value)
        <section class="htc__blog__area bg__white pb--130">
            <br/>
            <br/>
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title section__title--2 text-center">
                            <h2 class="title__line text-left">{{$value->name}}</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="blog__wrap clearfix mt--60 xmt-30">
                @foreach($value->products as $values)
			@if($values->status == false && $values->isdeleted == false)

                            <!-- Start Single Blog -->
                            <div class="col-md-4 col-lg-4 col-sm-6 col-xs-12">
                                <div class="blog foo">
                                    <div class="blog__inner">
                                        <div class="blog__thumb">
                                            <a href="./detail-product/{{$values->id}}">
                                                <img src="{{ asset('administration/imageRooms').'/'.$values->thumbnail }}" alt="blog images">
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
                                                <p class="blog__des"><a href="./detail-product/{{$values->id}}">{{$values->name}}</a></p>
                                                <ul class="bl__meta">
                                                    <li>Giá bán: <a href="./detail-product/{{$values->id}}">{{number_format($values->price)}}</a></li>
                                                    <li style="text-decoration: line-through;">Nguyên giá: {{number_format($values->manufacturer_price)}}</li>
                                                </ul>
                                                <div class="blog__btn">
                                                    <a class="read__more__btn" href="./detail-product/{{$values->id}}">see detail</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Blog -->
			@endif
                @endforeach
                    </div>
                </div>
            </div>
        </section>
    @endforeach
@endsection
@section('script1')
@endsection
