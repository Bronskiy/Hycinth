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
                    <div class="col-lg-3 col-md-4 range eventside-bar">
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header">
                                    <a class="card-link collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
                                        category
                                    </a>
                                </div>
                                <div id="collapseOne" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing sub-head">
                                        <b>All category</b>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding Photographers</a>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding DJs</a>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding Hair & Makeup</a>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding Planners</a>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding Caterers</a>
                                    </div>
                                    <div class="card-body listing">
                                        <a href="javascript:void(0);">Wedding Florists</a>
                                    </div>
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                                        Availability
                                    </a>
                                </div>
                                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <div class="form-group">
                                            <input type="text" id="" class="form-control available" placeholder="Select Date">
                                            <span class="input-icon date"><i class="far fa-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapsefour">
                                        Price Range
                                    </a>
                                </div>
                                <div id="collapsefour" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <div class="wrap1">
                                            <div class="checkboxwrap">
                                                <form>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb11">
                                                        <label for="cb11"> Under $1,000</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb2">
                                                        <label for="cb2"> $1,000 - $1,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb3">
                                                        <label for="cb3"> $2,000 - $2,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb4">
                                                        <label for="cb4"> $3,000 - $3,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb5">
                                                        <label for="cb5"> $4,000+</label>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapsefive">
                                        Advance Search
                                    </a>
                                </div>
                                <div id="collapsefive" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing sub-head type">
                                        <b>All category</b>
                                    </div>
                                    <div class="card-body listing">
                                        <form>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb1121">
                                                <label for="cb1121"> Contemporary</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb12">
                                                <label for="cb12"> Film</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb13">
                                                <label for="cb13"> Natural</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb14">
                                                <label for="cb14"> Photojournalism</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb15">
                                                <label for="cb15"> Traditional</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb16">
                                                <label for="cb16"> Vintage</label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                                        Services
                                    </a>
                                </div>
                                <div id="collapseThree" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <form>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb11211">
                                                <label for="cb11211"> Additional Hours</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb112">
                                                <label for="cb112"> Boudoir Shoot</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb113">
                                                <label for="cb113"> Destination / Travel</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb114">
                                                <label for="cb114"> Engagement Shoot</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb115">
                                                <label for="cb115"> High-Res Images</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb116">
                                                <label for="cb116"> One Event / Day</label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8">
                        <div class="inner-content">
                            <p>Showing Results <b>{{$categoryCount}}</b></p>
                            <span class="view-toggle">
                                <ul>
                                    <li><a href="javascript:void(0);"> <i class="fas fa-list"></i></a>
                                    <li><a href="javascript:void(0);"> <i class="fas fa-th"></i></a>
                                </ul>
                            </span>
                            <hr>
                        </div>
                        <div class="inner-content-detail">
                           
                             
                             @include('home.vendors.includes.vendor')

                

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
<script type="text/javascript">


    
jQuery(function(){

      
 


//--------------------------------------------------------------------------------
//--------------------------------------------------------------------------------


jQuery("body").on('click','.custom-video-container .play-btn',function(e){

  e.preventDefault();
  stopOtherVideo();
  var videoPath = jQuery( this ).attr('data-video');
  var Targets = jQuery( this ).attr('data-target');
  var videoTag = videoPlaySrc(videoPath);
   

   jQuery("body").find('#'+Targets).html(videoTag);
   jQuery( this ).closest('.custom-video-container').addClass('playing');
  
});



function videoPlaySrc(videoPath) {
           var text ='';
           text ='<video width="100%"  controls autoplay>';
           text +='<source src="'+videoPath+'" type="video/mp4">';
           text +='<source src="movie.ogg" type="video/ogg">';
           text +='Your browser does not support the video tag.';
           text +='</video>';
           
           return text;
}



function stopOtherVideo() {
    jQuery('.custom-video-container').removeClass('playing');

      $( ".custom-video-container" ).each(function( index ) {
          $( this ).removeClass('playing').find('.video-screen').html('');
      });
}

});



</script>
@endsection