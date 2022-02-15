<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('category/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Service List</span></a>
    </div>

</div>
<div class="row">
    <form action="{{ url('service/update_service') }}" method="post" enctype="multipart/form-data">    

          <div class="form-group col-md-6">
            <label for="title">Service Category</label>
            <select name="service_category" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($service_category)) {
                foreach ($service_category as $key => $value) { ?>
                <option value="<?=$value->service_cat_id?>" <?php if($update_data->category_id == $value->service_cat_id ){?> selected <?php } ?>><?=$value->service_cat_title?></option>
              <?php  }
                }
                ?>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="title">Service Type</label>
            <select name="service_type" class="form-control">
              <option value="Non-Dependent"<?php if($update_data->service_type == 'Non-Dependent' ){?> selected <?php } ?>>Non-Dependent</option>
              <option value="Dependent" <?php if($update_data->service_type == 'Dependent' ){?> selected <?php } ?>>Dependent</option>

            </select>
          </div>



            <div class="form-group col-md-8">
              <label for="title">Service Name</label>
              <input class="form-control" name="service_name" value="<?=(!empty($update_data->service_title)) ? $update_data->service_title : "" ?>" type="text" placeholder="Service name">
            </div>
            
            <div class="form-group col-md-8">
              <label for="heading">Service Icon</label>
              <input type="file" name="service_icon" class="form-control view_photo">
              <?php if(!empty($update_data->service_icon)){?>
                <img src="<?=Config::get('constants.VIEW_SERVICE_IMAGE_PATH').$update_data->service_icon?>" height="50">
              <?php } ?>
              @if($errors->has('service_icon'))<div class="error">{{ $errors->first('service_icon') }}</div>@endif
              <input type="hidden" name="store_service_icon" value="<?=$update_data->service_icon?>">
            </div>
    
            <div class="form-group col-md-8">
              <label for="heading">Service Image</label>
              <input type="file" name="service_image" class="form-control view_photo">
              <?php if(!empty($update_data->service_image)){?>
                <img src="<?=Config::get('constants.VIEW_SERVICE_IMAGE_PATH').$update_data->service_image?>" height="50">
              <?php } ?>
              @if($errors->has('service_image'))<div class="error">{{ $errors->first('service_image') }}</div>@endif
              <input type="hidden" name="store_service_image" value="<?=$update_data->service_image?>">
            </div>
          
            
            <div class="form-group col-md-12">
              <label for="password">Description</label>
              <textarea class="form-control" name="service_desc"><?=(!empty($update_data->service_desc)) ? $update_data->service_desc : "" ?></textarea>
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
          <input type="hidden" name="eid" value="<?=(!empty($update_data->service_id)) ? $update_data->service_id : "" ?>">
              <button class="btn btn-success btn-flat" type="submit">Update Service</button>
          </div>
        
        
    </form>
  </div>

</div>