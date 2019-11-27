@extends('layouts.home')
@section('content')
<section class="log-sign-banner" style="background:url('/frontend/images/banner-bg.png');">
   <div class="container">
      <div class="page-title text-center">
         <h1>{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','business_name')}}</h1>
      </div>
   </div>
</section>

<input type="hidden" value="{{$vendor->latitude}}" id="latitude" />
<input type="hidden" value="{{$vendor->longitude}}" id="longitude" />

<section class="vendor-detail-header">
   <div class="container lr-container">
      <div class="sec-card">
         <div class="page-head">
            <div class="row">
               <div class="col-lg-8">
                  <div class="page-header">
                     <figure class="head-logo"><img src="/frontend/images/vendor-03.png"></figure>
                     <div class="heading-details">
                        <h2>{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','business_name')}}</h2>
                        <p class="address-line"><span class="location-icon"><i class="fas fa-map-marker-alt"></i></span><?= getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','address')?></p>
                        <ul class="contact-links">
                          <li><a href="tel:{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','phone_number')}}"><span class="contact-icons"><i class="fas fa-mobile-alt"></i></span></a></li>
                          <li><a target="_blank" href="{{getBasicInfo($vendor->vendors->id, $vendor->category_id,'basic_information','website')}}"><span class="contact-icons"><i class="fas fa-globe-americas"></i></span></a></li>
                          <li>
                             <!-- weather details for venues -->
                     @if(\Request::route()->getName() === 'vendor_detail_page')
                        @include('home.vendors.services.detail.weather')
                     @endif
                          </li>
                        </ul>                        
                     </div>
                     

                  </div>
               </div>


 

 
               
               <div class="col-lg-4 sticky-form-sidebar">
                  <div class="cstm-btn-grp text-right">
                     <a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-handshake"></i></span> Hired?</a>
                     <a href="javascript:void(0);" class="cstm-btn"><span class="btn-icon"><i class="fas fa-heart"></i></span> Save</a>
                  </div>
                  <div class="share-icons-wrap">
                     <ul class="social-icons">
                        <li>
                           <a target="_blank" href="<?= \Share::load(url('/'),$vendor->description->keyValue)->facebook() ?>">
                           <img src="https://yauzer.com/images/icon-fb.png" alt="Facebook">
                        </a>
                       </li>
                        <li>
                           <a target="_blank" href="<?= \Share::load(url('/'),$vendor->description->keyValue)->twitter() ?>">
                              <img src="https://yauzer.com/images/icon-twitter.png" alt="Twitter">
                           </a>
                        </li>
                        <li>
                           <a target="_blank" href="<?= \Share::load(url('/'),$vendor->description->keyValue)->gplus() ?>">
                              <img src="https://yauzer.com/images/icon-gplus.png" alt="Google Plus">
                           </a>
                        </li>
                        <li>
                           <a target="_blank" href="<?= \Share::load(url('/'),$vendor->description->keyValue)->linkedin() ?>">
                              <img src="https://yauzer.com/images/linkedin-icon.png" alt="Linkedin">
                           </a>
                        </li>
                        <li>
                           <a target="_blank" href="<?= \Share::load(url('/'),$vendor->description->keyValue)->pinterest() ?>">
                              <img src="https://yauzer.com/images/icon-Pinterest.png" alt="Pinterest">
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      <div class="deatil-navigation-wrap">
         <!-- <ul class="detail-navigation">
            <li><a href="#" data-scroll="image-gallery">Photos</a></li>
            
            <li><a href="#faq-sec" data-scroll="faq-sec">FAQs</a></li>
            <li><a href="#venue-sec" data-scroll="venue-sec">Venue</a></li>                              
            <li><a href="#description-sec" data-scroll="description-sec">Description</a></li>
            <li><a href="#AmenitiesGames-sec" data-scroll="AmenitiesGames-sec">Amenities and Games</a></li>
            <li><a href="#deals-sec" data-scroll="deals-sec">Deals</a></li>  
            <li><a href="#review-sec" data-scroll="review-sec">Reviews</a></li>
            </ul>  -->  
         <div class="owl-carousel owl-theme nav-menu-slider">
            <div class="item">
               <a href="#" data-scroll="image-gallery">
                  <!-- <span class="nav-icon"><i class="fas fa-camera-retro"></i></span> --> Photos
               </a>
            </div>
            <div class="item">
               <a href="#faq-sec" data-scroll="faq-sec">
                  <!-- <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> FAQs
               </a>
            </div>
            <div class="item">
               <a href="#venue-sec" data-scroll="venue-sec">
                  <!-- <span class="nav-icon"><i class="fas fa-clipboard-list"></i></span> --> Venue
               </a>
            </div>
            <div class="item">
               <a href="#description-sec" data-scroll="description-sec">
                  <!-- <span class="nav-icon"><i class="fas fa-clipboard-list"></i></span> --> Description
               </a>
            </div>
            <div class="item">
               <a href="#AmenitiesGames-sec" data-scroll="AmenitiesGames-sec">
                  <!--  <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> Amenities and Games
               </a>
            </div>
            <div class="item">
               <a href="#deals-sec" data-scroll="deals-sec">
                  <!--  <span class="nav-icon"><i class="fas fa-question-circle"></i></span> --> Deals
               </a>
            </div>
            <div class="item">
               <a href="#review-sec" data-scroll="review-sec">
                  <!-- <span class="nav-icon"><i class="fas fa-star"></i></span> --> Reviews
               </a>
            </div>
            <div class="item">
              <a href="#package-sec" data-scroll="package-sec"><!-- <span class="nav-icon"><i class="fas fa-star"></i></span> --> Packages</a>
            </div>            
         </div>
      </div>
   </div>
   </div>
   </div>
</section>
<div class="main-detail">
   <div class="container lr-container">
      <div class="row">
         <div class="col-lg-8">
            @include('home.vendors.services.detail.gallery')
            <div class="faq-sec" id="faq-sec">
               <div class="pannel-card">
                  <div class="card-heading">
                     <h3>FAQ</h3>
                  </div>
                  <div class="faq-content">
                     @if($vendor->faqs->count() > 0)
                     @foreach($vendor->faqs as $faq)
                     <div class="faq-block">
                        <h4 class="faq-question"> <span class="que-count">Q:</span>{{$faq->question}}</h4>
                        <div class="faq-ans detail-listing">
                           <div class="faq_ans"><span class="ans-count">A:</span><?= $faq->answer ?></div>
                        </div>
                     </div>
                     @endforeach
                     @endif
                  </div>
               </div>
            </div>
            @include('home.vendors.services.detail.venue')
            <div class="summary-card" id="description-sec">
               <div class="pannel-card">
                  <div class="card-heading">
                     <h3>Description</h3>
                  </div>
                  <div class="summary-details-content">
                     <div class="summary-details detail-listing">
                        <?= ($vendor->description->count() > 0) ? $vendor->description->keyValue : 'No Description' ?>
                     </div>
                     <ul class="social-links listing-social">
                        <li>
                           <p><strong>Follow us:</strong></p>
                        </li>
                        <li><a href="javascript:void(0);"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="javascript:void(0);"><i class="fab fa-linkedin-in"></i></a></li>
                        <li><a href="javascript:void(0);"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="javascript:void(0);"><i class="fab fa-instagram"></i></a></li>
                        <li><a href="javascript:void(0);"><i class="fab fa-pinterest"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
            <!--  End -->
            <div class="Amenities-card" id="AmenitiesGames-sec">
               <div class="pannel-card">
                  <div class="card-heading">
                     <h3>Amenities and Games</h3>
                  </div>
                  <div class="Amenities-content">
                     <div class="row">
                        <div class="col-lg-6">
                           <h4 class="faq-question">Amenities</h4>
                           <ul class="detail-listing">
                              @if($amenities->count() > 0)                   
                              @foreach($amenities->get() as $amen)
                              <li>{{$amen->amenity->name}}</li>
                              @endforeach
                              @endif
                           </ul>
                        </div>
                        <div class="col-lg-6">
                           <h4 class="faq-question">Games</h4>
                           <ul class="detail-listing">
                              @if($events->count() > 0)                  
                              @foreach($games->get() as $event)
                              <li>{{$event->amenity->name}}</li>
                              @endforeach
                              @endif                   
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="summary-card" id="description-sec">
               <div class="pannel-card">
                  <div class="card-heading">
                     <h3>Prohibtion & Restrictions</h3>
                  </div>
                  <div class="summary-details-content">
                     <div class="summary-details detail-listing">
                        <?= ($vendor->prohibtion->count() > 0) ? $vendor->prohibtion->keyValue : 'No Prohibtion & Restrictions' ?>
                     </div>
                  </div>
               </div>
            </div>
            <!-- ====================== -->
            <div class="Deals-card" id="deals-sec">
               <div class="pannel-card">
                  <div class="card-heading">
                     <h3>Deals and Discount</h3>
                  </div>
                  <div class="Deals-content">
                     @if($vendor->DealsDiscount->count() > 0)
                     @foreach($vendor->DealsDiscount as $deal)
                     <div class="detail-in-breif">
                        <div class="row">
                           <div class="col-lg-4 col-md-12">
                              <div class="left-content">
                                 <img src="{{url($deal->image)}}">
                              </div>
                           </div>
                           <div class="col-lg-8 col-md-12">
                              <div class="right-content">
                                 <p>{{$deal->title}}</p>
                                 <hr>
                                 <p class="detail">
                                    <?= $deal->description ?> 
                                 </p>
                                 <a href="javascript:void(0);" class="cstm-btn solid-btn detail-btn">Get Deal</a>
                              </div>
                           </div>
                        </div>
                     </div>
                     @endforeach
                     @endif
                  </div>
               </div>
               <!--  ============================= -->
            </div>
            <!-- ============================ -->
            @include('home.vendors.services.detail.reviews')
         </div>
         <div class="col-lg-4">
            <aside>
               <div class="side-form-wrap">
                  <span class="side-form-icon"><i class="fas fa-envelope-open-text"></i></span>
                  <form class="side-form">
                     <h3 class="form-heading">Vendor Message</h3>
                     <div class="form-group">
                        <input type="text" id="" class="form-control" placeholder="Enter your Name">
                        <span class="input-icon"><i class="fas fa-user"></i></span>
                     </div>
                     <div class="form-group">
                        <input type="text" id="" class="form-control" placeholder="Email">
                        <span class="input-icon"><i class="fas fa-user"></i></span>
                     </div>
                     <div class="form-group">
                        <input type="text" id="" class="form-control" placeholder="Phone">
                        <span class="input-icon"><i class="fas fa-phone"></i></span>
                     </div>
                     <div class="form-group">
                        <input type='text' class="form-control" id='datetimepicker1' placeholder="select date" />
                        <span class="input-icon"><i class="fas fa-calendar-alt"></i></span>
                     </div>
                     <div class="form-group">
                        <input type="text" id="" class="form-control" placeholder="Number of guests">
                        <span class="input-icon"><i class="fas fa-user-friends"></i></span>
                     </div>
                     <div class="form-group">
                        <textarea class="form-control" rows="4" id="comment" placeholder="Write your message"></textarea>                        
                     </div>
                     <div class="form-group">
                        <label>Preferred contact method:</label>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input" checked>
                           <label class="custom-control-label" for="customRadio1">Email</label>
                        </div>
                        <div class="custom-control custom-radio">
                           <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                           <label class="custom-control-label" for="customRadio2">Phone number</label>
                        </div>
                     </div>
                     <div class="btn-wrap text-center">
                        <a href="javascript:void(0);" class="cstm-btn solid-btn">Request Pricing</a>
                     </div>
                  </form>
               </div>
            </aside>
         </div>
      </div>
   </div>
</div>
@include('home.vendors.services.detail.packages')
@include('home.vendors.services.detail.compare')
<!--Testimonial Page starts here-->
<section class="testimonial" id="review-sec">
   <div class="container lr-container" data-aos="fade-left" data-aos-duration="3000">
      <div class="sec-heading text-center">
         <h2>what people are saying about us</h2>
      </div>
      <div class="test owl-carousel owl-theme owl-loaded owl-drag">
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
         <div class="item">
            <div class="wrap">
               <figure>
                  <img class="commas" src="/frontend/images/commas.png" alt="" />
                  <img src="/frontend/images/test.png" alt="" />
               </figure>
               <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.</p>
               <p class="name">John Smith</p>
            </div>
         </div>
      </div>
   </div>
</section>
@endsection
@section('scripts')
<script>
   jQuery(function() {
   
         
         jQuery("body").on('click','.play-model-video',function(e){
               e.preventDefault();
   
               var url = jQuery( this ).attr('data-link');
               var title = jQuery( this ).attr('data-title');
   
               $("body").find('#Video-Modal').find('.modal-title').html(title);
               $("body").find('#Video-Modal').find('iframe').attr('src',url+'?autoplay=1');
               $("body").find('#Video-Modal').modal('show');
         });
   
   
            $("body").find('#Video-Modal').on('hidden.bs.modal', function () {
                   $('#Video-Modal').find('iframe').attr('src','');
            });
   
     let comp_pack_arr = [];
     $('.custom-control-input').click(function() {
       
       const package = $(this).data('package');
       const pack_index = $.inArray(package, comp_pack_arr);
       
       let pack = `<div class="col-lg-4" id="com_pack_id_${package.id}">
    <div class="pkg-compare-card">
          <div class="package-card">
                    <div class="inn-card">
                      <div class="title">     
                        <div class="icon">
                          <i class="fas fa-hand-holding-usd"></i>
                        </div>
                        <span class="pkg-amount">${package.price}.00</span>
                      </div>
                      <div class="content">
                      <h3 class="price-table-heading">${package.title}</h3>
                      <ul class="acrdn-action-btns single-row">
             <li><a href="javascript:void(0);" class="remove_field action_btn danger-btn" data-pack="${package.id}"><i class="fas fa-trash-alt"></i></a></li>   
           </ul>
                      </div>
                  </div>
              </div>
        </div>
    </div>`;
   
   // $('#compare-div').empty();
   
       if($(this).is(':checked')) {
         comp_pack_arr.push(package);
         $('#compare-div').append(pack);
       } else {
         comp_pack_arr.splice(pack_index, 1);
         $(`#com_pack_id_${package.id}`).remove();
       }   
        // console.log('add ', comp_pack_arr ); 
        if(comp_pack_arr.length > 0 ) {
          $('#com_pack_heading').css('display', 'block');
        } else {
          $('#com_pack_heading').css('display', 'none');
        }
        if(comp_pack_arr.length >= 2 ) {
          $('#open_com_modal').css('display', 'inline-block');
        } else {
          $('#open_com_modal').css('display', 'none');
        }
       });
   
     $('#compare-div').on("click",".remove_field", function(e) {
      e.preventDefault();
       const pid = $(this).data('pack');
       comp_pack_arr = comp_pack_arr.filter(f => f.id !== pid);
       $(`#customCheck_${pid}`).prop("checked", false);
       // $(this).parent('div').remove();
       $(`#com_pack_id_${pid}`).remove();
   
       if(comp_pack_arr.length > 0 ) {
          $('#com_pack_heading').css('display', 'block');
        } else {
          $('#com_pack_heading').css('display', 'none');
        }
       if(comp_pack_arr.length >= 2 ) {
          $('#open_com_modal').css('display', 'inline-block');
        } else {
          $('#open_com_modal').css('display', 'none');
        }
       // console.log('rm ',  comp_pack_arr );
     });
   
      $('#com_pack_modal_body').on("click",".remove_field", function(e) {
       e.preventDefault();
       $(this).parent('div').remove();
     });
   
     $('#open_com_modal').click(function() {
      let com_pack = `
         <table class="table table-bordered compere-table">
            <thead>
               <tr></tr>
            </thead>
            <tbody>
               <tr>
                  <td><label>Price</label></td>
               </tr>
               <tr>
                  <td><label>Description</label></td>
               </tr>
               <tr>
                  <td><label>Menus</label></td>
               </tr>
               <tr>
                  <td><label>Amenities</label></td>
               </tr>
               <tr>
                  <td><label>Events</label></td>
               </tr>
               <tr>
                  <td><label>Games</label></td>
               </tr>
               <tr>
                  <td><label>Add Ons</label></td>
               </tr>
               <tr>
                  <td><label>Price Type</label></td>
               </tr>
               <tr>
                  <td><label>Persons</label></td>
               </tr>
               <tr>
                  <td><label>Number Of Hours</label></td>
               </tr>
               <tr>
                  <td><label>Number Of Days</label></td>
               </tr>
            </tbody>

         </table>
      `;

      $('#com_pack_modal_table').empty();
      $('#com_pack_modal_table').append(com_pack);

    $('.compere-table >thead tr').empty();
    $('.compere-table >thead tr').append(`<th>Feature List</th>`);

      comp_pack_arr.forEach((e, i) => {
    // console.log('a ', e);
        $('.compere-table').find('tr').each(function(ti) { 
        $(this).find('th').eq(-1).after(`<th>${e.title}</th>`);
        let td = '';
        if(ti === 1) {
          td = e.price;
        }
        if(ti === 2) {
          td = e.description;
        }
        if(ti === 3) {
          td = e.menus ? e.menus : '--' ;
        }
        if(ti === 4) {
          td = e.amenities && e.amenities.length > 0 ? e.amenities.map(e => e.amenity.name) : '--';
        }
        if(ti === 5) {
          td = e.events && e.events.length > 0 ? e.events.map(e => e.event.name) : '--';
        }
        if(ti === 6) {
          td = e.games && e.games.length > 0 ? e.games.map(e => e.amenity.name) : '--';
        }
        if(ti === 7) {
          td = e.package_addons && e.package_addons.length > 0 ? '<ul class="table-list">'+e.package_addons.map(e => `<li>${e.key}: $${e.key_value}</li>`)+'</ul>' : '--';
          td = td.replace(',', '');
        }
        if(ti === 8) {
          td = e.price_type ? e.price_type === 'fix' ? 'Fix Price' : 'Per Person' : '--';
        }
        if(ti === 9) {
          td = `(${e.min_person} - ${e.max_person})`;
        }
        if(ti === 10) {
          td = e.no_of_hours ? `${e.no_of_hours} Hours` : '--';
        }
        if(ti === 11) {
          td = e.no_of_days ? `${e.no_of_days} Days` : '--';
        }
        $(this).find('td').eq(-1).after(`<td>${td}</td>`);
      });
   
     
      });
      
     });


     $('#open_weather_modal').click(function() {
         console.log('weather');
         console.log(this);
     });
   
   
   });
   
    /*----------------------------------------------   
    -Simple Scroll To Anchor
    -----------------------------------------------  */   
   
   document.querySelectorAll('a[href^="#"]').forEach(anchor => {
       anchor.addEventListener('click', function (e) {
           e.preventDefault();
   
           document.querySelector(this.getAttribute('href')).scrollIntoView({
               behavior: 'smooth'
           });
       });
   });
   
   setTimeout(()=>{
   $('.test').owlCarousel({
       loop: true,
       margin: 10,
       nav: true,
       autoplay: true,
       responsive: {
           0: {
               items: 1
           },
           600: {
               items: 1
           },
           1000: {
               items: 1
           }
       }
   });
   },0);
   
   
   
       $('.nav-menu-slider').owlCarousel({
          loop:false,
          autoWidth:true,
          nav:true,
          dots:false,
          mouseDrag:true
       });


// weather api

$.ajax({
headers: { 'Access-Control-Allow-Origin': '*' },
url: "http://openweathermap.org/data/2.5/forecast/daily?APPID=9b4bbf30228eb8528d36e79d05da1fac&lat=9.9399&lon=76.2602&units=metric&cnt=5",
type: "GET",
dataType: "JSON",
success: function(res)
{
    console.log('res ', res);
},
error: function(err) {
   console.log('err ', err);
}
});
   
   
</script>
@endsection