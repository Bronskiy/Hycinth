@extends('layouts.home')
@section('content')


<style type="text/css">
    .banner-content {
    padding: 10px;
    margin-top: 153px;
    display: inline-block;
    width: 100%;
    text-align: center;
    z-index: 1;
    position: relative;
}

.main-banner {
    height: 461px;
    display: block;
    background-size: cover;
    background-position: center center;
    position: relative;
    overflow: hidden;
}
</style>

  <section class="main-banner" style="background:url('/frontend/images/banner-bg.png');">
        <div class="container">
            <div class="banner-content">
                <h1 class="banner-heading">Checkout</h1>
              
            </div>
        </div>
    </section>
    <section class="vendor-listing-sec checklist-wrap">
        <div class="container lr-container">
            <div class="sec-card outer-wrap">
               <span class="aside-toggle">
                                <i class="fa fa-bars"></i>
                                <span class="cross-class">
                                    <i class="fas fa-times" style="display: none;"></i>
                                </span>
                            </span>
                <div class="row">

                    
                    <div class="col-lg-9">
                        <div class="inner-content">
                            <p>Checkout</p>
                           <hr>
                        </div>
                        



                                    @if($error == 0)

                                      <div class="alert alert-warning alert-dismissible fade in" role="alert"> <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> <strong>OOPS!</strong> {!!$error!!} </div>

                                    @endif
 


                                    @include('users.checkout.dealInfo')
                                    @include('users.checkout.packageInfo')
                          

                    </div>

                     <div class="col-lg-3 range eventside-bar">
      
                           @include('users.checkout.sidebar')
                           
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- banner section starts Ends here -->



@endsection