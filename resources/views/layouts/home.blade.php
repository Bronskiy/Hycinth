<!DOCTYPE html>
<html>
<head>
	<title></title>


	<link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/animate.css')}}">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/flexslider.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/bootstrap-datetimepicker.min.css')}}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/styles.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/frontend/css/responsive.css')}}">
</head>
<body class="{{\Request::route()->getName() === 'vendor_detail_page' ? 'gray-bg' : ''}}">
	 
@if(\Request::route()->getName() =="homepage" || \Request::route()->getName() =="homepage2")
@include('includes.header')
@else
@include('includes.inner_header')

@endif

@yield('content')

@include('includes.footer')

  <!-- Scripting starts here -->
    <!-- <script src="https://code.jquery.com/jquery-3.1.0.js"></script> -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script src="{{url('/frontend/js/animation.js')}}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.21.0/moment.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="{{url('/frontend/js/bootstrap-datetimepicker.min.js')}}"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/jquery.flexslider.min.js"></script>
    <script type="text/javascript" src="{{url('/frontend/js/owl.carousel.min.js')}}"></script>
    <script src="https://yauzer.com/js/validate.min.js"></script>
    <script type="text/javascript" src="{{url('/frontend/js/custom.js')}}"></script>
    <script> 
        AOS.init();
    </script>
    <script>
        //Photos flex slider 
$(window).load(function() {
  // The slider being synced must be initialized first
  $('#Photo-carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 165,
    itemMargin: 5,
    maxItems: 6,
    asNavFor: '#Photo-slider'
  });
 
  $('#Photo-slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#Photo-carousel"
  });


  // The slider being synced must be initialized first
  $('#Video-carousel').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    itemWidth: 210,
    itemMargin: 5,
    asNavFor: '#Video-slider'
  });
 
  $('#Video-slider').flexslider({
    animation: "slide",
    controlNav: false,
    animationLoop: false,
    slideshow: false,
    sync: "#Video-carousel"
  });

});

  
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        
    </script>
@yield('scripts')

</body>

</html>