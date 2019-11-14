


        <aside class="side-nav" id="show-side-navigation1">
      <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1"></i>
      <div class="dash_header">
        <a href="javascript:void(0);" class="vendor-dash-logo">
          <img src="/frontend/images/logo.svg">
        </a>
        <h4>Vendor Dashboard</h4>
      </div>
      <div class="heading">
        <figure class="user_img">
        <img src="<?= userProfileImage(Auth::User()->id) ?>" alt="">
    </figure>
        <div class="info">
          <h3><a href="#">{{ Auth::User()->name }}</a></h3>
          <p>Vendor</p>
        </div>
      </div>

      <ul class="categories">
        <li class="<?= ActiveMenu([],'opend') ?>"><a href="#"> <i class="fa fa-home fa-fw" aria-hidden="true"></i> About us</a>
          <ul class="side-nav-dropdown">
            <li><a href="#">Lorem ipsum</a></li>
            <li><a href="#">ipsum dolor</a></li>
            <li><a href="#">dolor ipsum</a></li>
            <li><a href="#">amet consectetur</a></li>
            <li><a href="#">ipsum dolor sit</a></li>
          </ul>
        </li>

   @if(Auth::User()->services->count() > 0) 
       @foreach(Auth::User()->services as $cate)
       <li class="{{ Request::route('slug') === $cate->category->slug ? 'opend active' : '' }}"><a href="javascript:void();"> 
         <i class="fa fa-support fa-fw"></i> {{$cate->category->label}}</a>
          <ul class="side-nav-dropdown" style="display: {{ Request::route('slug') === $cate->category->slug ? 'block' : 'none' }}">
               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'vendor_category_management') ? 'active' : '' }}">
                <a href="{{url(route('vendor_category_management',$cate->category->slug))}}">Basic Information</a>
              </li>
              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_category__image_management' 
                || \Request::route()->getName() === 'vendor_category_add_image_management')) ? 'active' : '' }}">
                <a href="{{url(route('vendor_category__image_management', $cate->category->slug))}}">Photo Gallery</a>
              </li>
              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_category_videos_management'
                || \Request::route()->getName() === 'vendor_category_videos_add_management')) ? 'active' : '' }}">
                <a href="{{url(route('vendor_category_videos_management',$cate->category->slug))}}">Video Gallery</a>
              </li>

               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_faqs_management'
                || \Request::route()->getName() === 'vendor_faqsadd_management'
                || \Request::route()->getName() === 'vendor_faqsedit_management')) ? 'active' : '' }}">
                <a href="{{url(route('vendor_faqs_management',$cate->category->slug))}}">FAQs</a>
              </li>


              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'vendor_description_management') ? 'active' : '' }}">
                <a href="{{url(route('vendor_description_management',$cate->category->slug))}}">Description</a>
              </li>

              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'vendor_style_management') ? 'active' : '' }}">
                <a href="{{url(route('vendor_style_management',$cate->category->slug))}}">Styles</a>
              </li>

               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_services_management') ? 'active' : '' }}">
                   <a href="{{url(route('get_vendor_services_management',$cate->category->slug))}}">Services</a>
              </li>

                <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_amenity_management') ? 'active' : '' }}">
                   <a href="{{url(route('get_vendor_amenity_management',$cate->category->slug))}}">Amenites</a>
              </li>
                <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_event_management') ? 'active' : '' }}">
                   <a href="{{url(route('get_vendor_event_management',$cate->category->slug))}}">Event Type & Games</a>
              </li>
              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'vendor_packages_management') ? 'active' : '' }}">
                   <a href="{{url(route('vendor_packages_management',$cate->category->slug))}}">Packages</a>
              </li>
          </ul>
        </li>
       
                       

      @endforeach

    @endif



        
        <li class="<?= ActiveMenu(['vendor_profile', 'vendor_password'],'opend active') ?>"><a href="#"> <i class="fa fa-envelope fa-fw"></i>Settings</a>
          <ul class="side-nav-dropdown" style="display: <?= ActiveMenu(['vendor_profile', 'vendor_password'],'block') ?>;">
           
                        <li class="<?= ActiveMenu(['vendor_profile'],'active') ?>">
                            <a href="{{url(route('vendor_profile'))}}">
                           
                            Profile Settings </a>
                        </li>


                         <li class="<?= ActiveMenu(['vendor_password'],'active') ?>">
                            <a href="{{url(route('vendor_password'))}}">
                            
                            Password Settings </a>
                        </li>
          </ul>
        </li>
         
        
         
        <li><a href="{{url('/logout')}}"> <i class="fa fa-power-off"></i>Logout</a></li>
      </ul>
    </aside>
    











