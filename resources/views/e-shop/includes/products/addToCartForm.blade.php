 
@if($product->product_type == 1)



<?php

$assigned = $product->cartOptions();
 $i=0
 ?>



@foreach($assigned as $type => $val)
<?php
$attributes = App\Models\Products\ProductVariation::whereIn('id',$val)->where('type',$type);
?>
 <h5 class="sizes">
{{$type}}
  <ul class="ctm-type-{{$type}}">
@foreach($attributes->get() as $k => $item)

        <li>
            <div class="size-btn">
              <input type="radio" 
                      name="{{$type}}" 
                      value="{{$item->id}}" 
                      id="filter-{{$type}}-{{$item->id}}"
                      data-type="{{$type}}"
                      class="filterType" 
                      {{$k == 0 ? 'checked' : ''}}>
                      <label for="filter-{{$type}}-{{$item->id}}">{{$item->name}}</label>
            </div>
         </li>

@endforeach
</ul>
 </h5> 

<?php $i++; ?>
@endforeach






         <!--  @foreach($product->ProductAttributeVariableProduct as $attribute)
 
            <h5 class="sizes">{{$attribute->type}}: <label></label>
              <ul class="ctm-type-{{$attribute->type}}">
              @foreach($attribute->childAttributes as $k => $item)
                      <?php $attributes = json_decode($item->variation->data);  ?>
                        @if(!empty($attributes->color))
                           <li>
                             <div class="color-btn">
                                <input 
                                  type="radio" 
                                  name="{{$attribute->type}}" 
                                  value="{{$item->variation->id}}" 
                                  id="filter-{{$attribute->type}}-{{$item->id}}"
                                  {{$k == 0 ? 'checked' : ''}}
                                >
                                <label class="color" for="filter-{{$attribute->type}}-{{$item->id}}" 
                                  style="background:{{$attributes->color}}"></label>
                                </div>
                           </li>
                        @else
                      

                          <li>
                            <div class="size-btn" style="position:relative;">
                              <input 
                              type="radio" 
                              name="{{$attribute->type}}" 
                              value="{{$item->variation->id}}" 
                              id="filter-{{$attribute->type}}-{{$item->id}}"
                               {{$k == 0 ? 'checked' : ''}}
                              >
                              <label for="filter-{{$attribute->type}}-{{$item->id}}">{{$item->variation->name}}</label>
                            </div>
                         </li>

                      @endif
              @endforeach
            </ul>
            </h5>
          @endforeach
    
 -->

@endif