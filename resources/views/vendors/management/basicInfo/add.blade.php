@extends('vendors.management.layout')
@section('vendorContents')

<div class="container-fluid">
    <div class="row">
       <div class="col-lg-8 offset-lg-2">
          <div class="card vendor-dash-card">
            <div class="card-header"><h3>{{$title}}</h3></div>
                <div class="card-body">

<!-- 
<h3>   <a href="{{url(route('vendor_faqsadd_management',$slug))}}"><i class="fa fa-plus"></i></a></h3> -->
 

     <div class="col-md-12"> 
          <form method="post">
			     @csrf
			     <input type="hidden" name="type" value="basic_information">
           {{textbox($errors,'Business Name*','business_name',$business_name)}}

           {{textbox($errors,'Website*','website',$website)}}
           {{textbox($errors,'Phone number*','phone_number',$phone_number)}}
           {{textbox($errors,'Company*','company',$company)}}
           {{textbox($errors,'Max Travel Distance*','travel_distaince',$travel_distaince)}}
           {{textbox($errors,'Price Start From*','min_price',$min_price)}}
           {{textarea($errors,'Address*','address',$address)}}
  
            <button class="cstm-btn">Save</button>
      </form>                 

    </div>
    </div>
   </div>
  </div>
  </div>
</div>
 
</div>
@endsection

@section('scripts')
<script type="text/javascript">
  CKEDITOR.replace('address');
</script>
@endsection
