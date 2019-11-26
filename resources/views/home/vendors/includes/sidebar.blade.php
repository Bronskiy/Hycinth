<div class="col-lg-3 col-md-4 range eventside-bar">
    <form id="BusinessListingFilter" action="{{url(route('get_all_businesses'))}}">
                        <div id="accordion">
                            <div class="card">
                                <div class="card-header">
                                    <a class="card-link collapsed" data-toggle="collapse" href="#collapseOne" aria-expanded="false">
                                        category
                                    </a>
                                </div>


                                @if(Request::has('category_id'))
                                    <input type="hidden" name="vendors[]" value="{{Request::get('category_id')}}">
                                @endif
                                <div id="collapseOne" class="collapse" data-parent="#accordion">

                                 @foreach($categories as $category)
                                     <div class="card-body listing sub-head">
                                         <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input businesses" name="vendors[]" id="customCheck{{$category->id}}" value="{{$category->id}}"
                                            {{checkCategoryWithRequest('vendors',$category->id)}}>
                                            <label class="custom-control-label" for="customCheck{{$category->id}}">{{$category->label}}</label>
                                          </div>
                                    </div>
                                    <div class="sub-cat-wrap">
                                   @foreach($category->subcategory as $subcategory)
                                  
                                     <div class="card-body listing">
                                           
                                          <div class="custom-control custom-checkbox">
                                            <input type="checkbox" class="custom-control-input businesses" name="vendors[]" value="{{$subcategory->id}}" id="customCheck{{$subcategory->id}}"  >
                                            <label class="custom-control-label" for="customCheck{{$subcategory->id}}">{{$subcategory->label}}</label>
                                          </div>

                                    </div>

                                    @endforeach
                                </div>
                                 @endforeach
                                   
                                </div>
                            </div>

                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
                                        Availability
                                    </a>
                                </div>
                                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <div class="form-group">
                                            <input type="text" id="" class="form-control available" placeholder="Select Date">
                                            <span class="input-icon date"><i class="far fa-calendar"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapsefour">
                                        Price Range
                                    </a>
                                </div>
                                <div id="collapsefour" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <div class="wrap1">
                                            <div class="checkboxwrap">
                                                <form>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb11">
                                                        <label for="cb11"> Under $1,000</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb2">
                                                        <label for="cb2"> $1,000 - $1,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb3">
                                                        <label for="cb3"> $2,000 - $2,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb4">
                                                        <label for="cb4"> $3,000 - $3,999</label>
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="checkbox" id="cb5">
                                                        <label for="cb5"> $4,000+</label>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="card">
                                <div class="card-header">
                                    <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
                                        Services
                                    </a>
                                </div>
                                <div id="collapseThree" class="collapse" data-parent="#accordion">
                                    <div class="card-body listing">
                                        <form>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb11211">
                                                <label for="cb11211"> Additional Hours</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb112">
                                                <label for="cb112"> Boudoir Shoot</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb113">
                                                <label for="cb113"> Destination / Travel</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb114">
                                                <label for="cb114"> Engagement Shoot</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb115">
                                                <label for="cb115"> High-Res Images</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="checkbox" id="cb116">
                                                <label for="cb116"> One Event / Day</label>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    </div>