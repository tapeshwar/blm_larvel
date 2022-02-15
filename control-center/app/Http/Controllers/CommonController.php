<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
class CommonController extends Controller
{
    
    public function getState(Request $request){ 

        $countryId = $request->post('countryId');
        return DB::table('states')->where(['country_id'=>$countryId,'status'=>1])->get();
        
    }

    public function getCity(Request $request){ 
        
        $stateId = $request->post('stateId');
        return DB::table('cities')->where(['state_id'=>$stateId,'status'=>1])->get();
        
    }

    
}
