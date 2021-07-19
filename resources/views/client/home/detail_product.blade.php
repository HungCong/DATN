@extends('client.layouts.mainss')
@section('title','Detail Product')
@section('content')
    <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(clients/images/bg/2.jpg) no-repeat scroll center center / cover ;">
        <div class="ht__bradcaump__wrap">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="bradcaump__inner text-center">
                            <h2 class="bradcaump-title">Chi Tiết Sản Phẩm</h2>
                            <nav class="bradcaump-inner">
                                <a class="breadcrumb-item" href="./detail-product/{{$data->id}}"><h1>{{$data->name}}</h1></a>
                                {{--<span class="brd-separetor">/</span>
                                <span class="breadcrumb-item active">right sidebar</span>--}}
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start Our Blog Area -->
    <section class="blog-details-wrap ptb--120 bg__white">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                    <div class="blog-details-left-sidebar">
                        <div class="blog-details-top">
                            <!--Start Blog Thumb -->
                            <div class="blog-details-thumb-wrap">
                                <div class="blog-details-thumb">
                                    <img src="{{ asset('administration/imageRooms').'/'.$data->thumbnail }}" alt="blog images">
                                </div>
                                <a href="./order-product/{{$data->id}}">
                                <div class="upcoming-date">
                                    Now<span class="upc-mth">ORDER</span>
                                </div>
                                </a>
                            </div>
                            <!--End Blog Thumb -->
                            <h2>{{$data->name}}</h2>
                            <div class="blog-admin-and-comment">
                                <p style="color: red">Giá bán: <a style="color: red" href="./detail-product/{{$data->id}}">{{number_format($data->price)}}</a></p>
                                <p class="separator">|</p>
                                <p style="text-decoration: line-through;">Nguyên giá: {{number_format($data->manufacturer_price)}} </p>
                            </div>
                            <p style="color: red;">Lưu ý: Giá trên web có tính chất tham khảo, có thể tăng hoặc giảm so với hiện tại, Quý khách vui lòng liên hệ để có báo giá tốt nhất.</p>
                            <div>
                                <a class="btn btn-danger" href="./order-product/{{$data->id}}">Mua Ngay</a>
                                {{-- <a class="btn btn-default" href="./feedback">Nhận Báo Giá</a> --}}
                                <a class="btn btn-default" href="https://drive.google.com/file/d/1-PBNXsiBzSvOkszT0CLBzv_JixEf-q1d/view?usp=sharing" download>Dùng Thử</a>
                            </div>
                            <!-- Start Blog Pra -->
                            <div class="blog-details-pra">
                                <p>{!!html_entity_decode($data->description)!!}</p>
                                <blockquote>
                                    Dòng sản phẩm:  {{$data->productTypes->name}}
                                </blockquote>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-lg-4 col-sm-12 col-xs-12 smt-30 xmt-40">
                    <div class="blod-details-right-sidebar">
                        <!-- Start Category Area -->
                        <div class="our-category-area">
                            <h2 class="section-title-2">CATEGORY</h2>
                            <ul class="categore-menu">
                                @foreach($product_type as $value)
                                    <li><a href="./detail-product-for-product-type/{{$value->id}}"><i class="zmdi zmdi-caret-right"></i>{{$value->name}}</a></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
@section('script1')
@endsection
