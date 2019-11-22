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
                <li class="breadcrumb-item"><a href="{{url(route($addLink, $slug))}}">List</a></li>
                <li class="breadcrumb-item"><a href="javascript:void(0)">Add</a></li>
            </ul>
        </div>
  </div>


 



    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
            <div class="card-header">
              <h3>{{$title}} </h3>
            </div>
                 <div class="card-body">  
                     <form method="post" id="dealForm" enctype="multipart/form-data">
                          @csrf
                         <div class="row"> 
                           <div class="col-lg-6">
                            {{textbox($errors,'Title*','title')}}
                           </div>
                           <div class="col-lg-6">
                            {{datebox($errors,'Expiry Date','expiry_date')}}
                           </div>
                           <div class="col-lg-6"> 
                            {{textarea($errors,'Description*','description')}}
                           </div>
                           <div class="col-lg-6"> 
                            {{textarea($errors,'Default Message Text*','message_text')}}
                           </div>
                           <div class="col-lg-6">
                            <!-- {{choosefile($errors, 'Picture For This Deal*', 'image')}} -->

                            <div class="form-group">
                              <label class="label-file">Picture For This Deal*</label>
                               <input type="file" accept="image/*" required onchange="ValidateSingleInput(this, 'image_src')" class="form-control" name="image">
                           </div>
                           <img src="" style="display: none" id="image_src" width="200"/>
                         </div>
                         
      <!--        <div class="form-group">
                <div class="col-lg-12">
                 
                      <div class="category-radio category-title">
                      <input type="radio" name="type" value="1" id="type-parmanently" >
                           <label for="type-parmanently">Permanent promotion</label>
 
                    </div>
                    
                    

                  </div>

                   <div class="col-lg-12">
                 
                      <div class="category-radio category-title">
                      <input type="radio" name="type" value="0" id="type-parmanently" >
                           <label for="type-parmanently">Permanent promotion</label>
 
                    </div>
                    
                    

                  </div>


</div> -->







                         <div class="form-group mt-4"><button class="cstm-btn">Save</button></div>
                   </form>
                </div>
           </div>
         </div>
     </div>
 </div>
 
</div>
@endsection

@section('scripts')
<script src="{{url('/js/validations/dealValidation.js')}}"></script>
<script src="{{url('/js/validations/imageShow.js')}}"></script>
@endsection
