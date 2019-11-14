<!-- [ Pre-loader ] start -->
    <div class="loader-bg">
        <div class="loader-track">
            <div class="loader-fill"></div>
        </div>
    </div>
    <!-- [ Pre-loader ] End -->
    <!-- [ navigation menu ] start -->
    <nav class="pcoded-navbar">
        <div class="navbar-wrapper">
            <div class="navbar-brand header-logo">
                <a href="{{url(route('admin_dashboard'))}}" class="b-brand">
                    <div class="b-bg">
                        <img src="/frontend/images/logo.svg">
                    </div>
                    <span class="b-title">Envisiun Admin</span>
                </a>
                <a class="mobile-menu" id="mobile-collapse" href="javascript:"><span></span></a>
            </div>
            <div class="navbar-content scroll-div">
                <ul class="nav pcoded-inner-navbar">
                    <li class="nav-item pcoded-menu-caption">
                        <label>Navigation</label>
                    </li>
                    <li data-username="dashboard Default Ecommerce CRM Analytics Crypto Project" class="nav-item {{ \Request::route()->getName() === 'admin_dashboard'
                 ? 'nav-item active' : 'nav-item' }}">
                        <a href="{{url(route('admin_dashboard'))}}" class="nav-link "><span class="pcoded-micon"><i class="feather icon-home"></i></span><span class="pcoded-mtext">Dashboard</span></a>
                    </li>


                <li class="nav-item pcoded-menu-caption">
                    <label>Management</label>
                </li>

                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['list_category', 'category_variations', 'create_category','edit_category'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext">Category Management</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['list_category', 'category_variations', 'create_category','edit_category'],'block') ?>;">
                    <li class="<?= ActiveMenu(['list_category', 'category_variations', 'create_category','edit_category'],'active') ?>"><a href="{{ route('list_category') }}" class="">Categories</a></li>
                </ul>
                </li>

                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['list_events', 'create_event_type', 'edit_event'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext">Event/Celebration Types</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['list_events', 'create_event_type', 'edit_event'],'block') ?>;">
                    <li class="<?= ActiveMenu(['list_events', 'create_event_type', 'edit_event'],'active') ?>"><a href="{{ route('list_events') }}" class="">Event Types</a></li>
                </ul>
                </li>

                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['list_amenities', 'list_games', 'create_amenities_type', 'edit_amenity'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext">Amenities/Games Types</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['list_amenities', 'list_games', 'create_amenities_type', 'edit_amenity'],'block') ?>;">
                    <li class="<?= ActiveMenu(['list_amenities'],'active') ?>"><a href="{{ route('list_amenities') }}" class="">Amenities</a></li>
                    <li class="<?= ActiveMenu(['list_games'],'active') ?>"><a href="{{ route('list_games') }}" class="">Games</a></li>
                </ul>
                </li>


<li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['list_seasons', 'create_seasons', 'edit_seasons'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext"> Manage Seasons</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['list_seasons', 'create_seasons', 'edit_seasons'],'block') ?>;">
                    <li class="<?= ActiveMenu(['list_seasons'],'active') ?>"><a href="{{ route('list_seasons') }}" class="">Seasons</a></li>
                </ul>
                </li>


                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['list_users', 'list_vendors'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext">User/Vendor Management</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['list_users', 'list_vendors'], 'block') ?>;">
                    <li class="<?= ActiveMenu(['list_users'],'active') ?>"><a href="{{ route('list_users') }}" class="">User Management</a></li>
                    <li class="<?= ActiveMenu(['list_vendors'],'active') ?>"><a href="{{ route('list_vendors') }}" class="">Vendor Management</a></li>
                </ul>
                </li>

                <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu <?= ActiveMenu(['admin_settings'],'pcoded-trigger') ?>" >
                <a href="javascript:" class="nav-link "><span class="pcoded-micon">
                    <i class="feather icon-box"></i></span><span class="pcoded-mtext">Settings</span></a>
                <ul class="pcoded-submenu" style="display: <?= ActiveMenu(['admin_settings'],'block') ?>;">
                    <li class="<?= ActiveMenu(['admin_settings'],'active') ?>"><a href="{{ route('admin_settings') }}" class="">Profile</a></li>
                    <li class="<?= ActiveMenu(['admin_logout'],'active') ?>"><a href="{{ route('admin_logout') }}" class="">Logout</a></li>
                </ul>
                </li>

                    <!-- <li data-username="basic components Button Alert Badges breadcrumb Paggination progress Tooltip popovers Carousel Cards Collapse Tabs pills Modal Grid System Typography Extra Shadows Embeds" class="nav-item pcoded-hasmenu">
                        <a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-box"></i></span><span class="pcoded-mtext">Components</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="bc_button.html" class="">Button</a></li>
                            <li class=""><a href="bc_badges.html" class="">Badges</a></li>
                            <li class=""><a href="bc_breadcrumb-pagination.html" class="">Breadcrumb & paggination</a></li>
                            <li class=""><a href="bc_collapse.html" class="">Collapse</a></li>
                            <li class=""><a href="bc_tabs.html" class="">Tabs & pills</a></li>
                            <li class=""><a href="bc_typography.html" class="">Typography</a></li>


                            <li class=""><a href="icon-feather.html" class="">Feather<span class="pcoded-badge label label-danger">NEW</span></a></li>
                        </ul>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Forms & table</label>
                    </li>
                    <li data-username="form elements advance componant validation masking wizard picker select" class="nav-item">
                        <a href="form_elements.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-file-text"></i></span><span class="pcoded-mtext">Form elements</span></a>
                    </li>
                    <li data-username="Table bootstrap datatable footable" class="nav-item">
                        <a href="tbl_bootstrap.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-server"></i></span><span class="pcoded-mtext">Table</span></a>
                    </li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Chart & Maps</label>
                    </li>
                    <li data-username="Charts Morris" class="nav-item"><a href="chart-morris.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-pie-chart"></i></span><span class="pcoded-mtext">Chart</span></a></li>
                    <li data-username="Maps Google" class="nav-item"><a href="map-google.html" class="nav-link "><span class="pcoded-micon"><i class="feather icon-map"></i></span><span class="pcoded-mtext">Maps</span></a></li>
                    <li class="nav-item pcoded-menu-caption">
                        <label>Pages</label>
                    </li>
                    <li data-username="Authentication Sign up Sign in reset password Change password Personal information profile settings map form subscribe" class="nav-item pcoded-hasmenu">
                        <a href="javascript:" class="nav-link "><span class="pcoded-micon"><i class="feather icon-lock"></i></span><span class="pcoded-mtext">Authentication</span></a>
                        <ul class="pcoded-submenu">
                            <li class=""><a href="auth-signup.html" class="" target="_blank">Sign up</a></li>
                            <li class=""><a href="auth-signin.html" class="" target="_blank">Sign in</a></li>
                        </ul>
                    </li>
                    <li data-username="Sample Page" class="nav-item"><a href="sample-page.html" class="nav-link"><span class="pcoded-micon"><i class="feather icon-sidebar"></i></span><span class="pcoded-mtext">Sample page</span></a></li>
                    <li data-username="Disabled Menu" class="nav-item disabled"><a href="javascript:" class="nav-link"><span class="pcoded-micon"><i class="feather icon-power"></i></span><span class="pcoded-mtext">Disabled menu</span></a></li> -->
                </ul>
            </div>
        </div>
    </nav>
    <!-- [ navigation menu ] end -->