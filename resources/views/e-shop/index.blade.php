@extends('e-shop.layouts.layout')
@section('content')




 <!-- banner section starts here here -->
    <section class="main-banner home-main-banner" style="background-image:url({{url('/e-shop/images/banner-bg.png')}});">
        <div class="container">
            <div class="banner-content">
                <div class="row cstm-flex-row">
                    <div class="col-lg-7">
                        <div class="banner-text">
                            <h1>
                             <small>Sed ut perspiciatis unde omnis</small>
                            vero eos et accusamus et iusto odio </h1>
                            <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit</p>
                        </div>
                        <div class="btn-wrap mt-4">
                            <a href="javascript:void(0);" class="cstm-btn solid-btn">Shop Now</a>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <figure class="banner-product-img">
                            <img src="{{url('e-shop/images/banner-product-img.png')}}">
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- banner section starts Ends here -->

<div id="loadFeaturedCategory" data-route="{{url(route('shop.ajax.featuredCategory'))}}"></div>




     <!--Featured section starts here-->
     <section class="featured-product-sec">
         <div class="container">
             <div class="sec-heading text-center">
                <h2>Featured PRODUCTS</h2>
            </div>
            <div class="featured-product-wrap">
                    <div class="owl-carousel owl-theme featured-product-slider">
                        <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img1.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                        <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img2.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                        <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img3.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                        <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img1.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                       <div class="item">                          
                         <div class="featured-product-card">
                            <figure class="f-product-img">
                                <img src="images/f-product-img3.png">
                            </figure>
                             <div class="f-product-detail">
                                 <h4>Personalized Extra-Large Cotton Canvas Fabric Beach Tote Bag </h4>
                                 <div class="f-product-price text-center">
                                     <h3 class="after-discount-price">$30.00 </h3>
                                     <p class="original-price"><del>$50.00</del></p>
                                 </div>
                             </div>
                         </div>
                       </div>
                     </div>
                    
                </div>
            </div>
         </div>
     </section>
     <!--Featured section ends here-->


    <!--Products section starts here-->
    <section class="products-sec">
        <div class="container">
            <div class="sec-heading text-center">
                <h2>PRODUCTS</h2>
            </div>
            <div class="product-wrapper">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="product-card">
                            <div class="badge">Hot</div>
                            <div class="product-tumb">
                                <img src="https://i.imgur.com/xdbHo4E.png" alt="">
                            </div>
                            <div class="product-details">
                                <span class="product-catagory">Women,bag</span>
                                <h4><a href="">Women leather bag</a></h4>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                                <div class="product-bottom-details">
                                    <div class="product-price"><small>$96.00</small>$230.99</div>
                                    <div class="product-links">
                                        <a href=""><i class="fa fa-heart"></i></a>
                                        <a href=""><i class="fa fa-shopping-cart"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-wrap w-100 text-center mt-3">
                <a href="javascript:void(0);" class="cstm-btn solid-btn">View All</a>
            </div>
        </div>
    </section>
     <!-- Products section ends here-->

@endsection