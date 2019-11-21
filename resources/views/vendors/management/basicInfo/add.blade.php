@extends('vendors.management.layout')
@section('vendorContents')
<div class="container-fluid">
   <div class="page_head-card">
      <div class="page-info">
         <div class="page-header-title">
            <h3 class="m-b-10">{{$title}}</h3>
         </div>
         <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('vendor_dashboard') }}"><i class="fa fa-home" aria-hidden="true"></i></a></li>
            <li class="breadcrumb-item"><a href="{{ route($addLink, $slug) }}">List</a></li>
            <li class="breadcrumb-item"><a href="javascript:void(0)">Add</a></li>
         </ul>
      </div>
   </div>
   @include('vendors.errors')
   <div class="row">
      <div class="col-lg-12">
         <div class="card vendor-dash-card">
            <div class="card-header">
               <h3>{{$title}}</h3>
            </div>
            <div class="card-body">
               <!-- 
                  <h3>   <a href="{{url(route('vendor_faqsadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3> -->
               <form method="post" id="basicInfoForm" enctype="multipart/form-data">
                  @csrf
                  <input type="hidden" name="type" value="basic_information">
                  <div class="col-md-12">
                     <div class="panel panel-default">
                        <div class="panel-heading">Business Info</div>
                        <div class="panel-body">
                           <div class="row">
                              <div class="col-md-6">{{textbox($errors,'Business Name*','business_name',$business_name)}}</div>
                              <div class="col-md-6">{{textbox($errors,'Company*','company',$company)}}</div>
                              <div class="col-md-6">{{textbox($errors,'Phone number*','phone_number',$phone_number)}}</div>
                              <div class="col-md-6">{{textbox($errors,'Website*','website',$website)}}</div>
                              <div class="col-md-12">{{textbox($errors,'Price Start From*','min_price',$min_price)}}</div>
                              <div class="col-md-12">{{textarea($errors, 'Short Description about your Business*', 'short_description', $short_description)}}</div>
                              <div class="col-md-12">{{textarea($errors, 'Address*', 'address', $address)}}</div>
                           </div>
                        </div>
                     </div>

                     @if($category->cover_type == 1)
                     <div class="panel panel-default">
                        <div class="panel-heading">Business Cover Image</div>
                        <div class="panel-body">
                           <div class="row">
                              <div class="col-md-6">  

                              {{choosefilemultiple($errors,'Business Cover Image','cover_photo')}} 
                           </div>
                              <div class="col-md-6">
                                 <?php  if($cover_photo != ""): ?>
                                 <img src="<?= url($cover_photo) ?>" width="200">
                                 <?php endif; ?>
                              </div>
                           </div>
                        </div>
                     </div>

                     @else


                      <div class="panel panel-default">
                        <div class="panel-heading">Business Cover Video</div>
                        <div class="panel-body">
                           <div class="row">
                              <div class="col-md-6"> 
 
                            <div class="form-group">
                             <label>Business Cover Photo</label>
                             <input type="file" name="cover_video_image" class="form-control">
                             <label class="error">{{$errors->first('cover_video_image')}}</label>
                          </div>

                            </div>
                              <div class="col-md-6">  

                                     
                                      <div class="form-group">
                                         <label>Business Cover Video</label>
                                         <input type="file" name="cover_video" class="form-control">
                                          <label class="error">{{$errors->first('cover_video')}}</label>

                                      </div>

                              </div>
                              <div class="col-md-6">
                                 <?php  if($cover_video_image != ""): ?>
                                 <img src="<?= url($cover_video_image) ?>" width="100%">
                                 <?php endif; ?>
                              </div>

                              <div class="col-md-6">
                                 <?php if($cover_video != ""):?>

                                     


                                    <video width="100%" height="340" controls>
                                         <source src="<?= url($cover_video) ?>" type="video/mp4">
                                         <source src="movie.ogg" type="video/ogg">
                                         Your browser does not support the video tag.
                                       </video>

                                 <?php endif; ?>
                              </div>
                           </div>
                        </div>
                     </div>



                     @endif
                     <div class="panel panel-default">
                        <div class="panel-heading">Travelling Range</div>
                        <div class="panel-body">
                           <div class="row">
                              <div class="col-md-12">
                                 {{textbox($errors,'Max Travel Distance (In Miles)*','travel_distaince',$travel_distaince)}}
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <button class="cstm-btn" id="basicInfoBtn">Save</button>
               </form>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
@endsection
@section('scripts')
<script src="{{url('/js/validations/basicInfoValidation.js')}}"></script>
<script type="text/javascript">
   var options = {
         filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
         filebrowserWindowWidth  : 800,
         filebrowserWindowHeight : 500,
         uiColor: '#eda208',
         removePlugins: 'save, newpage',
         allowedContent:true,
         fillEmptyBlocks:true,
         extraAllowedContent:'div, a, span, section, img'
       };
   CKEDITOR.replace('addresss', options);
</script>
@endsection