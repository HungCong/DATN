@extends('client.layouts.mainss')
@section('title','Login')
@section('content')
    <div class="htc__login__register bg__white ptb--130" style="background: rgba(0, 0, 0, 0) url(clients/images/bg/5.jpg) no-repeat scroll center center / cover ;">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <ul class="login__register__menu" role="tablist">
                        <li role="presentation" class="login active"><a href="#login" role="tab" data-toggle="tab">Login</a></li>
                        <li role="presentation" class="register"><a href="#register" role="tab" data-toggle="tab">Register</a></li>
                    </ul>
                </div>
            </div>
            <!-- Start Login Register Content -->
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="htc__login__register__wrap">
                        <!-- Start Single Content -->
                        <div id="login" role="tabpanel" class="single__tabs__panel tab-pane fade in active">
                            <form class="login" action="{{ route('client.login') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <input type="text" name="email" placeholder="Email*">
                                <input type="password" name="password" placeholder="Password*">
                                <div class="htc__login__btn mt--30">
                                    <button type="submit" class="btn btn-danger btn-lg">Login</button>
                                </div>
                            </form>
                            {{--<div class="tabs__checkbox">
                                <input type="checkbox">
                                <span> Remember me</span>
                                <span class="forget"><a href="#">Forget Pasword?</a></span>
                            </div>--}}

                            <div class="htc__social__connect">
                                <h2>Or Login With</h2>
                                <ul class="htc__soaial__list">
                                    <li><a class="bg--twitter" href="./login"><i class="zmdi zmdi-twitter"></i></a></li>

                                    <li><a class="bg--instagram" href="./login"><i class="zmdi zmdi-instagram"></i></a></li>

                                    <li><a class="bg--facebook" href="./login"><i class="zmdi zmdi-facebook"></i></a></li>

                                    <li><a class="bg--googleplus" href="{{ url('auth/google') }}"><i class="zmdi zmdi-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Single Content -->
                        <!-- Start Single Content -->
                        <div id="register" role="tabpanel" class="single__tabs__panel tab-pane fade">
                            <form class="login" method="POST" action="{{ route('register') }}">
                            @csrf
                                <input type="text" name="name" placeholder="Name*">
                                @error('name')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <input type="email" name="email" placeholder="Email*">
                                @error('email')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <input type="password" name="password" placeholder="Password*">

                                @error('password')
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                                <input type="password" name="password_confirmation" placeholder="Confirmation Password*">
                                {!! NoCaptcha::renderJs() !!}
                                {!! NoCaptcha::display() !!}
                                <br>
                                <div class="htc__login__btn">
                                    <button type="submit" class="btn btn-danger btn-lg">register</button>
                                </div>
                            </form>
                            {{--<div class="tabs__checkbox">
                                <input type="checkbox">
                                <span> Remember me</span>
                            </div>--}}

                            <div class="htc__social__connect">
                                <h2>Or Login With</h2>
                                <ul class="htc__soaial__list">
                                    <li><a class="bg--twitter" href="./login"><i class="zmdi zmdi-twitter"></i></a></li>
                                    <li><a class="bg--instagram" href="./login"><i class="zmdi zmdi-instagram"></i></a></li>
                                    <li><a class="bg--facebook" href="./login"><i class="zmdi zmdi-facebook"></i></a></li>
                                    <li><a class="bg--googleplus" href="{{ url('auth/google') }}"><i class="zmdi zmdi-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- End Single Content -->
                    </div>
                </div>
            </div>
            <!-- End Login Register Content -->
        </div>
    </div>
@endsection
@section('script1')
@endsection
