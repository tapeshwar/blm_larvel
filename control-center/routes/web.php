<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\Home\HomeController;
use App\Http\Controllers\Projects\ProjectsController;
use App\Http\Controllers\Website\WebsiteController;
use App\Http\Controllers\Rolepermission\RolepermissionController;
use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\Service\ServiceController;
use App\Http\Controllers\Brand\BrandController;
use App\Http\Controllers\Product\ProductController;
use App\Http\Controllers\Salon\SalonController;
use App\Http\Controllers\Stylist\StylistController;
use App\Http\Controllers\CommonController;
/* Route::get('/', function () {
    return view('welcome');
}); */

Route::get('/', function () {
    return view('login_view');
});

Route::post('/user_login', [UserController::class, 'user_login']);
Route::get('/logout', [UserController::class, 'logout']);
Route::get('/home/index', [HomeController::class, 'index']);

Route::post('/getState', [CommonController::class, 'getState']);
Route::post('/getCity', [CommonController::class, 'getCity']);

Route::get('/projects/index', [ProjectsController::class, 'index']);
Route::post('/projects/enter', [ProjectsController::class, 'enter']);
Route::get('/projects/change_project', [ProjectsController::class, 'change_project']);

Route::get('/website/manage_menu', [WebsiteController::class, 'manage_menu']);
Route::post('/website/update_menu_order/{id}', [WebsiteController::class, 'update_menu_order']);
Route::post('/website/create_menu_set', [WebsiteController::class, 'create_menu_set']);
Route::post('/website/add_menu', [WebsiteController::class, 'add_menu']);
Route::post('/website/edit_menu/{id}', [WebsiteController::class, 'edit_menu']);
Route::get('/website/delete_menu/{id}', [WebsiteController::class, 'delete_menu']);
Route::get('/website/delete_menu_set/{id}', [WebsiteController::class, 'delete_menu_set']);

Route::get('/website/pages', [WebsiteController::class, 'pages']);
Route::get('/website/create_page', [WebsiteController::class, 'create_page']);
Route::post('/website/store_page', [WebsiteController::class, 'store_page']);
Route::get('/website/edit_page/{id}', [WebsiteController::class, 'edit_page']);
Route::post('/website/update_page', [WebsiteController::class, 'update_page']);

Route::get('/category/index', [CategoryController::class, 'index']);
Route::get('/category/create_main_category', [CategoryController::class, 'create_main_category']);
Route::post('/category/store_main_category', [CategoryController::class, 'store_main_category']);
Route::get('/category/edit_main_category/{id}', [CategoryController::class, 'edit_main_category']);
Route::post('/category/update_main_category', [CategoryController::class, 'update_main_category']);
Route::get('/category/delete_main_category/{id}', [CategoryController::class, 'delete_main_category']);


Route::get('/category/product_category', [CategoryController::class, 'product_category']);
Route::get('/category/create_product_category', [CategoryController::class, 'create_product_category']);
Route::post('/category/store_product_category', [CategoryController::class, 'store_product_category']);
Route::get('/category/edit_product_category/{id}', [CategoryController::class, 'edit_product_category']);
Route::post('/category/update_product_category', [CategoryController::class, 'update_product_category']);
Route::get('/category/delete_product_category/{id}', [CategoryController::class, 'delete_product_category']);

Route::get('/category/service_category', [CategoryController::class, 'service_category']);
Route::get('/category/create_service_category', [CategoryController::class, 'create_service_category']);
Route::post('/category/store_service_category', [CategoryController::class, 'store_service_category']);
Route::get('/category/edit_service_category/{id}', [CategoryController::class, 'edit_service_category']);
Route::post('/category/update_service_category', [CategoryController::class, 'update_service_category']);
Route::get('/category/delete_service_category/{id}', [CategoryController::class, 'delete_service_category']);

