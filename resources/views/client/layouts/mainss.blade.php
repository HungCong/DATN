<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <base href="{{asset('')}}">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>@yield('title')</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="../public/clients/images/uttlogo.png">
    <link rel="apple-touch-icon" href="../public/clients/images/uttlogo.png">


    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="clients/css/bootstrap.min.css">
    <!-- Owl Carousel main css -->
    <link rel="stylesheet" href="clients/css/owl.carousel.min.css">
    <link rel="stylesheet" href="clients/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="clients/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="clients/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="clients/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="clients/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="clients/css/custom.css">


    <!-- Modernizr JS -->
    <script src="clients/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Body main wrapper start -->
<div class="wrapper fixed__footer">
    <!-- Start Header Style -->
        @include('client.shareds.header')
    <!-- End Header Style -->
    <div class="body__overlay"></div>
    <!-- Start Offset Wrapper -->
        @include('client.shareds.offset__wrapper')
    <!-- End Offset Wrapper -->
    <!-- Start Bradcaump area -->
        @yield('content')
    <!-- End Our Blog Area -->

    <!-- Start Footer Area -->
        @include('client.shareds.htc__foooter__area')
    <!-- End Footer Area -->
</div>
<!-- Body main wrapper end -->
<!-- Placed js at the end of the document so the pages load faster -->

<!-- jquery latest version -->
<script src="clients/js/vendor/jquery-1.12.0.min.js"></script>
<!-- Bootstrap framework js -->
<script src="clients/js/bootstrap.min.js"></script>
<!-- All js plugins included in this file. -->
<script src="clients/js/plugins.js"></script>
<script src="clients/js/slick.min.js"></script>
<script src="clients/js/owl.carousel.min.js"></script>
<!-- Waypoints.min.js. -->
<script src="clients/js/waypoints.min.js"></script>
<!-- Main js file that contents all jQuery plugins activation. -->
<script src="clients/js/main.js"></script>

</body>

</html>
