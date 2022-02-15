<?php
//$class = $this->router->fetch_class();
//$method = $this->router->fetch_method();
$class_name =  class_basename(Route::current()->controller);
$class = substr(strtolower($class_name), 0, -10);

list(, $action) = explode('@', Route::getCurrentRoute()->getActionName());
$method = $action;
?>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <!-- <div class="user-panel">
        <div class="pull-left image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Alexander Pierce</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div> -->
      <!-- search form -->
      <!-- <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                  <i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form> -->
      <!-- /.search form -->

    
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
       <!--  <li class="header">MAIN NAVIGATION</li> -->
      
        <li class="<?=($class =='home' && $method=='index') ? 'active' : ''?>">
          <a href="{{ url('home/index')}}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
        </a>
          <!-- <ul class="treeview-menu">
            <li><a href="index.html"><i class="fa fa-circle-o"></i> Dashboard v1</a></li>
            <li class="active"><a href="index2.html"><i class="fa fa-circle-o"></i> Dashboard v2</a></li>
          </ul> -->
        </li>


        <?php if(!empty(session('project_key'))){ ?>

          <li class="treeview <?=($class =='website' && $method=='index' || $method=='pages' || $method=='create_page' || $method=='gallery') ? 'active' : ''?>">
          <a href="#">
          <i class="fa fa-internet-explorer"></i> <span>Projects</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='website' && $method=='manage_menu') ? 'active' : ''?>"><a href="{{ url('website/manage_menu')}}"><i class="fa fa-circle-o"></i> Manage Menus</a></li>
            <li class="<?=($class =='website' && $method=='pages' ||  $method=='create_page') ? 'active' : ''?>"><a href="{{ url('website/pages')}}"><i class="fa fa-circle-o"></i> Manage Pages</a></li>
          </ul>
        </li>

        <?php } else {?>
        
        <li class="<?=($class =='projects' && $method=='index') ? 'active' : ''?>"><a href="{{ url('projects/index')}}"><i class="fa fa-internet-explorer"></i> Projects</a></li>
        <?php } ?>



        <li class="treeview <?=($class =='category' && $method=='index' || $method=='product_category' || $method=='service_category' || $method == 'create_main_category' || $method == 'create_product_category'|| $method == 'create_service_category' || $method == 'edit_main_category' || $method == 'edit_product_category' || $method == 'edit_service_category') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-list-alt"></i> <span> Manage Category</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='category' && $method=='index') ? 'active' : ''?>"><a href="{{ url('category/index')}}"><i class="fa fa-circle-o"></i> Main Category</a></li>
            <li class="<?=($class =='category' && $method=='product_category') ? 'active' : ''?>"><a href="{{ url('category/product_category')}}"><i class="fa fa-circle-o"></i> Product Category</a></li>
            <li class="<?=($class =='category' && $method=='service_category') ? 'active' : ''?>"><a href="{{ url('category/service_category')}}"><i class="fa fa-circle-o"></i> Service Category</a></li>
          </ul>
        </li>

        <li class="treeview <?=($class =='service' && $method=='index' || $method=='create_service' || $method=='edit_service') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-shopping-basket"></i> <span> Manage Services</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='service' && $method=='index') ? 'active' : ''?>"><a href="{{ url('service/index')}}"><i class="fa fa-circle-o"></i> Services</a></li>
          </ul>
        </li>

        <li class="treeview <?=($class =='brand' && $method=='index' || $method=='create_brand' || $method=='edit_brand') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-briefcase"></i> <span> Manage Brands</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='brand' && $method=='index') ? 'active' : ''?>"><a href="{{ url('brand/index')}}"><i class="fa fa-circle-o"></i> Brands</a></li>
          </ul>
        </li>

        <li class="treeview <?=($class =='product' && $method=='index' || $method=='product_variant') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-product-hunt"></i> <span> Manage Products</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='product' && $method=='index') ? 'active' : ''?>"><a href="{{ url('product/index')}}"><i class="fa fa-circle-o"></i> Products</a></li>
            <li class="<?=($class =='product' && $method=='product_variant') ? 'active' : ''?>"><a href="{{ url('product/index')}}"><i class="fa fa-circle-o"></i> Product Variant</a></li>
          </ul>
        </li>

        <li class="treeview <?=($class =='package' && $method=='index' || $method=='salon_package') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-get-pocket"></i> <span> Manage Package</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='package' && $method=='index') ? 'active' : ''?>"><a href="{{ url('package/index')}}"><i class="fa fa-circle-o"></i> Admin Package</a></li>
            <li class="<?=($class =='salon_package' && $method=='salon_package') ? 'active' : ''?>"><a href="{{ url('package/index')}}"><i class="fa fa-circle-o"></i> Salon Package</a></li>
          </ul>
        </li>


        <li class="treeview <?=($class =='salon' && $method=='index' || $method=='salon_type') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-scissors"></i> <span> Manage Salons</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='salon' && $method=='index') ? 'active' : ''?>"><a href="{{ url('salon/index')}}"><i class="fa fa-circle-o"></i> Salons</a></li>
            <li class="<?=($class =='salon_type' && $method=='salon_type') ? 'active' : ''?>"><a href="{{ url('salon/index')}}"><i class="fa fa-circle-o"></i> Salon Type</a></li>
          </ul>
        </li>

        <li class="treeview <?=($class =='stylist' && $method=='index') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-male"></i> <span> Manage Stylist</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='stylist' && $method=='index') ? 'active' : ''?>"><a href="{{ url('stylist/index')}}"><i class="fa fa-circle-o"></i> Stylist</a></li>
            
          </ul>
        </li>

        <li class="treeview <?=($class =='corporate' && $method=='index') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-black-tie"></i> <span> Manage Corporate</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='salon' && $method=='index') ? 'active' : ''?>"><a href="{{ url('corporate/index')}}"><i class="fa fa-circle-o"></i> Corporates</a></li>
            
          </ul>
        </li>

        <li class="treeview <?=($class =='customer' && $method=='index') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-users"></i> <span> Manage Customers</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='customer' && $method=='index') ? 'active' : ''?>"><a href="{{ url('package/index')}}"><i class="fa fa-circle-o"></i> Customers</a></li>
            
          </ul>
        </li>

        <li class="treeview <?=($class =='order' && $method=='index') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-list"></i> <span> Manage Orders</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='order' && $method=='index') ? 'active' : ''?>"><a href="{{ url('package/index')}}"><i class="fa fa-circle-o"></i> Orders</a></li>
            
          </ul>
        </li>

        <li class="treeview <?=($class =='booking' && $method=='index') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-address-book"></i> <span> Manage Bookings</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='booking' && $method=='index') ? 'active' : ''?>"><a href="{{ url('package/index')}}"><i class="fa fa-circle-o"></i> Bookings</a></li>
            
          </ul>
        </li>
        


        <li class="treeview <?=($class =='rolepermission' && $method=='module' || $method=='roles' || $method=='system_users') ? 'active' : ''?>">
          <a href="#">
            <i class="fa fa-lock"></i> <span>Role & Permission</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li class="<?=($class =='rolepermission' && $method=='module') ? 'active' : ''?>"><a href="{{ url('rolepermission/module')}}"><i class="fa fa-circle-o"></i> Manage Modules</a></li>
            <li class="<?=($class =='rolepermission' && $method=='roles') ? 'active' : ''?>"><a href="{{ url('rolepermission/roles')}}"><i class="fa fa-circle-o"></i> Manage Roles</a></li>
            <li class="<?=($class =='rolepermission' && $method=='system_users') ? 'active' : ''?>"><a href="{{ url('rolepermission/system_users')}}"><i class="fa fa-circle-o"></i> Manage Users</a></li>
            
          </ul>
        </li>

        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-files-o"></i>
            <span>Layout Options</span>
            <span class="pull-right-container">
              <span class="label label-primary pull-right">4</span>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> Top Navigation</a></li>
            <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> Boxed</a></li>
            <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> Fixed</a></li>
            <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> Collapsed Sidebar</a></li>
          </ul>
        </li> -->
        <!-- <li>
          <a href="pages/widgets.html">
            <i class="fa fa-th"></i> <span>Widgets</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span>
          </a>
        </li> -->
        <!-- <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span>Charts</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/charts/chartjs.html"><i class="fa fa-circle-o"></i> ChartJS</a></li>
            <li><a href="pages/charts/morris.html"><i class="fa fa-circle-o"></i> Morris</a></li>
            <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
            <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-laptop"></i>
            <span>UI Elements</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
            <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
            <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
            <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Forms</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
            <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
            <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-table"></i> <span>Tables</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/tables/simple.html"><i class="fa fa-circle-o"></i> Simple tables</a></li>
            <li><a href="pages/tables/data.html"><i class="fa fa-circle-o"></i> Data tables</a></li>
          </ul>
        </li>
        <li>
          <a href="pages/calendar.html">
            <i class="fa fa-calendar"></i> <span>Calendar</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
          </a>
        </li>
        <li>
          <a href="pages/mailbox/mailbox.html">
            <i class="fa fa-envelope"></i> <span>Mailbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-folder"></i> <span>Examples</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
            <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
            <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
            <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
            <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
            <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
            <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
            <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
            <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-share"></i> <span>Multilevel</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
            <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Level One
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                <li class="treeview">
                  <a href="#"><i class="fa fa-circle-o"></i> Level Two
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
          </ul>
        </li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li> -->
        
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
