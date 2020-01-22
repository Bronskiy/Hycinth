




@foreach($product->subcategory->ProductVariations as $v)


		<div class="col-md-6">
		       <label>{{$v->variations->name}}</label>
                <select name="{{$v->variations->type}}" class="form-control">
               	              <option value="">choose</option>  
	                           @foreach($v->variationTypes as $cate)
	                               <option value="{{$cate->variation->id}}">{{$cate->variation->name}}</option>  
	                           @endforeach
		        </select>
        </div>


@endforeach





















