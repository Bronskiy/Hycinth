@extends('layouts.vendor')
@section('vendorContents')

<div class="container-fluid">

 <div class="page_head-card">
    <div class="page-info">
            <div class="page-header-title">
                <h3 class="m-b-10">{{$title}}</h3>
            </div>
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('vendor_dashboard') }}"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Amenities</a></li>
            </ul>
        </div>
        <div class="side-btns-wrap">
         
        </div>
  </div>

@include('vendors.errors')

 

    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
          <div class="card-header"><h3>{{$title}}</h3></div>
           <div class="card-body">
              <div class="chat-box-container">
                <div id="frame" class="chatBox-frame">
  <div id="sidepanel" class="chatBox-sidepanel">
    <div id="profile" class="chat-profile">
      <div class="wrap">
        <img id="profile-img" src="http://emilcarlsson.se/assets/mikeross.png" class="online" alt="" />
        <p>John doe</p>
       <!--  <i class="fa fa-chevron-down expand-button" aria-hidden="true"></i> -->
        <div id="status-options">
          <ul>
            <li id="status-online" class="active"><span class="status-circle"></span> <p>Online</p></li>
            <li id="status-away"><span class="status-circle"></span> <p>Away</p></li>
            <li id="status-busy"><span class="status-circle"></span> <p>Busy</p></li>
            <li id="status-offline"><span class="status-circle"></span> <p>Offline</p></li>
          </ul>
        </div>
       
      </div>
    </div>
    <div id="search">
      <label for=""><i class="fa fa-search" aria-hidden="true"></i></label>
      <input type="text" placeholder="Search contacts..." />
    </div>
    <div id="contacts">
      <ul>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status online"></span>
            <img src="http://emilcarlsson.se/assets/louislitt.png" alt="" />
            <div class="meta">
              <p class="name">lorem ipsum</p>
              <p class="preview">There are many variations of passages of Lorem Ipsum available</p>
            </div>
          </div>
        </li>
        <li class="contact active">
          <div class="wrap">
            <span class="contact-status busy"></span>
            <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
            <div class="meta">
              <p class="name">Rafik don</p>
              <p class="preview">There are many variations of passages of Lorem Ipsum available</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status away"></span>
            <img src="http://emilcarlsson.se/assets/rachelzane.png" alt="" />
            <div class="meta">
              <p class="name">Rachel Zane</p>
              <p class="preview">I was thinking that we could have chicken tonight, sounds good?</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status online"></span>
            <img src="http://emilcarlsson.se/assets/donnapaulsen.png" alt="" />
            <div class="meta">
              <p class="name">Donna Paulsen</p>
              <p class="preview">There are many variations of passages of Lorem Ipsum available..</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status busy"></span>
            <img src="http://emilcarlsson.se/assets/jessicapearson.png" alt="" />
            <div class="meta">
              <p class="name">Jessica Pearson</p>
              <p class="preview">Have you finished the draft on the Hinsenburg deal?</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status"></span>
            <img src="http://emilcarlsson.se/assets/haroldgunderson.png" alt="" />
            <div class="meta">
              <p class="name">Harold Gunderson</p>
              <p class="preview">Thanks Mike! :)</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status"></span>
            <img src="http://emilcarlsson.se/assets/danielhardman.png" alt="" />
            <div class="meta">
              <p class="name">Daniel Hardman</p>
              <p class="preview">We'll meet again, Mike. Tell Jessica I said 'Hi'.</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status busy"></span>
            <img src="http://emilcarlsson.se/assets/katrinabennett.png" alt="" />
            <div class="meta">
              <p class="name">Katrina Bennett</p>
              <p class="preview">I've sent you the files for the Garrett trial.</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status"></span>
            <img src="http://emilcarlsson.se/assets/charlesforstman.png" alt="" />
            <div class="meta">
              <p class="name">Charles Forstman</p>
              <p class="preview">Mike, this isn't over.</p>
            </div>
          </div>
        </li>
        <li class="contact">
          <div class="wrap">
            <span class="contact-status"></span>
            <img src="http://emilcarlsson.se/assets/jonathansidwell.png" alt="" />
            <div class="meta">
              <p class="name">Jonathan Sidwell</p>
              <p class="preview"><span>You:</span> That's bullshit. This deal is solid.</p>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <!-- <div id="bottom-bar">
      <button id="addcontact"><i class="fa fa-user-plus fa-fw" aria-hidden="true"></i> <span>Add contact</span></button>
      <button id="settings"><i class="fa fa-cog fa-fw" aria-hidden="true"></i> <span>Settings</span></button>
    </div> -->
  </div>
  <div class="content">
    <div class="contact-profile">
      <div class="profile-cont">
      <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
    
      <p>Harvey Specter</p>
      </div>
      <div class="chat-action-btns">
        <a href="javascript:void(0);"><i class="fas fa-video"></i></a>
        <a href="javascript:void(0);"><i class="fas fa-phone"></i></a>
        <a href="javascript:void(0);"> <i class="fas fa-ellipsis-v"></i></a>
      </div>
    </div>
    <div class="messages">
      <ul>
        <li class="sent">
          <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="replies">
          <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="replies">
          <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="sent">
          <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="replies">
          <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
          <p>No, I told him that.</p>
        </li>
        <li class="replies">
          <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="sent">
          <img src="http://emilcarlsson.se/assets/mikeross.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
        <li class="replies">
          <img src="http://emilcarlsson.se/assets/harveyspecter.png" alt="" />
          <p>There are many variations of passages of Lorem Ipsum available</p>
        </li>
      </ul>
    </div>
    <div class="message-input">
      <div class="wrap">
      <input type="text" placeholder="Write your message..." />
      <i class="fa fa-paperclip attachment" aria-hidden="true"></i>
      <button class="submit"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
      </div>
    </div>
  </div>
</div>
<script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script>
              </div>

           </div>
        </div>
     </div>
   </div>
</div>















@endsection


@section('scripts')
 
<script type="text/javascript">
 $(".messages").animate({ scrollTop: $(document).height() }, "fast");

$("#profile-img").click(function() {
  $("#status-options").toggleClass("active");
});

$(".expand-button").click(function() {
  $("#profile").toggleClass("expanded");
  $("#contacts").toggleClass("expanded");
});

$("#status-options ul li").click(function() {
  $("#profile-img").removeClass();
  $("#status-online").removeClass("active");
  $("#status-away").removeClass("active");
  $("#status-busy").removeClass("active");
  $("#status-offline").removeClass("active");
  $(this).addClass("active");
  
  if($("#status-online").hasClass("active")) {
    $("#profile-img").addClass("online");
  } else if ($("#status-away").hasClass("active")) {
    $("#profile-img").addClass("away");
  } else if ($("#status-busy").hasClass("active")) {
    $("#profile-img").addClass("busy");
  } else if ($("#status-offline").hasClass("active")) {
    $("#profile-img").addClass("offline");
  } else {
    $("#profile-img").removeClass();
  };
  
  $("#status-options").removeClass("active");
});

function newMessage() {
  message = $(".message-input input").val();
  if($.trim(message) == '') {
    return false;
  }
  $('<li class="sent"><img src="http://emilcarlsson.se/assets/mikeross.png" alt="" /><p>' + message + '</p></li>').appendTo($('.messages ul'));
  $('.message-input input').val(null);
  $('.contact.active .preview').html('<span>You: </span>' + message);
  $(".messages").animate({ scrollTop: $(document).height() }, "fast");
};

$('.submit').click(function() {
  newMessage();
});

$(window).on('keydown', function(e) {
  if (e.which == 13) {
    newMessage();
    return false;
  }
});


</script>






@endsection