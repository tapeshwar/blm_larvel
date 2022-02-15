<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    public function index(Request $request){

        //$banner = DB::table('banner')->where('enable',1)->get();
        $mainCategory = DB::table('category')->where('status',1)->get();
        $countMainCategory = count($mainCategory);

        $recomSalons = DB::table('trending as tr')->select(
        'tr.type_name','tr.type_id','s.salon_id','s.salon_name','s.permalink','s.about_salon','s.display_picture','s.complete_address','s.avg_review_ratings','s.latitude','s.longitude','ct.city_name','st.state_name','contry.country_name','type.title as salon_type_title','ss.deal_price as starting_price'
        )
        ->leftjoin('salons as s', 's.salon_id', '=', 'tr.type_id')
        ->leftjoin('cities as ct', 's.city_id', '=', 'ct.city_id')
        ->leftjoin('states as st', 's.state_id', '=', 'st.state_id')
        ->leftjoin('countries as contry', 's.country_id', '=', 'contry.country_id')
        ->leftjoin('salon_type as type', 's.type_id', '=', 'type.type_id')
        ->leftjoin('salon_services as ss', 's.salon_id', '=', 'tr.type_id')
        ->where('tr.type_name', 'SALON')
        ->where('tr.status', 1)
        ->orderBy('tr.sort_order', 'ASC')
        ->limit(12)
        ->get();
        $countRecomSalons = count($recomSalons); 

        $recomPackage = DB::table('package_type')->where('status',1)->get();
        $countRecomPackage = count($recomPackage);

        $recomStylist = DB::table('stylist')->where('activation_status',1)->limit(5)->get();
        $countrecomStylist = count($recomStylist);

        $nearestSalon = DB::table('salons')->where('act_status',1)->limit(8)->get();
        $countNearestSalon = count($nearestSalon);

        $topProduct = DB::table('product')->where('product_status',1)->limit(20)->get();
        $countTopProduct = count($topProduct);

        $mostVisitedSalons = DB::table('salons')->where('act_status',1)->limit(6)->get();
        $countMostVisitedSalons = count($mostVisitedSalons);

        $recomServices = DB::table('services')->where('status',1)->get();
        $countRecomServices = count($recomServices);

        $recomServices = DB::table('trending as tr')->select(
            'tr.type_name','tr.type_id','s.service_title','s.service_desc','s.service_icon','s.service_image','ss.deal_price'
        )
        ->leftjoin('services AS s', 's.service_id', '=', 'tr.type_id')
        ->leftjoin('salon_services AS ss', 's.service_id', '=', 'tr.type_id')
        ->where('tr.type_name', 'SERVICE')
        ->where('tr.status', 1)
        ->orderBy('tr.sort_order', 'ASC')
        ->limit(12)
        ->get();

        $homeGallery = DB::table('image_gallery')->limit(8)->get();
        $countHomeGallery = count($homeGallery);

        $topBrands = DB::table('brands')->where('status',1)->limit(8)->get();
        $countTopBrands = count($topBrands);

        $data['heading'] = 'Bloom';
        $data['title'] = 'Bloom';
        //$data['banner'] = $banner;
        $data['mainCategory'] = $mainCategory;
        $data['countMainCategory'] = $countMainCategory;

        $data['recomSalons'] = $recomSalons;
        $data['countRecomSalons'] = $countRecomSalons;

        $data['recomPackage'] = $recomPackage;
        $data['countRecomPackage'] = $countRecomPackage;

        $data['recomStylist'] = $recomStylist;
        $data['countrecomStylist'] = $countrecomStylist;

        $data['nearestSalon'] = $nearestSalon;
        $data['countNearestSalon'] = $countNearestSalon;

        $data['topProduct'] = $topProduct;
        $data['countTopProduct'] = $countTopProduct;

        $data['mostVisitedSalons'] = $mostVisitedSalons;
        $data['countMostVisitedSalons'] = $countMostVisitedSalons;

        $data['recomServices'] = $recomServices;
        $data['countRecomServices'] = $countRecomServices;

        $data['homeGallery'] = $homeGallery;
        $data['countHomeGallery'] = $countHomeGallery;

        $data['topBrands'] = $topBrands;
        $data['countTopBrands'] = $countTopBrands;
        
        /* $data['append_js'] = $this->append_js;
        $data['append_css'] = $this->append_css; */
        
        return view('index',$data);
    }
}
