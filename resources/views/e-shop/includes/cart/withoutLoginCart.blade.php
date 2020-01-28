   
@foreach(Cart::getContent() as $item)
<?php

$Product_id = $item->attributes->product_id;
$product = \App\Models\Products\Product::find($Product_id);
$variation = \App\Models\Products\ProductAssignedVariation::find($item->attributes->variant_id);
$variation->hasVariationAttributes->groupBy('attribute_id')->pluck('attribute_id');

 ?>

                         <tr class="cart-table__row">
                                <td class="cart-table__column cart-table__column--image">
                                    <a href=""><img src="{{url($product->thumbnail)}}" alt=""></a>
                                </td>
                                <td class="cart-table__column cart-table__column--product">
                                    <a href="" class="cart-table__product-name">{{$item->name}}</a>
                                    <h4>Product Type: {{$product->product_type == 1 ? 'Variable' : 'Simple'}}</h4>
                                   
                                  @if($product->product_type == 1)
                                    <ul class="cart-table__options">
                                        @foreach($variation->hasVariationAttributes as $v)
                                        <li>{{$v->parentVariation->variations->name}}: <b class="bText">{{$v->parentVariation->name}}</b></li>
                                        @endforeach
                                        
                                    </ul>
                                 @endif
                                </td>
                                <td class="cart-table__column cart-table__column--price" data-title="Price">
                                   ${{custom_format($item->price,2)}}    

                                </td>
                                <td class="cart-table__column cart-table__column--quantity" data-title="Quantity">
                                    <div class="input-number">
                                        <input class="form-control input-number__input" 
                                        type="number" min="1" value="{{$item->quantity}}">
                                        <a 
                                        class="input-number__sub cartItemQty"
                                        data-type="sub"
                                        data-id="{{$item->id}}"
                                        >
                                          <i class="fas fa-minus"></i>
                                        </a>
                                        <a 
                                        class="input-number__add cartItemQty {{$item->quantity == 1 ? 'disabled-type' : ''}}"
                                        data-type="add"
                                        data-id="{{$item->id}}"
                                        >
                                         <i class="fas fa-plus"></i>
                                        </a>
                                    </div>
                                </td>
                                <td class="cart-table__column cart-table__column--total" data-title="Total">
                                        ${{custom_format($item->getPriceSum(),2)}} 
                                </td>
                                <td class="cart-table__column cart-table__column--remove">
                                    <a href="javascript" class="btn btn-light btn-sm btn-svg-icon cartItemQty"
                                        data-type="remove"
                                        data-id="{{$item->id}}"
                                    >
                                       <i class="fas fa-trash-alt"></i>
                                    </a>
                                </td>
                          </tr>









 @endforeach


