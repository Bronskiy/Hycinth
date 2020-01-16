@extends('layouts.admin')
 
@section('content')
 <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
               <h1>{{$title}} </h1> 
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active"><a href="{{ url('master/') }}">Dashboard</a></li>
              <li class="breadcrumb-item "><a href="{{ url($addLink) }}">Add</a></li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
       <section class="content">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <!-- /.card-header -->
        
        @include('admin.error_message')
 
            <div class="card-body">
              <table id="example2" class="table table-bordered table-hover">
                <thead>
                <tr>
                  
                 
                  <th>Name</th>
                  <th>Status</th>
                  <th width="120">Action</th>
                </tr>
                </thead>
                <tbody>
                 
                 
                </tbody>
              </table>
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

    
      

<script type="text/javascript">
 
 
$(function() { 
        var i=1;
    $('#example2').DataTable({
         
        processing: true,
        serverSide: true,
        ajax: '<?= $ajaxLink ?>',
        columns: [
            
             { data: 'name', name: 'name' },
            
             { data: 'status', name: 'status' },
             { data: 'action', name: 'action' },

             

             
        ]
       
    });


});
 

</script>
     
@endsection
