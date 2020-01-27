<!DOCTYPE html>
<html>

<head>
    <title>ENVISIUN</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, maximum-scale=1,initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link href="{{url('/e-shop/css/owl.carousel.min.css')}}" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/flexslider.min.css">
    <link rel="stylesheet" type="text/css" href="{{url('/e-shop/css/animate.css')}}">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{url('/e-shop/css/style.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/e-shop/css/responsive.css')}}">
    <link rel="stylesheet" type="text/css" href="{{url('/e-shop/css/custom.css')}}">
  <style type="text/css">
    .custom-loading {
       
        display: none;
    }
    
</style>
</head>

<body>

 <div class="pre-loader custom-loading">
       <div class="pre-loader-inner">
      <div class="predot white"></div>
      <div class="predot"></div>
      <div class="predot"></div>
       <div class="predot"></div>
       <div class="predot"></div>
   </div>
</div>
 
    <header class="Eshop-header">
        <!-- header starts here -->
      <nav class="navbar navbar-expand-lg d-f">
        <div class="top-head-bar">
            <div class="container">
               <div class="top-bar-content">
                   <a href="index.html" class="brand-name"><img src="{{url('/e-shop/images/logo.svg')}}"></a>

                     <ul class="head-top-filters ml-auto">
                         <li class="search-li mob-hide">
                            <form class="head-search">
                               <div class="form-group">
                                 <input type="text" id="" class="form-control" placeholder="Search" name="guest_capacity">
                                 <span class="input-icon"><i class="fas fa-search"></i></span>
                              </div>
                         </form>
                     </li>
                     <li>
                        <a href="javascript:void(0);" class="account-btn">
                             <span class="top-filter-icon"><i class="fas fa-user"></i></span> <p>Account</p>
                       </a>
                    </li>
                     <li><a href="javascript:void(0);" class="wishlist-btn">
                        <span class="top-filter-icon">
                            <i class="fas fa-heart"></i><span class="notification-icon">2</span></span>
                             <p>Wishlist</p></a></li>
                     <li><a href="javascript:void(0);" class="cart-btn"><span class="top-filter-icon"><i class="fas fa-cart-plus"></i><span class="notification-icon">2</span></span><p>Cart</p> </a></li>

                     </ul>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
              </button>
               </div>
            </div>
        </div>
      <div class="Eshop-navigation">
        <div class="container">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          @include('e-shop.includes.navbar')
    </div> 
    </div>
    </div>     
    </nav>
    </header>











@yield('content')














      <!--   footer starts here -->
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                  <h3 class="ftr-heading">ABOUT</h3>
                  <ul class="footer-links-wrap">
                      <li><a href="javascript:void(0);">About us</a></li>
                      <li><a href="javascript:void(0);">Store location</a></li>
                      <li><a href="javascript:void(0);">Contact</a></li>
                      <li><a href="javascript:void(0);">Orders tracking</a></li>
                  </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                  <h3 class="ftr-heading">USEFUL LINKS</h3>
                  <ul class="footer-links-wrap">
                      <li><a href="javascript:void(0);">Home</a></li>
                      <li><a href="javascript:void(0);">Shop</a></li>
                      <li><a href="javascript:void(0);">Product </a></li>
                      <li><a href="javascript:void(0);">Pages</a></li>
                      <li><a href="javascript:void(0);">Blog</a></li>
                      <li><a href="javascript:void(0);">Elements</a></li>
                  </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                  <h3 class="ftr-heading">FOLLOW US ON</h3>
                  <ul class="footer-links-wrap">
                      <li><a href="javascript:void(0);"><span class="social-icon"></span>Twitter</a></li>
                      <li><a href="javascript:void(0);"><span class="social-icon"></span>Facebook</a></li>
                      <li><a href="javascript:void(0);"><span class="social-icon"></span>Instagram</a></li>
                      <li><a href="javascript:void(0);"><span class="social-icon"></span>Youtube</a></li>
                  </ul>
                </div>
                <div class="col-lg-3 col-md-6">
                  <h3 class="ftr-heading">Subscribe.</h3>
                  <div class="footer-links-wrap">
                  <p>Subscribe to our newsletter to receive news on update.</p>
                   <form class="footer-form">
                       <div class="subscribe-field-wrap">
                           <input type="text" name="" class="form-control" placeholder="Your Email Address">
                           <button type="button" class="subscribe-btn">Subscribe</button>
                       </div>
                   </form>
                </div>
            </div>
            </div>
        </div>
        <div class="container">
            <div class="ftr-bottom-bar">
                <p class="copy-right-text">© 2019 Envisiun.</p>
            </div>
        </div>
    </footer>
    <!--   footer ends here -->

    <!-- Scripting starts here -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<!--     <script src="https://code.jquery.com/jquery-3.1.0.js"></script> -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    
    <script src="https://cdn.rawgit.com/michalsnik/aos/2.0.4/dist/aos.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.7.0/jquery.flexslider.min.js"></script>
    <script src="{{url('/e-shop/js/animation.js')}}"></script>
    <script type="text/javascript" src="{{url('/e-shop/js/owl.carousel.min.js')}}"></script>
    <script type="text/javascript" src="{{url('/e-shop/js/custom.js')}}"></script>
    <script type="text/javascript" src="{{url('/e-shop/js/home/home.js')}}"></script>





 
 



    @yield('jscript')
    <script>
        AOS.init();

    </script>

</body>

</html>
