
@if(empty($withHeader))
 <div class="variationItemOneOfList">
  <div class="row">
		         <div class="col-md-11">
		         	<div class="row variationLabeled">
			         	  @foreach($product->variationAttributes->where('product_variant',1) as $parent)
	                            <div class="col-md-3 text-center"><label class="">{{$parent->type}}</label></div>
			         	  @endforeach
		         	 </div>
		          </div>
  </div>
 @endif
  <div class="card">
    <div class="card-header" id="headingOne">
	        <div class="row variation-header-wraper">
		         <div class="col-md-11">
		         	 
			          <div class="row">

							@foreach($product->variationAttributes->where('product_variant',1) as $parent)
								@php 
						             $type = $parent->type;
								     $childAttributes = $parent->childAttributes->pluck('value')->toArray();
								     $variations = $product->subcategory->ProductVariationWithType->where('type',$type);
								@endphp
					        <div class="col-md-3">
					            <div class="form-group">
					                         <select name="variations[{{$type}}][]" class="form-control">
					                              <option value="">{{$type}}</option>
					                         	@foreach($parent->childAttributes as $v)
					                         	     <option value="{{$v->variation->id}}">{{$v->variation->name}}</option>
					                         	@endforeach
					                         </select>
					            </div>
					        </div>

					        @endforeach
					   </div>
		         </div>
		         <div class="col-md-1 text-right">
		             <a href="#" data-toggle="collapse" data-target="#collapseTypeVariation{{$variationCount}}" aria-expanded="false" aria-controls="collapseTypeVariation{{$variationCount}}">
		               <i class="fas fa-list"></i>
		            </a>
		         </div>
	      </div>
         </div>

           <div id="collapseTypeVariation{{$variationCount}}" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
               <div class="card-body">

               </div>
           </div>
   </div>

  </div>


  <div class="row ">
	<div class="col-md-12 text-right">
   <button type="button" class="btn btn-primary pull-right addMoreVariationAttributes" 
		   data-action="{{url(route('vendor.shop.variations.add.attributes',$product->id))}}"
		   data-count="{{$variationCount}}"
   >Add More Variation</button>
  </div>
</div>