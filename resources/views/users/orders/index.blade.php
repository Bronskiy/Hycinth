@extends('users.layouts.layout') @section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-6">
                <div class="page-header-title">
                    <h5 class="m-b-10">My Orders</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0);">Orders</a></li>
                </ul>
            </div>

        </div>
    </div>
</div>

<section class="content">
    <div class="row">
        <div class="col-xl-12 col-md-12 m-b-30">
            <div class="card">
                <div class="card-body">
                    <div class="row">

                        <div class="col-lg-12">
                            <div class="cart-items-wrap my-order-detail-card">
                                <div class="row no-gutters">
                                    <div class="col-lg-2">
                                        <div class="cart-col-wrap">
                                            <div class="cart-table-head">
                                                <h3>Event Image</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5">
                                        <div class="cart-col-wrap">
                                            <div class="cart-table-head">
                                                <h3>Details</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="cart-col-wrap">
                                            <div class="cart-table-head">
                                                <h3>AddOns</h3>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="cart-col-wrap">
                                            <div class="cart-table-head">
                                                <h3>Action</h3>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <!-- start Heading -->
                            <div class="cart-items-wrap my-order-detail-card" id="CartItems">
                                <div class="row no-gutters" data="id=&quot;57&quot;">
                                    <div class="col-lg-2 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">
                                                <figure class="cart-tab-img">
                                                    <img src="http://49.249.236.30:6633/images/events/1576748659voQQBEXaLUxYclJNZMq315747561420CECWnSZ7yaVhvavQEMn14997.png">
                                                </figure>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-5 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">
                                                <a href="javascript:void(0);" class="cart-item-link">Birthday Bash</a>
                                                <div class="cart-item-des">
                                                    <p class="color-highlight">Package: <strong>Tester</strong></p>

                                                    <div class="vendor-del-rating right-content">
                                                        <p>Vendor: <strong>Event planner      12</strong></p>
                                                        <ul class="inner-list rating-stars">
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="far fa-star"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="cart-price-line">
                                                        <span class="off-price"> $10,000.00 

                                    <del class="main-price">$20,000.00 </del> 
                                                             </span>

                                                        <p> </p>
                                                        <p> This Package have a &nbsp; <strong> Club Party</strong>&nbsp;deal</p>

                                                        <p></p>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 mb-4">
                                        <div class="cart-col-wrap">
                                            <div class="car-col-body">

                                                <ul class="cart-addon-listing">
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                </ul>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-2 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">

                                                <div class="action-btn-wrap1">
                                                    <a href="javascript:void(0);" class="icon-btn" data-toggle="tooltip" title="" data-original-title="Detail"><i class="fas fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                           <!--  Second row -->

                           <div class="cart-items-wrap my-order-detail-card" id="CartItems">
                                <div class="row no-gutters" data="id=&quot;57&quot;">
                                    <div class="col-lg-2 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">
                                                <figure class="cart-tab-img">
                                                    <img src="http://49.249.236.30:6633/images/events/1576748659voQQBEXaLUxYclJNZMq315747561420CECWnSZ7yaVhvavQEMn14997.png">
                                                </figure>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-5 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">
                                                <a href="javascript:void(0);" class="cart-item-link">Birthday Bash</a>
                                                <div class="cart-item-des">
                                                    <p class="color-highlight">Package: <strong>Tester</strong></p>

                                                    <div class="vendor-del-rating right-content">
                                                        <p>Vendor: <strong>Event planner      12</strong></p>
                                                        <ul class="inner-list rating-stars">
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="fas fa-star"></i></a></li>
                                                            <li><a href="javascript:void(0);"><i class="far fa-star"></i></a>
                                                            </li>
                                                        </ul>
                                                    </div>

                                                    <div class="cart-price-line">
                                                        <span class="off-price"> $10,000.00 

                                    <del class="main-price">$20,000.00 </del> 
                                                             </span>

                                                        <p> </p>
                                                        <p> This Package have a &nbsp; <strong> Club Party</strong>&nbsp;deal</p>

                                                        <p></p>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 mb-4">
                                        <div class="cart-col-wrap">
                                            <div class="car-col-body">

                                                <ul class="cart-addon-listing">
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                    <li><span>5 Extra Person</span><span>$10</span></li>
                                                </ul>

                                            </div>
                                        </div>

                                    </div>
                                    <div class="col-lg-2 mb-4">
                                        <div class="cart-col-wrap">

                                            <div class="car-col-body">

                                                <div class="action-btn-wrap1">
                                                    <a href="javascript:void(0);" class="icon-btn" data-toggle="tooltip" title="" data-original-title="Detail"><i class="fas fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                          <!--  =========================== -->
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

@endsection @section('scripts') @endsection