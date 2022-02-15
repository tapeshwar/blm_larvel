<?php

namespace App\Http\Controllers\Brand;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;


class BrandController extends Controller
{ 

    public function __construct() {
        $this->append_js = ['brand.js'];
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
            $where['brand_name'] = $heading;
            //where('Contact_Name', 'like', '%'.$string.'%')
        }
        $pages = DB::table('brands')->where($where)->orderBy('brand_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Brand List',
			'heading' => 'Brand List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    

    public function create_brand (){

        $data = [
			'title' => 'Create Brand',
			'heading' => 'Create Brand',
		];
		
        return view('template/template_dashboard',$data);	
    }


    public function store_brand(Request $request){
        
        /* $this->validate($request, ['cat_name'  => 'required',],
        ['cat_name.required' => 'Category name is required',],       
        ); */

        $request->validate([
            'brand_name'  => 'required',
            'brand_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'brand_logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('brands')->select('brand_name')->where('brand_name', $request->post('brand_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate name']);
        }

        $brand_image = time().rand(0,10000).'.'.$request->file('brand_image')->extension();
        $request->file('brand_image')->move(Config::get('constants.BRAND_IMAGE_PATH'), $brand_image);
    
        $brand_logo = time().rand(0,99999).'.'.$request->file('brand_logo')->extension();
        $request->file('brand_logo')->move(Config::get('constants.BRAND_IMAGE_PATH'), $brand_logo);
       
        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['brand_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = '0';
            $data['product_category_id'] = '0';
            $data['brand_name'] = $post['brand_name'];
            $data['brand_image'] = $brand_image;
            $data['brand_logo'] = $brand_logo;
            $data['description'] = $post['description'];
            $data['meta_title'] = '';
            $data['meta_desc'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');;
            $data['status'] = $post['enable'];


            DB::table('brands')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('brand/index');
            exit();
        }

    }

    
    public function edit_brand(Request $request,$eid=NULL){

        if(!empty($eid)){
            $update_data = DB::table('brands')->where('brand_id', $eid)->first();
            
        }

        $data = [
			'title' => 'Edit Brand',
			'heading' => 'Edit Brand',
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_brand(Request $request){

        $request->validate([
            'brand_name'  => 'required',
        ]);

        if(!empty($request->file('brand_image'))){
            $brand_image = time().rand(0,10000).'.'.$request->file('brand_image')->extension();
            $request->file('brand_image')->move(Config::get('constants.BRAND_IMAGE_PATH'), $brand_image);

            if (file_exists(Config::get('constants.BRAND_IMAGE_PATH').$request->post('store_brand_image'))){
                @unlink(Config::get('constants.BRAND_IMAGE_PATH').$request->post('store_brand_image'));
            }
        }else{
            $brand_image = $request->post('store_brand_image');
        }
       
        if(!empty($request->file('brand_logo'))){
            $brand_logo = time().rand(0,99999).'.'.$request->file('brand_logo')->extension();
            $request->file('brand_logo')->move(Config::get('constants.BRAND_IMAGE_PATH'), $brand_logo);
            if (file_exists(Config::get('constants.BRAND_IMAGE_PATH').$request->post('store_brand_logo'))){
                @unlink(Config::get('constants.BRAND_IMAGE_PATH').$request->post('store_brand_logo'));
            }
        }else{
            $brand_logo = $request->post('store_brand_logo');
        }

        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['brand_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = '0';
            $data['product_category_id'] = '0';
            $data['brand_name'] = $post['brand_name'];
            $data['brand_image'] = $brand_image;
            $data['brand_logo'] = $brand_logo;
            $data['description'] = $post['description'];
            $data['meta_title'] = '';
            $data['meta_desc'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');;
            $data['status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('brands')->where('brand_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('brand/index');
            exit();
        }

    }

    public function delete_brand($id){
        if(!empty($id)){
            $where['brand_id'] = $id;
            $data = DB::table('brands')->select(['brand_image','brand_logo'])->where($where)->first();
            if(!empty($data)){
                $brand_image = $data->brand_image;
                $brand_logo = $data->brand_logo;

                if (file_exists(Config::get('constants.BRAND_IMAGE_PATH').$brand_image)){
                    @unlink(Config::get('constants.BRAND_IMAGE_PATH').$brand_image);
                }

                if (file_exists(Config::get('constants.BRAND_IMAGE_PATH').$brand_logo)){
                    @unlink(Config::get('constants.BRAND_IMAGE_PATH').$brand_logo);
                }

                DB::table('brands')->where('brand_id', $id)->delete();
                exit();
            }
            

        }
    }

    

    
}
