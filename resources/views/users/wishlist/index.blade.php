@extends('layouts.home')
@section('content')
<link rel="stylesheet" type="text/css" href="{{url('/frontend/css/cart.css')}}">

<section class="log-sign-banner aos-init aos-animate" data-aos="fade-up" data-aos-duration="3000" "="" style="background:url(http://49.249.236.30:6633/uploads/1574318396.png);">
    <div class="container">
            <div class="page-title text-center">
                     <h1>Wishlist</h1>
                </div>
            </div>    
        </section>


<section class="cart-sec wishlist-sec">
   <div class="container lr-container">
     <div class="sec-card">
        <div class="cart-card">
           <div class="card-heading">
                <h3>My Wishlist</h3>
            </div>

                       <div class="responsive-table">
                <table class="table cart-table">
                    <thead>
                        <tr>
                            <th width="20%">Event</th>
                            <th width="20%">Packages</th>
                            <th width="20%">Deals & Discount</th>
                            <th>Basic Price</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody id="">
                        <tr><td>Lorem ipsum</td>
                            <td>Lorem ipsum</td>
                            <td>20%</td>
                            <td>
                                <a href="javascript:void(0);" class="table-cart-btn">Add to cart</a> </td>
                                <td width="150"><div class="action-btn-wrap ">
                                    <a href="javascript:void(0)" class="icon-btn danger-btn"><i class="fas fa-trash-alt"></i></a>
                                </div></td>
                            </tr>
                            <tr><td>Lorem ipsum</td>
                            <td>Lorem ipsum</td>
                            <td>20%</td>
                            <td>
                                <a href="javascript:void(0);" class="table-cart-btn">Add to cart</a> </td>
                                <td width="150"><div class="action-btn-wrap ">
                                    <a href="javascript:void(0)" class="icon-btn danger-btn"><i class="fas fa-trash-alt"></i></a>
                                </div></td>
                            </tr>
                            <tr><td>Lorem ipsum</td>
                            <td>Lorem ipsum</td>
                            <td>20%</td>
                            <td>
                                <a href="javascript:void(0);" class="table-cart-btn">Add to cart</a> </td>
                                <td width="150"><div class="action-btn-wrap ">
                                    <a href="javascript:void(0)" class="icon-btn danger-btn"><i class="fas fa-trash-alt"></i></a>
                                </div></td>
                            </tr>
                    </tbody>
                </table>
                <table class="cart-table bottom">

                        <tbody>
                  <tr>
                    <td></td>
                         <div class="share-btn-wrap">                            
<nav class="share-menu">
  <input type="checkbox" href="#" class="menu-open" name="menu-open" id="menu-open" />
  <label class="menu-open-button" for="menu-open">
    <span class="hamburger hamburger-1"></span>
    <span class="hamburger hamburger-2"></span>
    <span class="hamburger hamburger-3"></span>
  </label>

  <a href="#" class="menu-item"> <i class="fa fa-bar-chart"></i> </a>
  <a href="#" class="menu-item"> <i class="fa fa-plus"></i> </a>
  <a href="#" class="menu-item"> <i class="fa fa-heart"></i> </a>
  <a href="#" class="menu-item"> <i class="fa fa-envelope"></i> </a>

</nav>

<!-- filters -->
<svg xmlns="http://www.w3.org/2000/svg" version="1.1">
    <defs>
      <filter id="shadowed-goo">
          
          <feGaussianBlur in="SourceGraphic" result="blur" stdDeviation="10" />
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
          <feGaussianBlur in="goo" stdDeviation="3" result="shadow" />
          <feColorMatrix in="shadow" mode="matrix" values="0 0 0 0 0  0 0 0 0 0  0 0 0 0 0  0 0 0 1 -0.2" result="shadow" />
          <feOffset in="shadow" dx="1" dy="1" result="shadow" />
          <feComposite in2="shadow" in="goo" result="goo" />
          <feComposite in2="goo" in="SourceGraphic" result="mix" />
      </filter>
      <filter id="goo">
          <feGaussianBlur in="SourceGraphic" result="blur" stdDeviation="10" />
          <feColorMatrix in="blur" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7" result="goo" />
          <feComposite in2="goo" in="SourceGraphic" result="mix" />
      </filter>
    </defs>
</svg>
                         </div>   
                        </tr>

                    </tbody>
                </table>
        </div>
        
        </div>
    </div>
  </div>
</section>








 


@endsection