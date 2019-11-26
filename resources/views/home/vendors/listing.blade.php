@extends('layouts.home')
@section('content')


  <section class="main-banner" style="background:url('/frontend/images/banner-bg.png');">
        <div class="container">
            <div class="banner-content">
                <h1 class="banner-heading">Vendor Listing</h1>
                <div class="search-bar">
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-sm-5">
                            <div class="form-group">
                                <input type="text" id="" class="form-control" placeholder="Wedding vendors">
                                <span class="input-icon"><i class="fas fa-search"></i></span>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5">
                            <div class="form-group">
                                <input type="text" id="" class="form-control right" placeholder="Building">
                                <span class="input-icon"><i class="fas fa-building"></i></span>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-2">
                            <div class="form-group">
                                <a href="javascript:void(0);" class="cstm-btn solid-btn banner-btn">Search</a>
                            </div>
                        </div>
                    </div>
                </div>

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

                     @include('home.vendors.includes.sidebar')
                    
                    <div class="col-lg-9 col-md-8">
                        <div class="inner-content">
                            <p>Showing Results <b id="categoryCount">Searching...</b></p>
                            <span class="view-toggle">
                               <!--  <ul>
                                    <li><a href="javascript:void(0);"> <i class="fas fa-list"></i></a>
                                    <li><a href="javascript:void(0);"> <i class="fas fa-th"></i></a>
                                </ul> -->
                            </span>
                            <hr>
                        </div>
                        <div class="inner-content-detail" id="inner-content-detail">
                           
                         </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="offset-lg-3  col-lg-9 col-md-9 col-sm-12">
                  
                </div>
            </div>
        </div>
    </section>
    <!-- banner section starts Ends here -->










@endsection

@section('scripts')

<script type="text/javascript" src="{{url('/js/validations/businessListingFilter.js')}}"></script>
<script type="text/javascript">
 



</script>
@endsection