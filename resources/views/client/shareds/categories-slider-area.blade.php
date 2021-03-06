<section class="categories-slider-area bg__white">
    <div class="container">
        <div class="row">
            <!-- Start Left Feature -->
            <div class="col-md-9 col-lg-9 col-sm-8 col-xs-12 float-left-style">
                <!-- Start Slider Area -->
                <div class="slider__container slider--one">
                    <div class="slider__activation__wrap owl-carousel owl-theme">
                        <!-- Start Single Slide -->
                        <div class="slide slider__full--screen slider-height-inherit slider-text-right" style="background: rgba(0, 0, 0, 0) url(../public/clients/images/slider/bg/banner01.png) no-repeat scroll center center / cover ;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-10 col-lg-8 col-md-offset-2 col-lg-offset-4 col-sm-12 col-xs-12">
                                        <div class="slider__inner">
                                            <h1>New Product <span class="text--theme">Collection</span></h1>
                                            <div class="slider__btn">
                                                {{-- <a class="htc__btn" href="cart.html">shop now</a> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Slide -->
                        <!-- Start Single Slide -->
                        <div class="slide slider__full--screen slider-height-inherit  slider-text-left" style="background: rgba(0, 0, 0, 0) url(../public/clients/images/slider/bg/banner02.png) no-repeat scroll center center / cover ;">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-8 col-lg-8 col-sm-12 col-xs-12">
                                        <div class="slider__inner">
                                            <h1>New Product <span class="text--theme">Collection</span></h1>
                                            <div class="slider__btn">
                                                {{-- <a class="htc__btn" href="cart.html">shop now</a> --}}
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <!-- End Single Slide -->
                    </div>

                </div>
                <!-- Start Slider Area -->

            </div>
            
            

            <div class="col-md-3 col-lg-3 col-sm-4 col-xs-12 float-right-style">
                <div class="categories-menu mrg-xs">
                    <div class="category-heading">
                        <h3> Danh m???c s???n ph???m</h3>
                    </div>
                    <div class="category-menu-list">
                        <ul>
                            @foreach($product_type as $value)
                                <li><a href="./detail-product-for-product-type/{{$value->id}}"><img alt="" src="images/icons/thum7.png">{{$value->name}}</a></li>
                            @endforeach
                        </ul>
                    </div>
                    
                </div>
            </div>
            <!-- End Left Feature -->
        </div>
    </div>
</section>
