<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('brand/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Brand List</span></a>
    </div>

</div>
<div class="row">
    <form action="{{ url('brand/update_brand') }}" method="post" enctype="multipart/form-data">    
          
            <div class="form-group col-md-8">
              <label for="title">Brand Name</label>
              <input class="form-control" name="brand_name" value="<?=(!empty($update_data->brand_name)) ? $update_data->brand_name : "" ?>" type="text" placeholder="Brand name">
            </div>
            
            <div class="form-group col-md-8">
              <label for="heading">Brand Image</label>
              <input type="file" name="brand_image" class="form-control view_photo">
              <?php if(!empty($update_data->brand_image)){?>
                <img src="<?=Config::get('constants.VIEW_BRAND_IMAGE_PATH').$update_data->brand_image?>" height="50">
              <?php } ?>
              @if($errors->has('brand_image'))<div class="error">{{ $errors->first('brand_image') }}</div>@endif
              <input type="hidden" name="store_brand_image" value="<?=$update_data->brand_image?>">
            </div>
    
            <div class="form-group col-md-8">
              <label for="heading">Brand Logo</label>
              <input type="file" name="brand_logo" class="form-control view_photo">
              <?php if(!empty($update_data->brand_logo)){?>
                <img src="<?=Config::get('constants.VIEW_BRAND_IMAGE_PATH').$update_data->brand_logo?>" height="50">
              <?php } ?>
              @if($errors->has('brand_logo'))<div class="error">{{ $errors->first('brand_logo') }}</div>@endif
              <input type="hidden" name="store_brand_logo" value="<?=$update_data->brand_logo?>">
            </div>
          
            
            <div class="form-group col-md-12">
              <label for="password">Description</label>
              <textarea class="form-control" name="description"><?=(!empty($update_data->description)) ? $update_data->description : "" ?></textarea>
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
          <input type="hidden" name="eid" value="<?=(!empty($update_data->brand_id)) ? $update_data->brand_id : "" ?>">
              <button class="btn btn-success btn-flat" type="submit" name="update_page">Update Brand</button>
          </div>
        
        
    </form>
  </div>

</div>