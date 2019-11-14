@extends('layouts.vendor')
@section('vendorContents')


<div class="container-fluid">
    <div class="row">
       <div class="col-lg-12">
          <div class="card vendor-dash-card">
       <div class="card-header"><h3>{{$title}}   <a href="{{url(route('vendor_faqsadd_management',$slug))}}" class="add_btn"><i class="fa fa-plus"></i></a></h3></div>
           <div class="card-body">

  <div id="faq-accordion" class="faq-accordion">
@foreach($faqs as $k => $f)
  <div class="acrdn-card">
    <div class="acrdn-header" id="headingOne">
        <button class="d-flex align-items-center justify-content-between btn btn-link collapsed" data-toggle="collapse" data-target="#{{$k}}" aria-expanded="false" aria-controls="collapseOne">          
          <h3><span class="fa-stack fa-sm">
            <i class="fas fa-circle fa-stack-2x"></i>
            <i class="fas fa-plus fa-stack-1x fa-inverse"></i>
          </span><!-- <span class="question-count">{{($k + 1)}}</span> --> {{$f->question}}</h3>          
        </button>
        <ul class="acrdn-action-btns">
          

 

          <li><a href="{{ route('vendor_faqsedit_management',[$category->slug,$f->id])}}" class="action_btn primary-btn"><i class="fas fa-pencil-alt"></i></a></li>
          <li><a href="{{ url(route('vendor_faq_del_management',[$category->slug,$f->id]))}}" class="action_btn danger-btn"><i class="fas fa-trash-alt"></i></a></li>
        </ul>
    </div>
    <div id="{{$k}}" class="collapse" aria-labelledby="headingOne" data-parent="#faq-accordion">
      <div class="card-body">
          <h3>Answer</h3>
         <p>{!! $f->answer !!}</p>
      </div>
    </div>
  </div>
  @endforeach
</div> 

</div>
</div>
</div>
</div>
</div>






{{$faqs->links()}}
   
@endsection
