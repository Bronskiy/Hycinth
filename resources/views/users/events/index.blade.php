@extends('users.layouts.layout')
@section('content')

<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">My Dashboard</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0);">List</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
@include('admin.error_message')
       <section class="content">
      <div class="row">
        <div class="col-md-12">
          <a href="{{ route('user_show_create_event') }}">Create Event</a>
        </div>
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
                                                  @foreach($events as $event)
                                                    <tr>
                                                        <td>
                                                          <a href="{{route('user_show_edit_event', $event->slug)}}">
                                                          <h4>{{ $event->title }} </h4>
                                                            <p class="m-0">{{ $event->description }}</p>
                                                          </a>
                                                        </td>
                                                        
                                                        <td class="text-right" style="white-space: nowrap;"><i class="fas fa-circle text-c-green f-10"></i> 1 day left</td>
                                                    </tr>
                                                    @endforeach
                                                   
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

    </section>

 
     
@endsection



@section('scripts')
@endsection


