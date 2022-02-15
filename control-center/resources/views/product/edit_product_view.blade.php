<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('product/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Product List</span></a>
    </div>

</div>
<div class="row">
    <form action="{{ url('product/update_product') }}" method="post" enctype="multipart/form-data">    
          
            {{-- <div class="form-group col-md-8">
              <label for="title">Brand Name</label>
              <input class="form-control" name="brand_name" value="<?=(!empty($update_data->brand_name)) ? $update_data->brand_name : "" ?>" type="text" placeholder="Brand name">
            </div> --}}
            
            
          
            
            <div class="form-group col-md-4">
              <label for="title">Product Category</label>
              <select name="product_category" class="form-control">
                <option value="">Select</option>
                <?php if(!empty($product_category)) {
                  foreach ($product_category as $key => $value) { ?>
                   <option value="<?=$value->product_category_id?>" <?php if($update_data->category_id == $value->product_category_id ){ ?> selected <?php } ?>><?=$value->category_name?></option>
                 <?php  }
                   }
                  ?>
              </select>
            </div>
  
            <div class="form-group col-md-4">
              <label for="title">Product Brand</label>
              <select name="product_brand" class="form-control">
                <option value="">Select</option>
                <?php if(!empty($product_brand)) {
                  foreach ($product_brand as $key => $value) { ?>
                   <option value="<?=$value->brand_id?>" <?php if($update_data->brand_id == $value->brand_id ){ ?> selected <?php } ?>><?=$value->brand_name?></option>
                 <?php  }
                   }
                  ?>
              </select>
            </div>
                
            <div class="form-group col-md-8">
              <label for="title">Product SKU</label>
              <input class="form-control" name="product_sku" value="<?=$update_data->product_sku?>" type="text" placeholder="Product SKU" >@if($errors->has('product_sku'))<div class="error">{{ $errors->first('product_sku') }}</div>@endif
            </div>
                 
          <div class="form-group col-md-8">
            <label for="title">Product Name</label>
            <input class="form-control" name="product_name" value="<?=$update_data->product_name?>" type="text" placeholder="Product Name" >@if($errors->has('product_name'))<div class="error">{{ $errors->first('product_name') }}</div>@endif
          </div>
  
          <div class="form-group col-md-8">
            <label for="heading">Product Image</label>
            <input type="file" name="product_image" class="form-control view_photo">
            <?php if(!empty($update_data->display_picture)){?>
              <img src="<?=Config::get('constants.VIEW_PRODUCT_IMAGE_PATH').$update_data->display_picture?>" height="50">
            <?php } ?>
            @if($errors->has('product_image'))<div class="error">{{ $errors->first('product_image') }}</div>@endif
            <input type="hidden" name="store_product_image" value="<?=$update_data->display_picture?>">
          </div>
  
          <div class="form-group col-md-8">
            <label for="heading">Product Price</label>
            <input class="form-control" name="product_price" value="<?=$update_data->unit_price?>" type="text" placeholder="Product Price" >@if($errors->has('product_price'))<div class="error">{{ $errors->first('product_price') }}</div>@endif
          </div>
  
          <div class="form-group col-md-6">
            <label for="enable">Product Volume</label>
            <select class="form-control" name="product_volume">
                <option value="">Select</option>
                <?php if(!empty($product_variant)) {
                  foreach ($product_variant as $key => $value) { ?>
                   <option value="<?=$value->variant_id?>" <?php if($update_data->variant_id == $value->variant_id ){ ?> selected <?php } ?>><?=$value->variant_name?></option>
                 <?php  }
                   }
                  ?>
                
            </select>
          </div>
        
          
          <div class="form-group col-md-10">
            <label for="password">Short Description</label>
            <textarea class="form-control" name="short_description"><?=(!empty($update_data->product_short)) ? $update_data->product_short : "" ?></textarea>
          </div>
  
          <div class="form-group col-md-10">
            <label for="password">Long Description</label>
            <textarea class="form-control" name="long_description"><?=(!empty($update_data->product_description)) ? $update_data->product_description : "" ?></textarea>
          </div>
  
          
            
          
          <div class="form-group col-md-4">
          <label for="enable">Status</label>
          <select class="form-control" name="enable"style="width:30%">
              <option value="1" <?php if($update_data->product_status == 1 ){ ?> selected <?php } ?>>Active</option>
              <option value="0" <?php if($update_data->product_status == 0 ){ ?> selected <?php } ?>>Inactive</option>
            </select>
          </div>




          <div class="form-group col-sm-12">
          @csrf
          <input type="hidden" name="eid" value="<?=(!empty($update_data->product_id)) ? $update_data->product_id : "" ?>">
              <button class="btn btn-success btn-flat" type="submit" name="update_page">Update Product</button>
          </div>
        
        
    </form>
  </div>

</div>