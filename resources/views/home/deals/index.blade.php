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










<!-- Modal -->
<div class="modal fade" id="LoginModel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Get Deal Coupon Code from <span id="busines_title"></span></h4>
      </div>
      <div class="modal-body">
         <form id="loginForm" method="POST" action="{{ url(route('ajax_login_popup')) }}">
            <div class="messageNotofications"></div>
            <input type="hidden" name="deal_id" value="">

            <div class="row">
                 @csrf

                 <div class="col-md-12">
                      {{textbox($errors,'Email','email')}}
                 </div>

                  <div class="col-md-12">
                      {{password($errors,'Password','password')}}
                 </div>
               
                 <div class="col-md-12">
                    <button type="submit" class="cstm-btn solid-btn detail-btn pull-right">Submit</button>

                    
                </div>
            </div>
      </form>
          </div>
           
    </div>
  </div>
</div>





@endsection

@section('scripts')
  
<script type="text/javascript" src="{{url('/js/deals/deals.js')}}"></script>













@endsection