Route::get('/service/index', [ServiceController::class, 'index']);
Route::get('/service/create_service', [ServiceController::class, 'create_service']);
Route::post('/service/store_service', [ServiceController::class, 'store_service']);
Route::get('/service/edit_service/{id}', [ServiceController::class, 'edit_service']);
Route::post('/service/update_service', [ServiceController::class, 'update_service']);
Route::get('/service/delete_service/{id}', [ServiceController::class, 'delete_service']);

Route::get('/brand/index', [BrandController::class, 'index']);
Route::get('/brand/create_brand', [BrandController::class, 'create_brand']);
Route::post('/brand/store_brand', [BrandController::class, 'store_brand']);
Route::get('/brand/edit_brand/{id}', [BrandController::class, 'edit_brand']);
Route::post('/brand/update_brand', [BrandController::class, 'update_brand']);
Route::get('/brand/delete_brand/{id}', [BrandController::class, 'delete_brand']);

Route::get('/product/index', [ProductController::class, 'index']);
Route::get('/product/create_product', [ProductController::class, 'create_product']);
Route::post('/product/store_product', [ProductController::class, 'store_product']);
Route::get('/product/edit_product/{id}', [ProductController::class, 'edit_product']);
Route::post('/product/update_product', [ProductController::class, 'update_product']);
Route::get('/product/delete_product/{id}', [ProductController::class, 'delete_product']);


Route::get('/salon/index', [SalonController::class, 'index']);
Route::get('/salon/create_salon', [SalonController::class, 'create_salon']);
Route::post('/salon/store_salon', [SalonController::class, 'store_salon']);
Route::get('/salon/edit_salon/{id}', [SalonController::class, 'edit_salon']);
Route::post('/salon/update_salon', [SalonController::class, 'update_salon']);
Route::get('/salon/delete_salon/{id}', [SalonController::class, 'delete_salon']);
Route::get('/salon/salon_working_time/{id}', [SalonController::class, 'salon_working_time']);

Route::get('/stylist/index', [StylistController::class, 'index']);
Route::get('/stylist/create_stylist', [StylistController::class, 'create_stylist']);
Route::post('/stylist/store_stylist', [StylistController::class, 'store_stylist']);
Route::get('/stylist/edit_stylist/{id}', [StylistController::class, 'edit_stylist']);
Route::post('/stylist/update_stylist', [StylistController::class, 'update_stylist']);
Route::get('/stylist/delete_stylist/{id}', [StylistController::class, 'delete_stylist']);


Route::get('/rolepermission/module', [RolepermissionController::class, 'module']);
Route::get('/rolepermission/add_modules', [RolepermissionController::class, 'add_modules']);
Route::post('/rolepermission/store_modules', [RolepermissionController::class, 'store_modules']);
Route::post('/rolepermission/reload_modules', [RolepermissionController::class, 'reload_modules']);
Route::get('/rolepermission/edit_module/{id}', [RolepermissionController::class, 'edit_module']);
Route::post('/rolepermission/update_module', [RolepermissionController::class, 'update_module']);
Route::get('/rolepermission/delete_module/{id}', [RolepermissionController::class, 'delete_module']);

Route::get('/rolepermission/roles', [RolepermissionController::class, 'roles']);
Route::get('/rolepermission/set_privileges/{id}', [RolepermissionController::class, 'set_privileges']);
Route::post('/rolepermission/get_controller', [RolepermissionController::class, 'get_controller']);
Route::get('/rolepermission/add_role', [RolepermissionController::class, 'add_role']);
Route::post('/rolepermission/store_role', [RolepermissionController::class, 'store_role']);
Route::post('/rolepermission/update_role_privilege', [RolepermissionController::class, 'update_role_privilege']);
Route::get('/rolepermission/system_users', [RolepermissionController::class, 'system_users']);
Route::get('/rolepermission/add_system_user', [RolepermissionController::class, 'add_system_user']);
Route::post('/rolepermission/store_system_user', [RolepermissionController::class, 'store_system_user']);



