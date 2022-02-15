<?php

function append_js($arr_files){
    foreach($arr_files as $file){
        echo  '<script src="'.url('assets/js/pages/'.$file).'"></script>';
    }
}

function append_css($arr_files){
    foreach($arr_files as $file){
       echo '<link rel="stylesheet" href="'.url('assets/dist/css/'.$file).'" />';
    }
}

function group_by($key, $data) {
    $result = array();
    foreach($data as $val) {
        if(array_key_exists($key, $val)){
            $result[$val[$key]][] = $val;
        }else{
            $result[""][] = $val;
        }
    }
    return $result;
}

function get_average_review($get_salon_avg_reviews_ratings){
    if($get_salon_avg_reviews_ratings>=5 || $get_salon_avg_reviews_ratings>4.5){ 
       echo'<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==4.5 || $get_salon_avg_reviews_ratings>4) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-half-o checked"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==4) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==3.5 || $get_salon_avg_reviews_ratings>3) {
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-half-o checked"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==3) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==2.5 || $get_salon_avg_reviews_ratings>2) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-half-o checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==2) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==1.5 || $get_salon_avg_reviews_ratings>1) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-half-o checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==1) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }elseif($get_salon_avg_reviews_ratings==.5 || $get_salon_avg_reviews_ratings>0) { 
       echo '<div class="review_ratings">
           <span class="fa fa-star-half-o checked"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    }else{
       echo '<div class="review_ratings">
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span>
           <span class="fa fa-star-o"></span> 
       </div>';
    } 
}

function get_sourch_lat_long(){
   $url = "https://www.googleapis.com/geolocation/v1/geolocate?key=AIzaSyCKujbP3gEUfWWA8Igiw7wGUE2KsuCfaVc";
   $data = ['collection' => 'RapidAPI'];
   $curl = curl_init($url);
   curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
   curl_setopt($curl, CURLOPT_POST, true);
   curl_setopt($curl, CURLOPT_POSTFIELDS, json_encode($data));
   curl_setopt($curl, CURLOPT_HTTPHEADER, [
   'X-RapidAPI-Host: kvstore.p.rapidapi.com',
   'X-RapidAPI-Key: AIzaSyCKujbP3gEUfWWA8Igiw7wGUE2KsuCfaVc',
   'Content-Type: application/json'
   ]);
   $response = curl_exec($curl);
   curl_close($curl);
   $getLoc = json_decode($response, true);
   $latfrom = $getLoc['location']['lat'];
   $lonfrom = $getLoc['location']['lng'];
   return ['latfrom'=>$latfrom,'lonfrom'=>$lonfrom];
}

function twopoints_on_earth($latitudeFrom,$longitudeFrom,$latitudeTo,$longitudeTo)
{ 
   $long1 = deg2rad($longitudeFrom);
    $long2 = deg2rad($longitudeTo);
    $lat1 = deg2rad($latitudeFrom);
    $lat2 = deg2rad($latitudeTo);
      
    //Formula
    $dlong = $long2 - $long1;
    $dlati = $lat2 - $lat1;
    $val = pow(sin($dlati/2),2)+cos($lat1)*cos($lat2)*pow(sin($dlong/2),2);
    $res = 2 * asin(sqrt($val));
    $radius = 3958.756;
    //return ($res*$radius);
    return round($res*$radius);
}

function getStartingPrice($salon_id){
    return DB::table('salon_services')->select('deal_price')->where('salon_id',$salon_id)->get()->min('deal_price');;
}


function getPackage($package_type_id){
    return $result = DB::table('common_package')->select('*')
    ->where('package_type_id',$package_type_id)
    ->where('featured',1)
    ->get();
    /* if(!empty($result)){
        foreach($result as $kr=>$kv){
            $result = DB::table('salons')->select('latitude, longitude')
            ->where('salon_code',$kv->common_id)
            ->get();
        }
    } */

}
function getPackageActualPrice($service_id){
    return DB::table('salon_services')->select('deal_price')->where('service_id',$service_id)->get()->min('deal_price');;
}


?>