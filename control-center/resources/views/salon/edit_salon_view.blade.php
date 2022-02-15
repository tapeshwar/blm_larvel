<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('salon/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Salon List</span></a>
    </div>

</div>
<div class="row">
    <form action="{{ url('salon/update_salon') }}" method="post" enctype="multipart/form-data">    
          
          <div class="form-group col-md-4">
            <label for="title">Salon Name</label>
            <input class="form-control" name="salon_name" value="<?=$update_data->salon_name ?>" type="text" placeholder="Salon Name" >@if($errors->has('salon_name'))<div class="error">{{ $errors->first('salon_name') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Salon Category</label>
            <select name="salon_category" class="form-control">
              <option value="">Select</option>
              <option value="1" <?php if($update_data->category_id == 1){?> selected <?php } ?>>Fragmented</option>
              <option value="2" <?php if($update_data->category_id == 2){?> selected <?php } ?>>Corporate</option>
              
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Organization Type</label>
            <select name="org_type" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($organization_type)) {
                foreach ($organization_type as $key => $value) { ?>
                <option value="<?=$value->org_id?>" <?php if($update_data->og_type == $value->org_id){?> selected <?php } ?>><?=$value->org_title?></option>
              <?php  }
                }
                ?>
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Salon Type</label>
            <select name="salon_type" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($salon_type)) {
                foreach ($salon_type as $key => $value) { ?>
                <option value="<?=$value->type_id?>" <?php if($update_data->type_id == $value->type_id){?> selected <?php } ?>><?=$value->title?></option>
              <?php  }
                }
                ?>
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Brand</label>
            <select name="brand" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($brand)) {
                foreach ($brand as $key => $value) { ?>
                <option value="<?=$value->brand_id?>" <?php if($update_data->brand_id == $value->brand_id){?> selected <?php } ?>><?=$value->brand_name?></option>
              <?php  }
                }
                ?>
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Service</label>
            <select name="service" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($service)) {
                foreach ($service as $key => $value) { ?>
                <option value="<?=$value->service_id?>" <?php if($update_data->service_id == $value->service_id){?> selected <?php } ?>><?=$value->service_title?></option>
              <?php  }
                }
                ?>
            </select>
          </div>

          
              
          <div class="form-group col-md-4">
            <label for="title">Phone</label>
            <input class="form-control" name="phone" value="<?=$update_data->phone_number?>" type="text" placeholder="Salon phone" >@if($errors->has('phone'))<div class="error">{{ $errors->first('phone') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Mobile</label>
            <input class="form-control" name="mobile" value="<?=$update_data->mobile_number?>" type="text" placeholder="Salon mobile" >@if($errors->has('mobile'))<div class="error">{{ $errors->first('mobile') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Email</label>
            <input class="form-control" name="email" value="<?=$update_data->email_address?>" type="text" placeholder="Salon email" >@if($errors->has('email'))<div class="error">{{ $errors->first('email') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Contact Person</label>
            <input class="form-control" name="contact_person" value="<?=$update_data->contact_person?>" type="text" placeholder="Salon contact person" >@if($errors->has('contact_person'))<div class="error">{{ $errors->first('contact_person') }}</div>@endif
          </div>

          <?php
          $country = country();
          ?>

          <div class="form-group col-md-4">
            <label for="title">Country</label>
            <select name="country" class="form-control" id="getCountry">
              <option value="">Select</option>
              <?php if(!empty($country)) {
                foreach ($country as $key => $value) { ?>
                 <option value="<?=$value->country_id?>" <?php if($update_data->country_id == $value->country_id ) {?> selected <?php } ?>><?=$value->country_name?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>

          <?php
          $state = state($update_data->country_id);
          ?>

          <div class="form-group col-md-4">
            <label for="title">State</label>
            <select name="state" class="form-control" id="getState">
              <option value="">Select</option>

              <?php if(!empty($state)) {
                foreach ($state as $key => $value) { ?>
                 <option value="<?=$value->state_id?>" <?php if($update_data->state_id == $value->state_id ) {?> selected <?php } ?>><?=$value->state_name?></option>
               <?php  }
                 }
                ?>
              
            </select>
          </div>

          <?php
          $city = city($update_data->state_id);
          ?>

          <div class="form-group col-md-4">
            <label for="title">City</label>
            <select name="city" class="form-control" id="getCity">
              <option value="">Select</option>

              <?php if(!empty($city)) {
                foreach ($city as $key => $value) { ?>
                 <option value="<?=$value->city_id?>" <?php if($update_data->city_id == $value->city_id ) {?> selected <?php } ?>><?=$value->city_name?></option>
               <?php  }
                 }
                ?>
              
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Pincode</label>
            <input class="form-control" name="pincode" value="<?=$update_data->pincode?>" type="text" placeholder="Pincode" >@if($errors->has('pincode'))<div class="error">{{ $errors->first('pincode') }}</div>@endif
          </div>

          <div class="form-group col-md-12">
            <label for="password">Complete Address</label>
            <textarea class="form-control" name="complete_address"><?=$update_data->complete_address?></textarea>
          </div>
        
              
          <div class="form-group col-md-4">
            <label for="title">Latitude</label>
            <input class="form-control" name="latitude" value="<?=$update_data->latitude?>" type="text" placeholder="Salon latitude" >@if($errors->has('latitude'))<div class="error">{{ $errors->first('latitude') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Longitude</label>
            <input class="form-control" name="longitude"value="<?=$update_data->longitude?>" type="text" placeholder="Salon longitude" >@if($errors->has('longitude'))<div class="error">{{ $errors->first('longitude') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Website</label>
            <input class="form-control" name="website" value="<?=$update_data->website?>" type="text" placeholder="Salon website" >@if($errors->has('website'))<div class="error">{{ $errors->first('website') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">PAN Number</label>
            <input class="form-control" name="pan_number" value="<?=$update_data->pan_number?>" type="text" placeholder="Salon PAN number" >@if($errors->has('pan_number'))<div class="error">{{ $errors->first('pan_number') }}</div>@endif
          </div>

          <div class="form-group col-md-8">
            <label for="title">PAN Document</label>
            <input type="file" name="pan_doc" class="form-control view_photo">@if($errors->has('pan_doc'))<div class="error">{{ $errors->first('pan_doc') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">GST Number</label>
            <input class="form-control" name="gst_number" value="<?=$update_data->gst_number?>" type="text" placeholder="Salon GST number" >@if($errors->has('gst_number'))<div class="error">{{ $errors->first('gst_number') }}</div>@endif
          </div>

          <div class="form-group col-md-8">
            <label for="title">GST Document</label>
            <input type="file" name="gst_doc" class="form-control view_photo">@if($errors->has('gst_doc'))<div class="error">{{ $errors->first('gst_doc') }}</div>@endif
          </div>

          

          <div class="form-group col-md-4">
            <label for="title">Annual Business</label>
            <input class="form-control" name="annual_business" value="<?=$update_data->business?>" type="text" placeholder="Salon annual business" >@if($errors->has('annual_business'))<div class="error">{{ $errors->first('annual_business') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="enable">Home Service</label>
            <select class="form-control" name="home_service">
                <option value="1" <?php if($update_data->is_provice_home_booking == 1){?> selected <?php } ?>>Yes</option>
                <option value="0" <?php if($update_data->is_provice_home_booking == 0){?> selected <?php } ?>>No</option>
              </select>
            </div>

        <div class="form-group col-md-8">
          <label for="heading">Salon Logo</label>
          <input type="file" name="salon_logo" class="form-control view_photo">
          <?php if(!empty($update_data->display_picture)){?>
            <img src="<?=Config::get('constants.VIEW_SALON_IMAGE_PATH').$update_data->display_picture?>" height="50">
          <?php } ?>
          @if($errors->has('salon_logo'))<div class="error">{{ $errors->first('salon_logo') }}</div>@endif
          <input type="hidden" name="store_salon_logo" value="<?=$update_data->display_picture?>">
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Salon Banner</label>
          <input type="file" name="salon_banner" class="form-control view_photo">@if($errors->has('salon_banner'))<div class="error">{{ $errors->first('salon_banner') }}</div>@endif
        </div>

        

          <div class="form-group col-md-12">
            <label for="password">About Salon</label>
            <textarea class="form-control" name="about_salon"><?=$update_data->about_salon?></textarea>
          </div>  
  
          
            
          
          <div class="form-group col-md-4">
          <label for="enable">Status</label>
          <select class="form-control" name="status"style="width:30%">
              <option value="1" <?php if($update_data->act_status == 1 ){ ?> selected <?php } ?>>Active</option>
              <option value="0" <?php if($update_data->act_status == 0 ){ ?> selected <?php } ?>>Inactive</option>
            </select>
          </div>




          <div class="form-group col-sm-12">
          @csrf
          <input type="hidden" name="eid" value="<?=$update_data->salon_id ?>">
              <button class="btn btn-success btn-flat" type="submit" name="update_page">Update Salon</button>
          </div>
        
        
    </form>
  </div>

</div>