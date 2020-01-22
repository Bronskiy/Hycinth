<style type="text/css">
.variableBox {
	    background: #36496c;
	    margin: 0px;
	    padding: 0px 0;
	    position: relative;
}

.variableBox ul.sideUl li a {
        display: block;
	    border-radius: 0px;
	    margin: 0px;
	    text-align: left;
	    border-bottom: 1px solid #4c5567;
}

.variableBox ul.sideUl {
    min-height: 211px;
    width: 100%;
}

.variableBox {
    /* background: #ddd; */
}
.outerWraps{
	background: #f2f2f2;
    min-height: 400px;

}
.variableBox h3{
	    background: #2b3a56;
    margin: 0 -15px;
    padding: 8px 20px;
    color: #fff;
}
.variableBox h3 select{
	padding: 3px;
	font-size: 12px;
}
.loader3 {
      position: absolute;
    z-index: 999;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    background: #e8e8e87d;
    text-align: center;
    padding: 20%;
    display: none;
}

.loader3 img {
    width: 89px;
}
</style>


<div class="row variableBox">
	<div class="loader3"><img src="{{url('Reload-1s-200px.webp')}}"></div>
	  <div class="col-md-12">
		  	<h3>Product Variations
                    <select name="variation_type" id="variationType">
	          	       <option value="0">Simple Product</option>
	          	       <option value="1">Variable Product</option>
	               </select>
            </h3>
	 </div>
     <div class="col-md-3">
     	   <div class="row">
              <ul class="sideUl">
              	 <li><a href="javascript:void(0)" class="btn btn-primary navVariant active nav-general" data-show="#generalBox">General</a></li>
              	 <li><a href="javascript:void(0)" class="btn btn-primary navVariant nav-inventory" data-show="#inventoryBox">Inventory</a></li>
              	 <li><a href="javascript:void(0)" class="btn btn-primary navVariant nav-attributes" data-show="#attributeBox">Attributes</a></li>
              	 <li><a href="javascript:void(0)" class="btn btn-primary navVariant nav-variation" data-show="#variationBox">Variations</a></li>
              </ul>
            </div>
     </div>

     <div class="col-md-9">
     	 <div class="row outerWraps">
     	 	 <div class="col-md-12">
     	 	 	 <div class="innerWraps">
                      <div class="col-md-12" id="generalBox"></div>
                      <div class="col-md-12" id="inventoryBox"></div>
                      <div class="col-md-12" id="attributeBox"></div>
                      <div class="col-md-12" id="variationBox"></div>
		     	</div>
             </div>
         </div>
     </div>
</div>

<div class="row">



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




 
</div>
