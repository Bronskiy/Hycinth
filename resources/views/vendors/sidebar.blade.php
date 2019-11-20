


        <aside class="side-nav" id="show-side-navigation1">
      <i class="fa fa-bars close-aside hidden-sm hidden-md hidden-lg" data-close="show-side-navigation1"></i>
      <div class="dash_header">
        <a href="javascript:void(0);" class="vendor-dash-logo">
          <img src="/frontend/images/logo.svg">
        </a>
        <h4>Vendor Dashboard</h4>
      </div>
      <a href="javascript:void(0);" class="heading vendor-user-pro">
        <figure class="user_img">
        <img src="<?= userProfileImage(Auth::User()->id) ?>" alt="">
    </figure>
        <div class="info">
          <h4>{{ Auth::User()->name }}</h4>
          <p>Vendor</p>
        </div>
      </a>
       <h3 class="sidebar-heading">Navigation</h3>
      <ul class="categories">
        
      </ul>


      <!-- sidebar-dropdowns -->
      <nav class="vendor-side-navigation">

    <ul class="category-menus">    



<li class="dropdown">
  <a href="{{ route('vendor_category_assign2') }}" ><i class="fa fa-support fa-fw"></i> Add New Business</a>
</li>






            <li class="dropdown open"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-support fa-fw"></i> My Businesses</a>
        <ul class="dropdown-menu">      
       @if(Auth::User()->services->count() > 0) 
       @foreach(Auth::User()->services as $cate)  
          <li class="dropdown dropdown-submenu {{ ActiveRouteMenu($cate->category->slug,[],'open', 1)}}"><a style="background: {{$cate->category->color}};" href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-support fa-fw"></i> {{$cate->category->label}}</a>
            <ul class="dropdown-menu">
              <!-- <li><a href="#">Dropdown Submenu Link 4.1</a></li> -->
              <li role="presentation" class="<?= ActiveRouteMenu($cate->category->slug, ['vendor_category_management', 'vendor_basic_category_management'], 'active')?>">
                <a style="color: <?= ActiveRouteMenu($cate->category->slug, ['vendor_category_management', 'vendor_basic_category_management'], $cate->category->color)?>; " href="{{url(route('vendor_category_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Basic Information</a>
              </li>
              <li role="presentation" class="<?= ActiveRouteMenu($cate->category->slug,['vendor_category__image_management','vendor_category_add_image_management'],'active')?>">
                <a style="color: <?= ActiveRouteMenu($cate->category->slug,['vendor_category__image_management','vendor_category_add_image_management'], $cate->category->color)?>;" href="{{url(route('vendor_category__image_management', $cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Photo Gallery</a>
              </li>
              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_category_videos_management'
                || \Request::route()->getName() === 'vendor_category_videos_add_management')) ? 'active' : '' }}">
                <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_category_videos_management'
                || \Request::route()->getName() === 'vendor_category_videos_add_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_category_videos_management',$cate->category->slug))}}"> <span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Video Gallery</a>
              </li>

               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_faqs_management'
                || \Request::route()->getName() === 'vendor_faqsadd_management'
                || \Request::route()->getName() === 'vendor_faqsedit_management')) ? 'active' : '' }}">
                <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_faqs_management'
                || \Request::route()->getName() === 'vendor_faqsadd_management'
                || \Request::route()->getName() === 'vendor_faqsedit_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_faqs_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> FAQs</a>
              </li>


              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_description_management'
                || \Request::route()->getName() === 'vendor_descriptionadd_management')) ? 'active' : '' }}">
                <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_description_management'
                || \Request::route()->getName() === 'vendor_descriptionadd_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_description_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Description</a>
              </li>

              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_style_management'
                || \Request::route()->getName() === 'vendor_styleadd_management')) ? 'active' : '' }}">
                <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_style_management'
                || \Request::route()->getName() === 'vendor_styleadd_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_style_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Styles</a>
              </li>

               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_services_management') ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_services_management') ? $cate->category->color : '' }}" href="{{url(route('get_vendor_services_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Services</a>
              </li>

                <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_amenity_management') ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_amenity_management') ? $cate->category->color : '' }}" href="{{url(route('get_vendor_amenity_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Amenites & Games</a>
              </li>
                <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_event_management') ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_event_management') ? $cate->category->color : '' }}" href="{{url(route('get_vendor_event_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Event Types </a>
              </li>


              </li>
                <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_season_management') ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && \Request::route()->getName() === 'get_vendor_season_management') ? $cate->category->color : '' }}" href="{{url(route('get_vendor_season_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Seasons</a>
              </li>


              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_packages_management'
                || \Request::route()->getName() === 'vendor_packagesadd_management'
                || \Request::route()->getName() === 'vendor_packagesedit_management')) ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_packages_management'
                || \Request::route()->getName() === 'vendor_packagesadd_management'
                || \Request::route()->getName() === 'vendor_packagesedit_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_packages_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Packages</a>
              </li>

              <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_deals_management'
                || \Request::route()->getName() === 'vendor_add_deals_management'
                || \Request::route()->getName() === 'vendor_edit_deals_management')) ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_deals_management'
                || \Request::route()->getName() === 'vendor_add_deals_management'
                || \Request::route()->getName() === 'vendor_edit_deals_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_deals_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Deal & Discounts</a>
              </li>

               <li role="presentation" class="{{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_prohibtion_management')) ? 'active' : '' }}">
                   <a style="color: {{ (Request::route('slug') === $cate->category->slug && (\Request::route()->getName() === 'vendor_prohibtion_management')) ? $cate->category->color : '' }}" href="{{url(route('vendor_prohibtion_management',$cate->category->slug))}}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Prohibtion & Restrictions</a>
              </li>

            </ul>
      </li>
      @endforeach

      @else

       <li role="presentation" class="<?= ActiveMenu(['vendor_category_assign2'], 'active') ?>">
                   <a href="{{ route('vendor_category_assign2') }}"><span class="arrow-before"><i class="fa fa-arrow-right" aria-hidden="true"></i></span> Add Your Business</a>
     </li>


      
      @endif
        </ul>
      </li>



    </ul>
    <ul class="category-menus"> 
    <li class="dropdown <?= ActiveMenu(['vendor_profile', 'vendor_password'],'open') ?>"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-support fa-fw"></i> Settings</a>
        <ul class="dropdown-menu">
          <li class="<?= ActiveMenu(['vendor_profile'], 'active') ?>">
                            <a href="{{url(route('vendor_profile'))}}">
                           
                            Profile Settings </a>
                        </li>


                         <li class="<?= ActiveMenu(['vendor_password'],'active') ?>">
                            <a href="{{url(route('vendor_password'))}}">
                            
                            Password Settings </a>
                        </li>
        </ul>
      </li>
    </ul>

</nav>
      <!-- ============================ -->


    </aside>













