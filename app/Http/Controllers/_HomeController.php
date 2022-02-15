<?php
namespace App\Http\Controllers;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Hash;
class HomeController extends Controller
{
    
    public function index(Request $request){  
        $ret_data['heading'] = 'Welcome to Bloom';
        /* $ret_data['append_js'] = $this->append_js;
        $ret_data['append_css'] = $this->append_css; */
        
        return view('index',$ret_data); 
    
    }

    
}
