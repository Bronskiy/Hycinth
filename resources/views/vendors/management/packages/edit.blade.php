 


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
          {{textbox($errors,'Title*','title', $package->title)}}
          {{textbox($errors,'Amount*','amount', $package->amount)}}
          {{textarea($errors,'Description*','description', $package->description)}}

          <div class="form-group label-floating is-focused">
            <label class="control-label">Status*</label>
            <input type="radio" name="status" value="1" {{ $package->status === 1 ? 'checked' : '' }}> Active
           <input type="radio" name="status" value="0" {{$package->status === 0 ? 'checked' : ''}}> Inactive
          </div>


           

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
  CKEDITOR.replace('description');
</script>
@endsection
