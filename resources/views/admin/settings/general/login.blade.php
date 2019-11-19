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
                    <li class="breadcrumb-item "><a href="{{ route($addLink) }}">View</a></li>
                    <li class="breadcrumb-item "><a href="javascript:void(0)">Edit</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

       <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
       @include('admin.error_message')
 
            <div class="card-body">



<div class="col-md-12">

  <form role="form" id="loginForm" method="post" enctype="multipart/form-data">
      @csrf
      <input type="hidden" name="type" value="{{Request::route('id')}}">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Login</h5>
           {{textbox($errors, 'Title*', 'login_title', $login_title)}}
           {{textbox($errors, 'Heading*', 'heading', $heading)}}
            <div class="col-md-12">

                          {{choosefilemultiple($errors,'Logo','login_banner')}}


                          <script type="text/javascript">
                                     $('#logo').fileinput({
                                             'theme': 'explorer-fas',
                                              headers: {
                                                   'X-CSRF-TOKEN': $('input[name=_token]').val()
                                              },
                                             'uploadUrl': '{{url(route("meta_images"))}}?meta=login_banner&type={{Request::route("id")}}',
                                              overwriteInitial: false,
                                               previewFileIcon: '<i class="fas fa-file"></i>',
                                              initialPreviewAsData: true,
                                              initialPreview: [
                                                 <?php  if($login_banner != ""): ?>

                                                        '<?= url($login_banner) ?>',

                                                 <?php endif; ?>
                                              ],
                                              initialPreviewConfig: [

                                                 <?php if($login_banner != ""): ?>
                                                        {
                                                          'caption' : 'product_image',
                                                           'url' : '',
                                                           'key'     : 'login_banner'
                                                        },
                                                 <?php endif; ?>

                                              ]
                                });
                          </script>
                       </div>

           {{textarea($errors, 'Description*', 'description', $description)}}
        </div>
      </div>

                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" id="loginFormBtn" class="btn btn-primary">Submit</button>
                </div>
 </form>


</div>

            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>

 
     
@endsection




@section('scripts')
<script src="{{url('/admin-assets/js/validations/settings/loginPageValidation.js')}}"></script>
@endsection