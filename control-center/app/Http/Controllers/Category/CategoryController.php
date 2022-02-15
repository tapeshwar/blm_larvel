<?php

namespace App\Http\Controllers\Category;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;


class CategoryController extends Controller
{ 

    public function __construct() {
        $this->append_js = ['category.js'];
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
            $where['category_name'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('category')->where($where)->orderBy('category_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Main Category List',
			'heading' => 'Main Category List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    

    public function create_main_category(){

        $data = [
			'title' => 'Create Main Category',
			'heading' => 'Create Main Category',
		];
		
        return view('template/template_dashboard',$data);	
    }


    public function store_main_category(Request $request){
        
        /* $this->validate($request, ['cat_name'  => 'required',],
        ['cat_name.required' => 'Category name is required',],       
        ); */

        $request->validate([
            'cat_name'  => 'required',
            'cat_icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'cat_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('category')->select('category_name')->where('category_name', $request->post('cat_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate category name']);
        }

        $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
        $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);
    
        $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
        $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
       
        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['cat_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_name'] = $post['cat_name'];
            $data['category_icon'] = $cat_icon;
            $data['category_image'] = $cat_image;
            $data['description'] = $post['cat_desc'];
            $data['parent_id'] = '0';
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');;

            $data['status'] = $post['enable'];
            DB::table('category')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('category/index');
            exit();
        }

    }

    
    public function edit_main_category(Request $request,$eid=NULL){

        if(!empty($eid)){
            $update_data = DB::table('category')->where('category_id', $eid)->first();
            
        }

        $data = [
			'title' => 'Edit Main Category',
			'heading' => 'Edit Main Category',
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_main_category(Request $request){

        $request->validate([
            'cat_name'  => 'required',
        ]);

        if(!empty($request->file('cat_icon'))){
            $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
            $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);

            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'));
            }
        }else{
            $cat_icon = $request->post('store_cat_icon');
        }
       
        if(!empty($request->file('cat_image'))){
            $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
            $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'));
            }
        }else{
            $cat_image = $request->post('store_cat_image');
        }

        if(!empty($request->post())){

            $post = $request->post();

            $data['category_name'] = $post['cat_name'];
            $data['category_icon'] = $cat_icon;
            $data['category_image'] = $cat_image;
            $data['description'] = $post['cat_desc'];
            $data['parent_id'] = '0';
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = '';
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');

            $data['status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('category')->where('category_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('category/index');
            exit();
        }

    }

    public function delete_main_category($id){
        if(!empty($id)){
            $where['category_id'] = $id;
            $data = DB::table('category')->select(['category_icon','category_image'])->where($where)->first();
            if(!empty($data)){
                $cat_icon = $data->category_icon;
                $cat_image = $data->category_image;

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon);
                }

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image);
                }

                DB::table('category')->where('category_id', $id)->delete();
                exit();
            }
            

        }
    }

    public function product_category(Request $request){
        //echo 'fsaf';die;
        
        if (Auth::check()==FALSE) {
            return redirect('/');
        }
        $where = [];
        if(!empty($request->get('q'))){
            $heading = $request->get('q');
            $where['category_name'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('product_category')->where($where)->orderBy('product_category_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Product Category List',
			'heading' => 'Product Category List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    public function create_product_category(){

        $data = [
			'title' => 'Create Product Category',
			'heading' => 'Create Product Category',
		];
		
        return view('template/template_dashboard',$data);	
    }

    public function store_product_category(Request $request){

        $request->validate([
            'cat_name'  => 'required',
            'cat_icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'cat_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('product_category')->select('category_name')->where('category_name', $request->post('cat_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate category name']);
        }

        $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
        $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);
    
        $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
        $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
       
        if(!empty($request->post())){

            $post = $request->post(); 

            $string = RemoveCharacters($post['cat_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = '';
            $data['category_name'] = $post['cat_name'];
            $data['category_icon'] = $cat_icon;
            $data['category_image'] = $cat_image;
            $data['description'] = $post['cat_desc'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');

            $data['status'] = $post['enable'];
            DB::table('product_category')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('category/product_category');
            exit();
        }

    }


    public function edit_product_category(Request $request,$eid=NULL){

        if(!empty($eid)){
            $update_data = DB::table('product_category')->where('product_category_id', $eid)->first();
            
        }

        $data = [
			'title' => 'Edit Product Category',
			'heading' => 'Edit Product Category',
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_product_category(Request $request){

        $request->validate([
            'cat_name'  => 'required',
        ]);

        if(!empty($request->file('cat_icon'))){
            $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
            $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);

            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'));
            }
        }else{
            $cat_icon = $request->post('store_cat_icon');
        }
       
        if(!empty($request->file('cat_image'))){
            $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
            $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'));
            }
        }else{
            $cat_image = $request->post('store_cat_image');
        }

        if(!empty($request->post())){

            $post = $request->post();

            $data['category_id'] = '';
            $data['category_name'] = $post['cat_name'];
            $data['category_icon'] = $cat_icon;
            $data['category_image'] = $cat_image;
            $data['description'] = $post['cat_desc'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = '';
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('product_category')->where('product_category_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('category/product_category');
            exit();
        }

    }

    public function delete_product_category($id){
        if(!empty($id)){
            $where['product_category_id'] = $id;
            $data = DB::table('product_category')->select(['category_icon','category_image'])->where($where)->first();
            if(!empty($data)){
                $cat_icon = $data->category_icon;
                $cat_image = $data->category_image;

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon);
                }

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image);
                }

                DB::table('product_category')->where('product_category_id', $id)->delete();
                exit();
            }
            

        }
    }



    public function service_category(Request $request){
        //echo 'fsaf';die;
        
        if (Auth::check()==FALSE) {
            return redirect('/');
        }
        $where = [];
        if(!empty($request->get('q'))){
            $heading = $request->get('q');
            $where['category_name'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('service_category')->where($where)->orderBy('service_cat_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Product Category List',
			'heading' => 'Product Category List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    public function create_service_category(){

        $data = [
			'title' => 'Create Service Category',
			'heading' => 'Create Service Category',
		];
		
        return view('template/template_dashboard',$data);	
    }

    public function store_service_category(Request $request){

        $request->validate([
            'cat_name'  => 'required',
            'cat_icon' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'cat_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('service_category')->select('service_cat_title')->where('service_cat_title', $request->post('cat_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate category name']);
        }

        $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
        $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);
    
        $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
        $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
       
        if(!empty($request->post())){

            $post = $request->post(); 

            $string = RemoveCharacters($post['cat_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = 1;
            $data['service_cat_title'] = $post['cat_name'];
            $data['service_cat_icon'] = $cat_icon;
            $data['service_cat_image'] = $cat_image;
            $data['service_cat_desc'] = $post['cat_desc'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');

            $data['status'] = $post['enable'];
            DB::table('service_category')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('category/service_category');
            exit();
        }

    }


    public function edit_service_category(Request $request,$eid=NULL){

        if(!empty($eid)){
            $update_data = DB::table('service_category')->where('service_cat_id', $eid)->first();      
        }

        $data = [
			'title' => 'Edit Service Category',
			'heading' => 'Edit Service Category',
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_service_category(Request $request){

        $request->validate([
            'cat_name'  => 'required',
        ]);

        if(!empty($request->file('cat_icon'))){
            $cat_icon = time().rand(0,10000).'.'.$request->file('cat_icon')->extension();
            $request->file('cat_icon')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_icon);

            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_icon'));
            }
        }else{
            $cat_icon = $request->post('store_cat_icon');
        }
       
        if(!empty($request->file('cat_image'))){
            $cat_image = time().rand(0,99999).'.'.$request->file('cat_image')->extension();
            $request->file('cat_image')->move(Config::get('constants.CATEGORY_IMAGE_PATH'), $cat_image);
            if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'))){
                @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$request->post('store_cat_image'));
            }
        }else{
            $cat_image = $request->post('store_cat_image');
        }

        if(!empty($request->post())){

            $post = $request->post();

            $data['category_id'] = 1;
            $data['service_cat_title'] = $post['cat_name'];
            $data['service_cat_icon'] = $cat_icon;
            $data['service_cat_image'] = $cat_image;
            $data['service_cat_desc'] = $post['cat_desc'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = '';
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('service_category')->where('service_cat_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('category/service_category');
            exit();
        }

    }

    public function delete_service_category($id){
        if(!empty($id)){
            $where['product_category_id'] = $id;
            $data = DB::table('service_category')->select(['category_icon','category_image'])->where($where)->first();
            if(!empty($data)){
                $cat_icon = $data->category_icon;
                $cat_image = $data->category_image;

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_icon);
                }

                if (file_exists(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image)){
                    @unlink(Config::get('constants.CATEGORY_IMAGE_PATH').$cat_image);
                }

                DB::table('service_category')->where('service_cat_id', $id)->delete();
                exit();
            }
            

        }
    }

    
}
