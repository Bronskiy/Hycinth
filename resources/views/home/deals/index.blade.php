@extends('layouts.home')
@section('content')


  <section class="main-banner" style="background:url('/frontend/images/banner-bg.png');">
        <div class="container">
            <div class="banner-content">
                <h1 class="banner-heading">Deals & Discount</h1>
              
            </div>
        </div>
    </section>
    <section class="vendor-listing-sec checklist-wrap">
        <div class="container lr-container">
            <div class="sec-card outer-wrap">
               <span class="aside-toggle">
                                <i class="fa fa-bars"></i>
                                <span class="cross-class">
                                    <i class="fas fa-times"></i>
                                </span>
                            </span>
                <div class="row">

                     
                    @include('includes.home.deals.sidebar')
                    <div class="col-lg-9 col-md-8">
                        <div class="inner-content">
                            <p>Showing Results <b id="categoryCount">Searching...</b></p>
                           <hr>
                        </div>
                        <div class="inner-content-detail" >
                                    <div id="inner-content-detail"></div>
                         </div>

                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!-- banner section starts Ends here -->










@endsection

@section('scripts')
  
<script type="text/javascript" src="{{url('/js/deals/deals.js')}}"></script>













@endsection