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
                    <li class="breadcrumb-item"><a href="{{ route('list_vendors') }}">Vendors</a></li>
                    <li class="breadcrumb-item"><a href="javascript:void(0);">Business</a></li>
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
                        <div class="table-responsive">
                          @include('admin.error_message')
                            
                            @if(count($vendor->services))
                            <table id="businessTable" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Business Name</th>
                                    <th>Services</th>      
                                    <th>Status</th>    
                                    <th>Action</th>               
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($vendor->services as $service)
                                <tr>
                                    <td>{{ $service->title ? $service->title : 'N/A' }}</td>
                                    <td>
                                        {{ $service->category->label }} 
                                        @if(count($service->subcategory))
                                            @foreach($service->subcategory as $subcat)
                                                {{$subcat->title}}
                                            @endforeach
                                        @endif
                                    </td>
                                    <td>
                                          @if($service->status == 2)
                                            <button type="button" class="btn btn-warning">Pending</button>
                                          @endif

                                          @if($service->status == 3)
                                            <button type="button" class="btn btn-success">Approved</button>
                                          @endif

                                          @if($service->status == 4)
                                            <button type="button" class="btn btn-danger">Rejected</button>
                                          @endif      
                                    </td>
                                    <td>
                                         <div class="btn-group">
                                        <button type="button" class="btn btn-primary">Action</button>
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <span class="caret"></span>
                                        <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <div class="dropdown-menu" role="menu" x-placement="top-start" style="position: absolute; transform: translate3d(67px, -165px, 0px); top: 0px; left: 0px; will-change: transform;">
                                          
                                          @if(!empty($service->business_url))
                                          <a href="{{route('vendorBusinessView', ['slug' => $service->category->slug, 'businessSlug' => $service->business_url])}}" target="_blank" class="dropdown-item">View</a>
                                          <div class="dropdown-divider"></div>
                                          @endif

                                          @if($service->status !== 2)
                                          <a href="{{route('admin_vendor_business_changeBusinessStatus', ['vendor_id' => $vendor->id, 'id'=> $service->id, 'status' => 2])}}" class="dropdown-item">Pending</a>
                                          <div class="dropdown-divider"></div>
                                          @endif

                                          @if($service->status !== 3)
                                          <a href="{{route('admin_vendor_business_changeBusinessStatus', ['vendor_id' => $vendor->id, 'id'=> $service->id, 'status' => 3])}}" class="dropdown-item">Approved</a>
                                          <div class="dropdown-divider"></div>
                                          @endif

                                          @if($service->status !== 4)
                                          <button type="button" class="dropdown-item" style="cursor: pointer;" data-toggle="modal" data-target="#exampleModal">
                                          Rejected
                                        </button>
                                          @endif                                          

                                        </div>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach                                
                                </tbody>
                            </table>
                            
                            @else
                                No Business Available
                            @endif

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="businessRejectForm" method="POST" action="{{ route('admin_vendor_business_rejectBusinessStatus') }}">
            <div class="row">
            <div class="col-xl-12">
            <div class="form-group">
              <label for="comment">Comment</label>
              <textarea class="form-control" rows="5" id="comment"></textarea>
            </div>
            </div> 
            <div class="col-xl-6">
                <div class="form-group">      
                  <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" name="type" id="ame" value="amenity">
                  <label class="custom-control-label" for="ame">Amenity</label>
                </div>
                  <textarea class="form-control" rows="2" id="comment"></textarea>
               </div> 
           </div>
           <div class="col-xl-6">
                <div class="form-group">      
                  <div class="custom-control custom-checkbox">
                  <input type="checkbox" class="custom-control-input" name="type" id="faq" value="amenity">
                  <label class="custom-control-label" for="faq">Faq</label>
                </div>
                  <textarea class="form-control" rows="2" id="commentf"></textarea>
               </div> 
           </div>
           
       </div>
            
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

@endsection

@section('scripts')   
<script type="text/javascript">
    $(document).ready(function() {
    $('#businessTable').DataTable();
} );
</script>  
@endsection
