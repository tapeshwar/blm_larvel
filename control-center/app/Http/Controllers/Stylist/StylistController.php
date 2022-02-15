<?php

namespace App\Http\Controllers\Stylist;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;


class StylistController extends Controller
{ 

    public function __construct() {
        $this->append_js = ['stylist.js','common.js'];
        //$this->append_css = ['test.css','test2.css'];
        DB::enableQueryLog();
    }
    
    public function index(Request $request){
        
        if (Auth::check()==FALSE) {
            return redirect('/');
        }
        $where = [];
        if(!empty($request->get('q'))){
            $heading = $request->get('q');
            $where['stylist_name'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('stylist')->where($where)->orderBy('stylist_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Stylist List',
			'heading' => 'Stylist List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    

    public function create_stylist (){
        $salon_type = DB::table('salon_type')->where('status',1)->get();
        $brand = DB::table('brands')->where('status',1)->get();
        $service = DB::table('services')->where('status',1)->get();
        $organization_type = DB::table('organization_type')->where('status',1)->get();
        $data = [
			'title' => 'Create Stylist',
			'heading' => 'Create Stylist',
            'salon_type' => $salon_type,
            'brand' => $brand,
            'service' => $service,
            'organization_type' => $organization_type,

		];
		
        return view('template/template_dashboard',$data);	
    }


    public function store_salon(Request $request){

        /* echo '<pre>';
        print_r($request->post());
        die; */

        $request->validate([
            'salon_name'  => 'required',
            'salon_logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('salons')->select('salon_name')->where('salon_name', $request->post('salon_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate name']);
        }

        $salon_logo = time().rand(0,10000).'.'.$request->file('salon_logo')->extension();
        $request->file('salon_logo')->move(Config::get('constants.SALON_IMAGE_PATH'), $salon_logo);
       
        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['salon_name']);
            $permalink = ConvertTitleToUrl($string);

            $randChar = substr(str_shuffle(str_repeat("0123456789abcdefghijklmnopqrstuvwxyz", 5)), 0, 5);
            $genCode="MSD".date('My')."/".date('dHi')."/".$randChar ;
            $salonCode=strtoupper($genCode);
            
            
            $data['work_with'] = $post['salon_category'];
            $data['salon_code'] = $salonCode;
            $data['salon_name'] = $post['salon_name'];
            $data['type_id'] = $post['salon_type'];
            $data['category_id'] = $post['salon_category'];
            $data['og_type'] = $post['org_type'];
            
            $data['brand_id'] = $post['brand'];
            $data['service_id'] = $post['service'];

            $data['phone_number'] = $post['phone'];
            $data['mobile_number'] = $post['mobile'];
            $data['email_address'] = $post['email'];
            $data['contact_person'] = $post['contact_person'];

            $data['country_id'] = 100;
            $data['state_id'] = 10;
            $data['city_id'] = 10;
            $data['complete_address'] = $post['complete_address'];
            $data['pincode'] = $post['pincode'];
            $data['latitude'] = $post['latitude'];
            $data['longitude'] = $post['longitude'];

            $data['pan_number'] = $post['pan_number'];
            $data['pan_document'] = '';
            $data['gst_number'] = $post['gst_number'];
            $data['gst_document'] = '';
            $data['website'] = $post['website'];
            $data['business'] = $post['annual_business'];
            $data['display_picture'] = $salon_logo;
            $data['about_salon'] = $post['about_salon'];
            $data['is_provice_home_booking'] = $post['home_service'];  

            $data['creator_ip'] = '';

            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['act_status'] = $post['status'];


            DB::table('salons')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('salon/index');
            exit();
        }

    }

    
    public function edit_salon(Request $request,$eid=NULL){

        $salon_type = DB::table('salon_type')->where('status',1)->get();
        $brand = DB::table('brands')->where('status',1)->get();
        $service = DB::table('services')->where('status',1)->get();
        $organization_type = DB::table('organization_type')->where('status',1)->get();

        if(!empty($eid)){
            $update_data = DB::table('salons')->where('salon_id', $eid)->first();
            
        }

        $data = [
			'title' => 'Edit Salon',
			'heading' => 'Edit Salon',
            'salon_type' => $salon_type,
            'brand' => $brand,
            'service' => $service,
            'organization_type' => $organization_type,
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_salon(Request $request){

        $request->validate([
            'salon_name'  => 'required',
        ]);

        if(!empty($request->file('salon_logo'))){
            $salon_logo = time().rand(0,10000).'.'.$request->file('salon_logo')->extension();
            $request->file('salon_logo')->move(Config::get('constants.SALON_IMAGE_PATH'), $salon_logo);

            if (file_exists(Config::get('constants.SALON_IMAGE_PATH').$request->post('store_salon_logo'))){
                @unlink(Config::get('constants.SALON_IMAGE_PATH').$request->post('store_salon_logo'));
            }
        }else{
            $salon_logo = $request->post('store_salon_logo');
        }
       

        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['salon_name']);
            $permalink = ConvertTitleToUrl($string);
            
            $data['work_with'] = $post['salon_category'];
            $data['salon_name'] = $post['salon_name'];
            $data['type_id'] = $post['salon_type'];
            $data['category_id'] = $post['salon_category'];
            $data['og_type'] = $post['org_type'];
            
            $data['brand_id'] = $post['brand'];
            $data['service_id'] = $post['service'];

            $data['phone_number'] = $post['phone'];
            $data['mobile_number'] = $post['mobile'];
            $data['email_address'] = $post['email'];
            $data['contact_person'] = $post['contact_person'];

            $data['country_id'] = 100;
            $data['state_id'] = 10;
            $data['city_id'] = 10;
            $data['complete_address'] = $post['complete_address'];
            $data['pincode'] = $post['pincode'];
            $data['latitude'] = $post['latitude'];
            $data['longitude'] = $post['longitude'];

            $data['pan_number'] = $post['pan_number'];
            $data['pan_document'] = '';
            $data['gst_number'] = $post['gst_number'];
            $data['gst_document'] = '';
            $data['website'] = $post['website'];
            $data['business'] = $post['annual_business'];
            $data['display_picture'] = $salon_logo;
            $data['about_salon'] = $post['about_salon'];
            $data['is_provice_home_booking'] = $post['home_service'];  

            $data['creator_ip'] = '';

            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['act_status'] = $post['status'];

            if(!empty($post['eid'])){
                DB::table('salons')->where('salon_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('salon/index');
            exit();
        }

    }

    public function delete_salon($id){
        if(!empty($id)){
            $where['salon_id'] = $id;
            $data = DB::table('salons')->select(['display_picture'])->where($where)->first();
            if(!empty($data)){
                $salon_logo = $data->display_picture;

                if (file_exists(Config::get('constants.SALON_IMAGE_PATH').$salon_logo)){
                    @unlink(Config::get('constants.SALON_IMAGE_PATH').$salon_logo);
                }

                DB::table('salons')->where('salon_id', $id)->delete();
                exit();
            }
            

        }
    }

    

    
}
