@extends('users.layouts.layout')
@section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">title</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0);">Create</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

       <section class="content">
      <div class="row">
        <!-- [ rating list ] end-->
                                <div class="col-xl-8 col-md-12 m-b-30">
                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="false">Upcoming Events</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active show" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="true">All Events</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Done</a>
                                        </li>

                                         <li class="nav-item">
                                            <a class="nav-link" id="expred-tab" data-toggle="tab" href="#expired" role="tab" aria-controls="contact" aria-selected="false">Expired</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content" id="myTabContent">
                                        <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
                                            <table class="table table-hover">
                                                
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracted.</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader </p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>                                             
                                                    

                                                    
                                                   
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="tab-pane fade active show" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                            <table class="table table-hover">
                                                
                                                <tbody>
                                                    
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracted</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracted by the readable </p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>

                                                    

                                                    
                                                   
                                                </tbody>
                                            </table>

                                        </div>
                                        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                                            <table class="table table-hover">
                                                
                                                <tbody>
                                                    
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracted</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracted</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>

                                                    

                                                    
                                                   
                                                </tbody>
                                            </table>
                                        </div>

                                        <div class="tab-pane fade" id="expired" role="tabpanel" aria-labelledby="contact-tab">
                                            <table class="table table-hover">
                                                
                                                <tbody>
                                                  
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.It is a long established fact that a reader will be distracte</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>
                                                     <tr>
                                                        <td>
                                                          <h4>Lorem Ipsum is simply dummy text </h4>
                                                            <p class="m-0">Lorem Ipsum is simply dummy text of the printing and typesetting.</p>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>

                                                    

                                                    
                                                   
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-md-12 m-b-30">

                                  <div class="card Upcoming-event-card">
                                        <div class="card-block">
                                          <div class="upcmg-evnt-head text-center">
                                          <h2>Upcoming Events</h2>
                                          <h3>Birthday Party</h3>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry Iooking at its layout.It is a long established fact.</p>

                                        </div>
                                          <div class="countdown-timer-container">
                                            <div class="countdown">
                                            <div class="bloc-time hours" data-init-value="24">
                                              <span class="count-title">Hours</span>

                                              <div class="figure hours hours-1">
                                                <span class="top">2</span>
                                                <span class="top-back">
                                                  <span>2</span>
                                                </span>
                                                <span class="bottom">2</span>
                                                <span class="bottom-back">
                                                  <span>2</span>
                                                </span>
                                              </div>

                                              <div class="figure hours hours-2">
                                                <span class="top">4</span>
                                                <span class="top-back">
                                                  <span>4</span>
                                                </span>
                                                <span class="bottom">4</span>
                                                <span class="bottom-back">
                                                  <span>4</span>
                                                </span>
                                              </div>
                                            </div>

                                            <div class="bloc-time min" data-init-value="0">
                                              <span class="count-title">Minutes</span>

                                              <div class="figure min min-1">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>        
                                              </div>

                                              <div class="figure min min-2">
                                               <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>
                                              </div>
                                            </div>

                                            <div class="bloc-time sec" data-init-value="0">
                                              <span class="count-title">Seconds</span>

                                                <div class="figure sec sec-1">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>          
                                              </div>

                                              <div class="figure sec sec-2">
                                                <span class="top">0</span>
                                                <span class="top-back">
                                                  <span>0</span>
                                                </span>
                                                <span class="bottom">0</span>
                                                <span class="bottom-back">
                                                  <span>0</span>
                                                </span>
                                              </div>
                                            </div>
                                          </div>
                                          </div>

                                        </div>
                                      </div>
                                </div>
      </div>
         
      <!-- /.row -->

    <!--  chat box section starts here -->
    <div class="chatBox-container">
    <div class="row justify-content-center">
        <div class="col-md-4 col-lg-4 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
          <div class="card-header">
            <div class="input-group">
              <input type="text" placeholder="Search..." name="" class="form-control search">
              <div class="input-group-prepend">
                <span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
              </div>
            </div>
          </div>
          <div class="card-body contacts_body">
            <ui class="contacts">
            <li class="active">
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                  <span class="online_icon"></span>
                </div>
                <div class="user_info">
                  <span>Khalid</span>
                  <p>Kalid is online</p>
                </div>
              </div>
            </li>
            <li>
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="https://2.bp.blogspot.com/-8ytYF7cfPkQ/WkPe1-rtrcI/AAAAAAAAGqU/FGfTDVgkcIwmOTtjLka51vineFBExJuSACLcBGAs/s320/31.jpg" class="rounded-circle user_img">
                  <span class="online_icon offline"></span>
                </div>
                <div class="user_info">
                  <span>Taherah Big</span>
                  <p>Taherah left 7 mins ago</p>
                </div>
              </div>
            </li>
            <li>
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="https://i.pinimg.com/originals/ac/b9/90/acb990190ca1ddbb9b20db303375bb58.jpg" class="rounded-circle user_img">
                  <span class="online_icon"></span>
                </div>
                <div class="user_info">
                  <span>Sami Rafi</span>
                  <p>Sami is online</p>
                </div>
              </div>
            </li>
            <li>
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="http://profilepicturesdp.com/wp-content/uploads/2018/07/sweet-girl-profile-pictures-9.jpg" class="rounded-circle user_img">
                  <span class="online_icon offline"></span>
                </div>
                <div class="user_info">
                  <span>Nargis Hawa</span>
                  <p>Nargis left 30 mins ago</p>
                </div>
              </div>
            </li>
            <li>
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="https://static.turbosquid.com/Preview/001214/650/2V/boy-cartoon-3D-model_D.jpg" class="rounded-circle user_img">
                  <span class="online_icon offline"></span>
                </div>
                <div class="user_info">
                  <span>Rashid Samim</span>
                  <p>Rashid left 50 mins ago</p>
                </div>
              </div>
            </li>
            </ui>
          </div>
          <div class="card-footer"></div>
        </div></div>
        <div class="col-md-8 col-lg-8 chat">
          <div class="card">
            <div class="card-header msg_head">
              <div class="d-flex bd-highlight">
                <div class="img_cont">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img">
                  <span class="online_icon"></span>
                </div>
                <div class="user_info">
                  <span>Chat with Khalid</span>
                  <p>1767 Messages</p>
                </div>
                <div class="video_cam">
                  <span><i class="fas fa-video"></i></span>
                  <span><i class="fas fa-phone"></i></span>
                </div>
              </div>
              <span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
              <div class="action_menu">
                <ul>
                  <li><i class="fas fa-user-circle"></i> View profile</li>
                  <li><i class="fas fa-users"></i> Add to close friends</li>
                  <li><i class="fas fa-plus"></i> Add to group</li>
                  <li><i class="fas fa-ban"></i> Block</li>
                </ul>
              </div>
            </div>
            <div class="card-body msg_card_body">
              <div class="d-flex justify-content-start mb-4">
                <div class="img_cont_msg">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                  Hi, how are you samim?
                  <span class="msg_time">8:40 AM, Today</span>
                </div>
              </div>
              <div class="d-flex justify-content-end mb-4">
                <div class="msg_cotainer_send">
                  Hi Khalid i am good tnx how about you?
                  <span class="msg_time_send">8:55 AM, Today</span>
                </div>
                <div class="img_cont_msg">
              <img src="" class="rounded-circle user_img_msg">
                </div>
              </div>
              <div class="d-flex justify-content-start mb-4">
                <div class="img_cont_msg">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                  I am good too, thank you for your chat template
                  <span class="msg_time">9:00 AM, Today</span>
                </div>
              </div>
              <div class="d-flex justify-content-end mb-4">
                <div class="msg_cotainer_send">
                  You are welcome
                  <span class="msg_time_send">9:05 AM, Today</span>
                </div>
                <div class="img_cont_msg">
              <img src="" class="rounded-circle user_img_msg">
                </div>
              </div>
              <div class="d-flex justify-content-start mb-4">
                <div class="img_cont_msg">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                  I am looking for your next templates
                  <span class="msg_time">9:07 AM, Today</span>
                </div>
              </div>
              <div class="d-flex justify-content-end mb-4">
                <div class="msg_cotainer_send">
                  Ok, thank you have a good day
                  <span class="msg_time_send">9:10 AM, Today</span>
                </div>
                <div class="img_cont_msg">
            <img src="" class="rounded-circle user_img_msg">
                </div>
              </div>
              <div class="d-flex justify-content-start mb-4">
                <div class="img_cont_msg">
                  <img src="https://static.turbosquid.com/Preview/001292/481/WV/_D.jpg" class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                  Bye, see you
                  <span class="msg_time">9:12 AM, Today</span>
                </div>
              </div>
            </div>
            <div class="card-footer">
              <div class="input-group">
                <div class="input-group-append">
                  <span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
                </div>
                <textarea name="" class="form-control type_msg" placeholder="Type your message..."></textarea>
                <div class="input-group-append">
                  <span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- ======================================= -->




    </section>

 
     
@endsection



@section('scripts')
@endsection


