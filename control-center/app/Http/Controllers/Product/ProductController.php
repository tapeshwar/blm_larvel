<?php

namespace App\Http\Controllers\Product;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;


class ProductController extends Controller
{ 

    public function __construct() {
        $this->append_js = ['product.js'];
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
            $where['product_name'] = $heading;
            //$where['title'] = $heading;
        }
        $pages = DB::table('product')->where($where)->orderBy('product_id', 'desc')->paginate(10);
        //dd(DB::getQueryLog());
        //die;

		$data = [
			'title' => 'Product List',
			'heading' => 'Product List',
			'pages' => $pages,
            'append_js' => $this->append_js,
		];

        return view('template/template_dashboard',$data);	
    }

    

    public function create_product (){
        $product_category = DB::table('product_category')->where('status',1)->get();
        $product_variant = DB::table('variant')->where('variant_status',1)->get();
        $product_brand = DB::table('brands')->where('status',1)->get();
        $data = [
			'title' => 'Create Product',
			'heading' => 'Create Product',
            'product_category' => $product_category,
            'product_variant' => $product_variant,
            'product_brand' => $product_brand

		];
		
        return view('template/template_dashboard',$data);	
    }


    public function store_product(Request $request){

        $request->validate([
            'product_sku'  => 'required',
            'product_name'  => 'required',
            'product_price'  => 'required',
            'product_image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        $check_data = DB::table('product')->select('product_name')->where('product_name', $request->post('product_name'))->get();
        $ret_data = count($check_data);
        if($ret_data > 0){
            return Redirect::back()->withErrors(['error'=>'Duplicate name']);
        }

        $product_image = time().rand(0,10000).'.'.$request->file('product_image')->extension();
        $request->file('product_image')->move(Config::get('constants.PRODUCT_IMAGE_PATH'), $product_image);
       
        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['product_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = $post['product_category'];
            $data['brand_id'] = $post['product_brand'];
            $data['variant_id'] = $post['product_volume'];
            $data['product_sku'] =$post['product_sku'];
            $data['product_name'] =$post['product_name'];
            $data['display_picture'] = $product_image;
            $data['product_short'] = $post['short_description'];
            $data['product_description'] = $post['long_description'];
            $data['unit_price'] = $post['product_price'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['product_status'] = $post['enable'];


            DB::table('product')->insert($data);

            Session::flash('message', 'Created successfully'); 
            Session::flash('alert-class', 'alert-success');

            return redirect('product/index');
            exit();
        }

    }

    
    public function edit_product(Request $request,$eid=NULL){

        $product_category = DB::table('product_category')->where('status',1)->get();
        $product_variant = DB::table('variant')->where('variant_status',1)->get();
        $product_brand = DB::table('brands')->where('status',1)->get();

        if(!empty($eid)){
            $update_data = DB::table('product')->where('product_id', $eid)->first();
            
        }

        $data = [
			'title' => 'Edit Product',
			'heading' => 'Edit Product',
            'product_category' => $product_category,
            'product_variant' => $product_variant,
            'product_brand' => $product_brand,
            'update_data'=>(!empty($update_data)) ? $update_data : NULL,
		];
        return view('template/template_dashboard',$data);
    }


    public function update_product(Request $request){

        $request->validate([
            'product_sku'  => 'required',
            'product_name'  => 'required',
            'product_price'  => 'required',
        ]);

        if(!empty($request->file('product_image'))){
            $product_image = time().rand(0,10000).'.'.$request->file('product_image')->extension();
            $request->file('product_image')->move(Config::get('constants.PRODUCT_IMAGE_PATH'), $product_image);

            if (file_exists(Config::get('constants.PRODUCT_IMAGE_PATH').$request->post('store_product_image'))){
                @unlink(Config::get('constants.PRODUCT_IMAGE_PATH').$request->post('store_product_image'));
            }
        }else{
            $product_image = $request->post('store_product_image');
        }
       

        if(!empty($request->post())){

            $post = $request->post();

            $string = RemoveCharacters($post['product_name']);
            $permalink = ConvertTitleToUrl($string);

            $data['category_id'] = $post['product_category'];
            $data['brand_id'] = $post['product_brand'];
            $data['variant_id'] = $post['product_volume'];
            $data['product_sku'] =$post['product_sku'];
            $data['product_name'] =$post['product_name'];
            $data['display_picture'] = $product_image;
            $data['product_short'] = $post['short_description'];
            $data['product_description'] = $post['long_description'];
            $data['unit_price'] = $post['product_price'];
            $data['meta_title'] = '';
            $data['meta_description'] = '';
            $data['meta_keyword'] = '';
            $data['permalink'] = $permalink;
            $data['updated_on'] = date('YmdHis');
            $data['created_on'] = date('YmdHis');
            $data['product_status'] = $post['enable'];

            if(!empty($post['eid'])){
                DB::table('product')->where('product_id', $post['eid'])->update($data);
            }
            Session::flash('message', 'Updated successfully'); 
            Session::flash('alert-class', 'alert-success');
            return redirect('product/index');
            exit();
        }

    }

    public function delete_product($id){
        if(!empty($id)){
            $where['product_id'] = $id;
            $data = DB::table('product')->select(['display_picture'])->where($where)->first();
            if(!empty($data)){
                $product_image = $data->display_picture;

                if (file_exists(Config::get('constants.PRODUCT_IMAGE_PATH').$product_image)){
                    @unlink(Config::get('constants.PRODUCT_IMAGE_PATH').$product_image);
                }

                DB::table('product')->where('product_id', $id)->delete();
                exit();
            }
            

        }
    }

    

    
}
