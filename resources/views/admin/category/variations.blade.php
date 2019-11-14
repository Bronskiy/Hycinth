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


@php
 $sel_evt= array(); 
 $sel_amenities= array(); 
 $sel_games= array(); 
@endphp

@if(count($category_variation))
@foreach($category_variation as $fillCategory)
@if($fillCategory->type == 'event')
@php $sel_evt[] = $fillCategory->variant_id; @endphp  
@elseif($fillCategory->type == 'amenity')
@php $sel_amenities[] = $fillCategory->variant_id; @endphp
@else
@php $sel_games[] = $fillCategory->variant_id; @endphp
@endif
@endforeach
@endif



  <form role="form" id="formVariations" action="{{ route('category_variations_save', ['slug' => $category->slug]) }}" method="POST" class="row categoryVariants">
      @csrf

        <div class="col-lg-4">
                <h3 class="card-title">Choose Events</h3>
                <ul class="unstyled centered">
                  @foreach($events as $event)  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="events[]" id="styled-checkbox-event-{{$event->id}}" type="checkbox" value="{{$event->id}}" {{ !empty($sel_evt) && in_array($event->id, $sel_evt) ? 'checked' : '' }}>
                          <label class="custom-control-label" for="styled-checkbox-event-{{$event->id}}">{{$event->name}}</label>
                      </div>
                    </li>
                  @endforeach
                  
                </ul>
        </div>

        <div class="col-lg-4">
                <h3 class="card-title">Choose Amenities</h3>
                <ul class="unstyled centered">
                  @foreach($amenities as $amenity)
  
                    <li>
                       <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="amenities[]" id="styled-checkbox-amenity-{{$amenity->id}}" type="checkbox" value="{{$amenity->id}}" {{ !empty($sel_amenities) && in_array($amenity->id, $sel_amenities) ? 'checked' : '' }}>
                          <label class="custom-control-label" for="styled-checkbox-amenity-{{$amenity->id}}">{{$amenity->name}}</label>
                      </div>
                    </li>

                  @endforeach
                  
                </ul>
        </div>

        <div class="col-lg-4">
                <h3 class="card-title">Choose Games</h3>
                <ul class="unstyled centered">
                  @foreach($games as $game)
  
                    <li>
                         <div class="custom-control custom-checkbox">
                          <input type="checkbox" class="custom-control-input" name="games[]" id="styled-checkbox-game-{{$game->id}}" type="checkbox" value="{{$game->id}}" {{ !empty($sel_games) && in_array($game->id, $sel_games) ? 'checked' : '' }}>
                          <label class="custom-control-label" for="styled-checkbox-game-{{$game->id}}">{{$game->name}}</label>
                      </div>
                    </li>

                  @endforeach
                  
                </ul>
        </div>

<div class="col-md-12">
      <div class="card-footer">
          <button type="submit" id="btnVariations" class="btn btn-primary">Submit</button>
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
@endsection
 
