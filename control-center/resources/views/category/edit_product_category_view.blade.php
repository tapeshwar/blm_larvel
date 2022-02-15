<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('category/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Category List</span></a>
    </div>
<?php
//echo '<pre>';
//print_r($update_data);die;
?>
</div>
<div class="row">
    <form action="{{ url('category/update_product_category') }}" method="post" enctype="multipart/form-data">    
          
            <div class="form-group col-md-8">
              <label for="title">Category Name</label>
              <input class="form-control" id="cat_name" name="cat_name" value="<?=(!empty($update_data->category_name)) ? $update_data->category_name : "" ?>" type="text" placeholder="Category name">
            </div>
            
            <div class="form-group col-md-8">
              <label for="heading">Category Icon</label>
              <input type="file" name="cat_icon" class="form-control view_photo">
              <?php if(!empty($update_data->category_icon)){?>
                <img src="<?=Config::get('constants.VIEW_CATEGORY_IMAGE_PATH').$update_data->category_icon?>" height="50">
              <?php } ?>
              @if($errors->has('cat_icon'))<div class="error">{{ $errors->first('cat_icon') }}</div>@endif
              <input type="hidden" name="store_cat_icon" value="<?=$update_data->category_icon?>">
            </div>
    
            <div class="form-group col-md-8">
              <label for="heading">Category Image</label>
              <input type="file" name="cat_image" class="form-control view_photo">
              <?php if(!empty($update_data->category_image)){?>
                <img src="<?=Config::get('constants.VIEW_CATEGORY_IMAGE_PATH').$update_data->category_image?>" height="50">
              <?php } ?>
              @if($errors->has('cat_image'))<div class="error">{{ $errors->first('cat_image') }}</div>@endif
              <input type="hidden" name="store_cat_image" value="<?=$update_data->category_image?>">
            </div>
          
            
            <div class="form-group col-md-12">
              <label for="password">Description</label>
              <textarea class="form-control" name="cat_desc"><?=(!empty($update_data->description)) ? $update_data->description : "" ?></textarea>
            </div>
              
            
            <div class="form-group col-md-4">
            <label for="enable">Status</label>
            <select class="form-control" name="enable" id="enable" style="width:30%">
                <option value="1" <?php if($update_data->status == '1') {?> selected <?php } ?>>Active</option>
                <option value="0" <?php if($update_data->status == '0') {?> selected <?php } ?>>Inactive</option>
              </select>
  </div>

          <div class="form-group col-sm-12">
          @csrf
          <input type="hidden" name="eid" value="<?=(!empty($update_data->product_category_id)) ? $update_data->product_category_id : "" ?>">
              <button class="btn btn-success btn-flat" type="submit" name="update_page">Update Main Category</button>
          </div>
        
        
    </form>
  </div>

</div>