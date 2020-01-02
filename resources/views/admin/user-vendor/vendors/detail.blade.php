@extends('layouts.admin')

 
 
@section('content')
<div class="page-header">
    <div class="page-block">
        <div class="row align-items-center">
            <div class="col-md-12">
                <div class="page-header-title">
                    <h5 class="m-b-10">{{$title}}</h5>
                </div>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url(route('admin_dashboard'))}}"><i class="feather icon-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Vendors</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

                    <!-- [ breadcrumb ] end -->
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                            <div class="row">
                                <!-- [ Hover-table ] start -->
                                <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>{{$title}}</h5>
                                        </div>
                                        <div class="card-block table-border-style">
                                                 @include('admin.error_message')
                                            <table class="table">
                                                <tr>
                                                    <th width="150">Name</th><th>{{$vendor->name}}</th>
                                                </tr>

                                                 <tr>
                                                    <th>Email</th><th>{{$vendor->email}}</th>
                                                </tr>

                                                 <tr>
                                                    <th>Phone Number</th><th>{{$vendor->phone_number}}</th>
                                                </tr>

                                                <tr>
                                                    <th>Location</th><th>{{$vendor->user_location}}</th>
                                                </tr>

                                                <tr>
                                                    <th>Website</th><th><a href="{{$vendor->website_url}}">{{$vendor->website_url}}</a></th>
                                                </tr>

                                                <tr>
                                                    <th>Age</th><th>{{$vendor->age}} Yrs</th>
                                                </tr>

                                                
                                            </table>
                                              <table class="table">
                                                  <tr>
                                                      <th class="bg-warning">Sr.no</th><th class="bg-warning">Document</th><th class="bg-warning">Link</th>
                                                  </tr>
                                                   <tr>
                                                      <td>1</td>
                                                      <td>EIN|BS Number</td>
                                                      <td>{{$vendor->ein_bs_number}}</td>
                                                  </tr>

                                                 @if($vendor->id_proof != "")
                                                  <tr>
                                                      <td>2</td><td>ID Proof</td>
                                                      <td><a href="{{url($vendor->id_proof)}}">View</a></td>
                                                  </tr>
                                                  @endif
                                              </table>

                                          <div class="row">
                                               <div class="col-md-12">
                                                 
                                                     <div class="panel panel-default">
                                                      <div class="panel-heading">
                                                        <h3 class="panel-title">Approval Section</h3>
                                                      </div>
                                                      <div class="panel-body">
                                                        <a href="{{url(route('admin.vendor.approved',$vendor->id))}}" class="btn btn-primary">Approve</a>
                                                      </div>
                                                    </div>

                                                </div>
                                                <div class="col-md-12">


                                                    <div class="panel panel-default">
                                                      <div class="panel-heading">
                                                        <h3 class="panel-title">Rejection Section</h3>
                                                      </div>
                                                      <div class="panel-body">
                                                         <form method="post" action="{{url(route('admin.vendor.rejected',$vendor->id))}}">
                                                        @csrf
                                                        <textarea class="form-control cheditor" name="detail" required></textarea>
                                                        <button class="btn btn-primary">Rejected</button>

                                                   </form>
                                                      </div>
                                                    </div>






                                                    
                                                   

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>

@endsection

@section('scripts')
 <script>
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
   CKEDITOR.replace('detail', options);
</script>
     
@endsection