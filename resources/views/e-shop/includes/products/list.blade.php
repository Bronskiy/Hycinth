








@foreach($products as $product)





 <div class="col-lg-4 col-md-6">
          <div class="product-card">
              <div class="badge">Hot</div>
              <div class="product-tumb">
                  <img src="{{$product->thumbnail != null ? url($product->thumbnail) : ''}}" alt="">
              </div>
              <div class="product-details">                              
                  <h4><a href="{{url(route('shop.product.detail.page',$product->slug))}}">{{$product->name}}</a></h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero, possimus nostrum!</p>
                  <div class="product-bottom-details">
                      <div class="product-price"><small>$96.00</small>$230.99</div>
                      <div class="product-links">
                          <a href=""><i class="fa fa-heart"></i></a>
                          <a href=""><i class="fa fa-shopping-cart"></i></a>
                      </div>
                  </div>
              </div>
          </div>
 </div>









@endforeach







