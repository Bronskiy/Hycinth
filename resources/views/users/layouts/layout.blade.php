<!DOCTYPE html>
<html>
<head>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
   <link href='https://fonts.googleapis.com/css?family=Varela' rel='stylesheet'>
   <link rel="stylesheet" type="text/css" href="{{url('frontend/css/user-custom.css')}}">
   <title> User Dashboard</title>
</head>
<body>






<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="{{url('/')}}">Envision</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

      <ul class="nav navbar-nav navbar-right">




                    <li><a href="{{url('/')}}">Home</a></li>
                   <li><a href="javascript:void(0);" data-toggle="modal" data-target="#VenuesCategoriesModal">Businesses</a></li>
            
                    <li><a href="{{url('/vendor/register')}}">New Vendors</a></li>
                    <li>
                        <a href="javascript:void(0);"><i class="fas fa-heart"></i></a>
                    </li>
                    <li>
                        <a href="javascript:void(0);"><i class="fas fa-envelope"></i></a>
                    </li>
                        
                       
                   

       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{Auth::user()->name}}<b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="{{url(route(Auth::user()->role.'_dashboard'))}}">Dashboard</a></li>
           
           
            <li class="divider"></li>
            <li><a href="{{url('/logout')}}">Logout</a></li>
          </ul>
        </li>
                        
 


     
      </ul>
    </div>
    <!-- /.navbar-collapse -->
  </div>
  <!-- /.container-collapse -->
</nav>
 
<div class="container breadcrumb-sektion ">
  <ol class="breadcrumb">
    <li><a href="{{url(route('user_dashboard'))}}">Dashboard</a></li>
     
  </ol>
</div>

<div class="listingview-sidebar-sektion">
  <div class="container">
  <div class="row">
     @include('users.includes.sidebar')
    <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 content">
      <div class="content-area ">
        @yield('content')
        <!-- END PRODUCTS -->
     </div>
    </div>
   </div>
  </div>
</div>


 

<div class="footer-section">
  <div class="footer-top">
    <div class="container">
      <div class="row text-center">
        <div class="col-md-12">
          <h2>Learn almost anything </h2>
        </div>
        <div class="col-md-12">
          <p>Stay in the loop on all upcoming promotions, discounts and latest updates </p>
          <button type="button" class="btn btn-primary site-btn1">Primary</button>
        </div>
      </div>
    </div>
  </div>
 
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-sm-6 ">
          <div class="copyright-text">
            <p>CopyRight © 2017 Digital All Rights Reserved</p>
          </div>
        </div>
        <!-- End Col -->
        <div class="col-sm-6 ">
          <div class="bigpixi-footer-social pull-right">
            <ul>
              <li class="bigpixi-footer-social__list-item">
                <a class="bigpixi-footer__icon-link" rel="nofollow" href="https://twitter.com/">
              <img class="bigpixi-footer-social__icon" alt="Twitter" title="Twitter" src="http://simpleicons.org/icons/twitter.svg">
</a> </li>
              <li class="bigpixi-footer-social__list-item">
                <a class="bigpixi-footer__icon-link" rel="nofollow" href="https://www.facebook.com/">
              <img class="bigpixi-footer-social__icon" alt="Facebook" title="Facebook" src="http://simpleicons.org/icons/facebook.svg">
</a> </li>
              <li class="bigpixi-footer-social__list-item">
                <a class="bigpixi-footer__icon-link" rel="nofollow" href="https://www.youtube.com/">
              <img class="bigpixi-footer-social__icon" alt="YouTube" title="YouTube" src="http://simpleicons.org/icons/youtube.svg">
</a> </li>
              <li class="bigpixi-footer-social__list-item">
                <a class="bigpixi-footer__icon-link" rel="nofollow" href="https://www.instagram.com/">
              <img class="bigpixi-footer-social__icon" alt="Instagram" title="Instagram" src="http://simpleicons.org/icons/instagram.svg">
</a> </li>
              <li class="bigpixi-footer-social__list-item">
                <a class="bigpixi-footer__icon-link" rel="nofollow" href="https://www.pinterest.com/">
              <img class="bigpixi-footer-social__icon" alt="Pinterest" title="Pinterest" src="http://simpleicons.org/icons/pinterest.svg">
</a> </li>
            </ul>
          </div>

        </div>
        <!-- End Col -->
      </div>
    </div>
  </div>
</div>



















</body>
</html>