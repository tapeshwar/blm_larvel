<?php

namespace App\Http\Controllers\Service;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;


class ServiceController extends Controller
{ 

    public function __construct() {
        $this->append_js = ['service.js'];
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
            $where['service_title'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('services')->where($where)->orderBy('service_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Services List',
			'heading' => 'Services List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    

    public function create_service(){

        $service_category = DB::table('service_category')->get();

        $data = [
			'title' => 'Create Service',
			'heading' => 'Create Service',
            'service_category' => $service_category
		];
		
        return view('template/template_dashboard',$data);	
    }


    public function store_service(Request $request){
        
        /* $this->validate($request, ['cat_name'  => 'required',],
        ['cat_name.required' => 'Category name is required',],       
        ); */

        $request->validate([
            'service_category' => 'required',
            'service_name'  => 'required',
            'service_icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'service_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('category')->select('category_name')->where('category_name', $request->post('cat_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate category name']);
        }

        $service_icon = time().rand(0,10000).'.'.$request->file('service_icon')->extension();
        $request->file('service_icon')->move(Config::get('constants.SERVICE_IMAGE_PATH'), $service_icon);
    
        $service_image = time().rand(0,99999).'.'.$request->file('service_image')->extension();
        $request->file('service_image')->move(Config::get('constants.SERVICE_IMAGE_PATH'), $service_image);
       
        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['service_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = $post['service_category'];
            $data['service_type'] = $post['service_type'];
            $data['service_title'] = $post['service_name'];
            $data['service_icon'] = $service_icon;
            $data['service_image'] = $service_image;
            $data['service_desc'] = $post['service_desc'];
            
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');;

            $data['status'] = $post['enable'];
            DB::table('services')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('service/index');
            exit();
        }

    }

    
    public function edit_service(Request $request,$eid=NULL){

        if(!empty($eid)){
            $update_data = DB::table('services')->where('service_id', $eid)->first();
            
        }

        $service_category = DB::table('service_category')->get();

        $data = [
			'title' => 'Edit Service',
			'heading' => 'Edit Service',
            'service_category' => $service_category,
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_service(Request $request){

        $request->validate([
            'service_category' => 'required',
            'service_name'  => 'required',
        ]);

        if(!empty($request->file('service_icon'))){
            $service_icon = time().rand(0,10000).'.'.$request->file('service_icon')->extension();
            $request->file('service_icon')->move(Config::get('constants.SERVICE_IMAGE_PATH'), $service_icon);

            if (file_exists(Config::get('constants.SERVICE_IMAGE_PATH').$request->post('store_service_icon'))){
                @unlink(Config::get('constants.SERVICE_IMAGE_PATH').$request->post('store_service_icon'));
            }
        }else{
            $service_icon = $request->post('store_service_icon');
        }
       
        if(!empty($request->file('service_image'))){
            $service_image = time().rand(0,99999).'.'.$request->file('service_image')->extension();
            $request->file('service_image')->move(Config::get('constants.SERVICE_IMAGE_PATH'), $service_image);
            if (file_exists(Config::get('constants.SERVICE_IMAGE_PATH').$request->post('store_service_image'))){
                @unlink(Config::get('constants.SERVICE_IMAGE_PATH').$request->post('store_service_image'));
            }
        }else{
            $service_image = $request->post('store_service_image');
        }

        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['service_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = $post['service_category'];
            $data['service_type'] = $post['service_type'];
            $data['service_title'] = $post['service_name'];
            $data['service_icon'] = $service_icon;
            $data['service_image'] = $service_image;
            $data['service_desc'] = $post['service_desc'];
            
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');;

            $data['status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('services')->where('service_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('service/index');
            exit();
        }

    }

    public function delete_service($id){
        if(!empty($id)){
            $where['service_id'] = $id;
            $data = DB::table('services')->select(['service_icon','service_image'])->where($where)->first();
            if(!empty($data)){
                $service_icon = $data->service_icon;
                $service_image = $data->service_image;

                if (file_exists(Config::get('constants.SERVICE_IMAGE_PATH').$service_icon)){
                    @unlink(Config::get('constants.SERVICE_IMAGE_PATH').$service_icon);
                }

                if (file_exists(Config::get('constants.SERVICE_IMAGE_PATH').$service_image)){
                    @unlink(Config::get('constants.SERVICE_IMAGE_PATH').$service_image);
                }

                DB::table('services')->where('service_id', $id)->delete();
                exit();
            }
            

        }
    }
   
}
