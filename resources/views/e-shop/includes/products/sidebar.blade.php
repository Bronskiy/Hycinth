<div class="col-lg-3" id="filters-sidebar">
                   <div class="filters-sidebar">
                    <a href="javascript:void(0);" class="" id="CloseFilterCategory"><i class="fas fa-times-circle"></i></a>
                       <div id="filters-accordion">
                          <div class="card">
                            <div class="card-header" id="heading-1">
                              <h5 class="mb-0">
                                <a role="button" data-toggle="collapse" href="#collapse-1" aria-expanded="true" aria-controls="collapse-1">
                                  Categories
                                </a>
                              </h5>
                            </div>
                            <div id="collapse-1" class="collapse show" data-parent="#filters-accordion" aria-labelledby="heading-1">
                              <div class="card-body">

                                <div id="filter-sub-accordion">
                                 
                                  <div class="card">
                                    <div class="card-header" id="heading-1-2">
                                      <h5 class="mb-0">
                                        <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-1-2" aria-expanded="false" aria-controls="collapse-1-2">
                                          {{$category->categorySubparent->label}}
                                        </a>
                                      </h5>
                                    </div>
                                    <div id="collapse-1-2" class="collapse" data-parent="#filter-sub-accordion" aria-labelledby="heading-1-2">
                                      <div class="card-body">
                                        <!-- <div class="product-checkbox-list">

                                          <div class="custom-control ">
                                             <label class="custom-control-label">lorem ipsum</label>
                                          </div>
                                         
                                         </div> -->

                                         <ul>
                                          @foreach($category->categorySubparent->childCategory as $childCategory)
                                          <li class="{{$childCategory->id == $category->id ? 'active' : ''}}">
                                              <a href="{{url(route('shop.childcategory',[
                                              $childCategory->categoryParent->slug,
                                              $childCategory->categorySubparent->slug,
                                              $childCategory->slug
                                              ]))}}">
                                              {{$childCategory->label}}
                                            </a>
                                          </li>
                                          @endforeach
                                         </ul>
                                    </div>
                                    </div>
                                  </div>
                                </div>      
                              
                              </div>
                            </div>
                          </div>

                          <form id="ProductFilterOfSidebar" action="{{url(route('shop.ajax.product.sidebarFilter',$category->id))}}">
                           
                          <div class="card">
                            <div class="card-header" id="heading-3">
                              <h5 class="mb-0">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-3" aria-expanded="true" aria-controls="collapse-3">
                                  Price Range
                                </a>
                              </h5>
                            </div>
                            <div id="collapse-3" class="collapse show" data-parent="#accordion" aria-labelledby="heading-3">
                              <div class="card-body">
                                  <ul class="price-range product-checkbox-list">
                                    <li>
                                        <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="PriceRange1">
                                            <label class="custom-control-label" for="PriceRange1">Under $1000</label>
                                          </div>
                                        </li>
                                        <li><div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="PriceRange2">
                                            <label class="custom-control-label" for="PriceRange2">$1,000 - 1,999</label>
                                          </div>
                                        </li>
                                        <li><div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="PriceRange3">
                                            <label class="custom-control-label" for="PriceRange3">$2,000 - $2,999</label>
                                          </div>
                                        </li>
                                        <li><div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="PriceRange4">
                                            <label class="custom-control-label" for="PriceRange4">$3,000 - $3,999</label>
                                          </div>
                                        </li>
                                        <li><div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input" id="PriceRange5">
                                            <label class="custom-control-label" for="PriceRange5">$4,000 +</label>
                                          </div>
                                        </li>
                                  </ul>
                              </div>
                            </div>
                          </div>

                          <div class="card">
                            <div class="card-header" id="heading-4">
                              <h5 class="mb-0">
                                <a class="collapsed" role="button" data-toggle="collapse" href="#collapse-4" aria-expanded="true" aria-controls="collapse-4">
                                  Select colors
                                </a>
                              </h5>
                            </div>
                            <div id="collapse-4" class="collapse show" data-parent="#accordion" aria-labelledby="heading-4">
                              <div class="card-body">
                                <ul class="product-colors-wrap">

                                  <li><div class="product-color-checkbox">
                                        <input type="checkbox" name="" id="productColor-1">
                                        <label for="productColor-1" class="productColor-label" style="background-color: #d1d1d1;"></label>
                                     </div>
                                 </li>
                              
                                </ul>
                              </div>
                            </div>
                          </div>


                        </form>
                        </div>
                   </div> 
                </div>