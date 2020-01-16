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
                                        <li class="breadcrumb-item "><a href="{{ url($addLink) }}">View</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>


       <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
         @include('admin.error_message')
 
            <div class="card-body">

 


  <form role="form" id="formVariations" action="{{ route('admin.products.category.variation',$category->id) }}" method="POST" class="row categoryVariants">
      @csrf

        

        <div class="col-lg-4">
                <h3 class="card-title">Choose Brands</h3>
                <ul class="unstyled centered">
                  <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" onclick="allCheck(this)" id="checkbox-amenity-all" type="checkbox" >
                          <label class="custom-control-label" for="checkbox-amenity-all">All</label>
                      </div>
                    </li>

                 @foreach($variations->getWIthType('brands') as $brand)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="brands[]" id="styled-checkbox-event-{{$brand->id}}" type="checkbox" value="{{$brand->id}}" 
                          {{$CategoryVariation->hasSameValue($category->id,'brands',$brand->id,'checked')}}>
                          <label class="custom-control-label" for="styled-checkbox-event-{{$brand->id}}">{{$brand->name}}</label>
                      </div>
                    </li>
                  @endforeach
                  
                  
                </ul>
        </div>

        <div class="col-lg-4">
                <h3 class="card-title">Choose Sizes</h3>
                <ul class="unstyled centered">
                  <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" onclick="allCheck(this)" id="checkbox-game-all" type="checkbox" >
                          <label class="custom-control-label" for="checkbox-game-all">All</label>
                      </div>
                    </li>


                 @foreach($variations->getWIthType('sizes') as $brand)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="sizes[]" id="styled-checkbox-sizes-{{$brand->id}}" type="checkbox" value="{{$brand->id}}"
                          {{$CategoryVariation->hasSameValue($category->id,'sizes',$brand->id,'checked')}}>
                          <label class="custom-control-label" for="styled-checkbox-sizes-{{$brand->id}}">{{$brand->name}}</label>
                      </div>
                    </li>
                  @endforeach
                 
                  
                </ul>
        </div>

        <div class="col-lg-4">
                <h3 class="card-title">Choose Styles</h3>
                <ul class="unstyled centered">
                  <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" onclick="allCheck(this)" id="checkbox-season-all" type="checkbox" >
                          <label class="custom-control-label" for="checkbox-season-all">All</label>
                      </div>
                    </li>


                  @foreach($variations->getWIthType('styles') as $brand)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="styles[]" id="styled-checkbox-styles-{{$brand->id}}" type="checkbox" value="{{$brand->id}}"
                          {{$CategoryVariation->hasSameValue($category->id,'styles',$brand->id,'checked')}}>
                          <label class="custom-control-label" for="styled-checkbox-styles-{{$brand->id}}">{{$brand->name}}</label>
                      </div>
                    </li>
                  @endforeach
                 
                  
                  
                </ul>
        </div>




         <div class="col-lg-4">
                <h3 class="card-title">Choose Colors</h3>
                <ul class="unstyled centered">
                  <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" onclick="allCheck(this)" id="checkbox-color-all" type="checkbox" >
                          <label class="custom-control-label" for="checkbox-color-all">All</label>
                      </div>
                    </li>


                  @foreach($variations->getWIthType('colors') as $brand)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="colors[]" id="styled-checkbox-colors-{{$brand->id}}" type="checkbox" value="{{$brand->id}}"
                          {{$CategoryVariation->hasSameValue($category->id,'colors',$brand->id,'checked')}}>
                          <label class="custom-control-label" for="styled-checkbox-colors-{{$brand->id}}">{{$brand->name}}</label>
                      </div>
                    </li>
                  @endforeach
                 
                  
                  
                </ul>
        </div>


         <div class="col-lg-4">
                <h3 class="card-title">Choose Materials</h3>
                <ul class="unstyled centered">
                  <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" onclick="allCheck(this)" id="checkbox-materials-all" type="checkbox" >
                          <label class="custom-control-label" for="checkbox-materials-all">All</label>
                      </div>
                    </li>


                  @foreach($variations->getWIthType('materials') as $brand)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="materials[]" id="styled-checkbox-materials-{{$brand->id}}" type="checkbox" value="{{$brand->id}}"
                          {{$CategoryVariation->hasSameValue($category->id,'materials',$brand->id,'checked')}}>
                          <label class="custom-control-label" for="styled-checkbox-materials-{{$brand->id}}">{{$brand->name}}</label>
                      </div>
                    </li>
                  @endforeach
                 
                  
                  
                </ul>
        </div>




<div class="col-md-12">
      <div class="card-footer">
          <button type="submit" id="btnVariations" class="btn btn-primary">Submit</button>

          <div class="messageNotofications"></div>
        </div>
      </div>
</form>
            
            </div>
          </div>
        </div>
      </div>
    </section>

 
     
@endsection

@section('scripts')
<script src="{{url('/admin-assets/js/validations/variationsValidation.js')}}"></script>
<script type="text/javascript">

  // $("#checkbox-season-all").click(function() {
  //   $(this).closest('li').nextAll().find('input[type=checkbox]').not(this).prop('checked', this.checked);
  // });

  function allCheck(tagData) {
    $(`#${tagData.id}`).parent().parent().parent().find('.error').css('display', 'none');
    $(`#${tagData.id}`).closest('li').nextAll().find('input[type=checkbox]').not(`#${tagData.id}`).prop('checked', $(`#${tagData.id}`).prop("checked"));
  }






$("body").on('submit','#formVariations',function(e){
    e.preventDefault();
      var $this = $( this );
      $.ajax({
               url :"{{ route('admin.products.category.variation',$category->id) }}",
               data : $this.serialize(),
               type: 'POST',   
               dataTYPE:'JSON',
               headers: {
                 'X-CSRF-TOKEN': $('input[name=_token]').val()
               },
                beforeSend: function() {
                     $this.find('button').attr('disabled','true');
                     $("body").find('.custom-loading').show();
                },
                success: function (result) {
                   if(result.status == 1){
                            $this.find('button.cstm-btn').removeAttr('disabled');
                            $this[0].reset();
                            $("body").find('.custom-loading').hide();
                            $this.find('.messageNotofications').html(ErrorMsg('success',result.messages));
                            setTimeout(function () {
                                 $this.find('.messageNotofications').html('');
                                 $("body").find('#CstmPackage').modal('hide');
                                 window.location.reload();
                            },1000);
 
                    }else{
                         $this.find('.messageNotofications').html(ErrorMsg('warning','Something wrong'));
                         $("body").find('.custom-loading').hide();
                        $this.find('button.cstm-btn').removeAttr('disabled');
                    }
                 },
                complete: function() {
                        $("body").find('.custom-loading').hide();
                },
                error: function (jqXhr, textStatus, errorMessage) {
                     
                }

      });
});







function ErrorMsg(type,message){

      var txt  ='';
          txt +='<div class="alert alert-'+type+'" role="alert">';
          txt +=message;
          txt +='</div>';

          return txt;
}








</script>
@endsection
 
