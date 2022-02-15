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

function RemoveCharacters($string){
    # Prep string with some basic normalization
      $string = strip_tags($string);
      $string = stripslashes($string);
      $string = html_entity_decode($string);
    # Remove quotes (can't, etc.)
      $string = str_replace('\'', '', $string);
    # Replace non-alpha numeric with hyphens
      $match = '/[^A-Za-z0-9]+/';
      $replace = ' ';
      $string = preg_replace($match, $replace, $string);
      $string = trim($string);
      return $string;
  }

function ConvertTitleToUrl($url){
    # Prep string with some basic normalization
      $url = strtolower($url);
      $url = strip_tags($url);
      $url = stripslashes($url);
      $url = html_entity_decode($url);
      # Remove quotes (can't, etc.)
      $url = str_replace('\'', '', $url);
      # Replace non-alpha numeric with hyphens
      $match = '/[^a-z0-9]+/';
      $replace = '-';
      $url = preg_replace($match, $replace, $url);
      $url = trim($url, '-');
      return $url;
  }

    function getServiceCategoryName($service_category_id){
        return DB::table('service_category')->select('service_cat_title')->where('service_cat_id',$service_category_id)->first();
    }

    function getProductVariantName($product_variant_id){
        return DB::table('variant')->select('variant_name')->where('variant_id',$product_variant_id)->first();
    }

    function country(){
        return DB::table('countries')->where('status',1)->get();
    }

    function state($country_id){
        return DB::table('states')->where(['country_id'=>$country_id])->get();
    }

    function city($state_id){
        return DB::table('cities')->where(['state_id'=>$state_id])->get();
    }

    function getSalonName($salon_code){
        return DB::table('salons')->select('salon_name')->where(['salon_code'=>$salon_code])->first();
    }
    

?>