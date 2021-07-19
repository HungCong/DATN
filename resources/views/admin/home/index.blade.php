@extends('admin.layouts.main')
@section('title','Trang chủ')
@section('content')
<div class="animated fadeIn">
  <div class="row">
    <div class="col-lg-4 col-md-6">
      <a href="{{route('product.index')}}">
        <div class="card">
          <div class="card-body">
            <div class="stat-widget-five">
              <div class="stat-icon dib">
                <i class="ti-pulse"></i>
              </div>
              <div class="stat-content">
                <div class="text-left dib">
                  <div class="stat-text"><span class="count">{{$product_total}}</span></div>
                  <div class="stat-heading">Sản phẩm</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </a>

    <div class="col-lg-4 col-md-6">
      <div class="card">
        <a href="{{route('product.index')}}">
          <div class="card-body">
            <div class="stat-widget-five">
              <div class="stat-icon dib flat-color-2">
                <i class="fa fa-home"></i>
              </div>
              <div class="stat-content">
                <div class="text-left dib">
                  <div class="stat-text"><span class="count">{{$productTypes_total}}</span></div>
                  <div class="stat-heading">Loại sản phẩm</div>
                </div>
              </div>
            </div>
          </div>
        </a>
      </div>
    </div>





  <div class="col-lg-4 col-md-6">
    <a href="{{route('user.index')}}">
      <div class="card">
        <div class="card-body">
          <div class="stat-widget-five">
            <div class="stat-icon dib flat-color-4">
              <i class="pe-7s-users"></i>
            </div>
            <div class="stat-content">
              <div class="text-left dib">
                <div class="stat-text"><span class="count">{{$user_total}}</span></div>
                <div class="stat-heading">Tài khoản khách hàng</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </a>
  </div>
  <div class="col-lg-4 col-md-6">
    <a href="/">
      <div class="card">
        <div class="card-body">
          <div class="stat-widget-five">
            <div class="stat-icon dib flat-color-4">
              <i class="pe-7s-users" style="background-image: {{'../public/administration/images/money.jpg'}}"></i>
            </div>
            <div class="stat-content">
              <div class="text-left dib">
                <div class="stat-text"><span class="">{{(number_format($sum_MM))}} đ</span></div>
                <div class="stat-heading">Tổng doanh thu</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </a>
  </div>
    <div class="col-lg-4 col-md-6">
    <a href="/">
      <div class="card">
        <div class="card-body">
          <div class="stat-widget-five">
            <div class="stat-icon dib flat-color-4">
              <i class="pe-7s-users"></i>
            </div>
            <div class="stat-content">
              <div class="text-left dib">
                <div class="stat-text"><span class="count">{{$sum_order}}</span></div>
                <div class="stat-heading">Tổng phần mềm đã được mua</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </a>
  </div>
</div>
@endsection
@section('script')
<!-- Scripts -->
<!--Chartist Chart-->
<script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
<script src="admin/assets/js/init/weather-init.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
<script src="admin/assets/js/init/fullcalendar-init.js"></script>
@include('admin.shared.notification')
@endsection
