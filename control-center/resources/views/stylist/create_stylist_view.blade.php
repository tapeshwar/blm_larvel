<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('stylist/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Stylist List</span></a>
    </div>
</div>
<div class="row">
  
  <form action="{{ url('stylist/store_stylist') }}" method="post" enctype="multipart/form-data">   
    
          @if(count($errors) > 0)
            @foreach($errors->all() as $error)
            <div class="col-md-8">
                <div class="alert alert-danger">{{ $error }}</div>
            </div>
            @endforeach
          @endif

          <div class="form-group col-md-4">
            <label for="title">Stylist Name</label>
            <input class="form-control" name="salon_name" value="{{ old('salon_name') }}" type="text" placeholder="Stylist Name" >@if($errors->has('salon_name'))<div class="error">{{ $errors->first('salon_name') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Stylist Category</label>
            <select name="salon_category" class="form-control">
              <option value="">Select</option>
              <option value="1">Fragmented</option>
              <option value="2">Corporate</option>
               
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Organization Type</label>
            <select name="org_type" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($organization_type)) {
                foreach ($organization_type as $key => $value) { ?>
                 <option value="<?=$value->org_id?>"><?=$value->org_title?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Stylist Type</label>
            <select name="salon_type" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($salon_type)) {
                foreach ($salon_type as $key => $value) { ?>
                 <option value="<?=$value->type_id?>"><?=$value->title?></option>
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
                 <option value="<?=$value->brand_id?>"><?=$value->brand_name?></option>
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
                 <option value="<?=$value->service_id?>"><?=$value->service_title?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>

          
              
          <div class="form-group col-md-4">
            <label for="title">Phone</label>
            <input class="form-control" name="phone" value="{{ old('phone') }}" type="text" placeholder="Stylist phone" >@if($errors->has('phone'))<div class="error">{{ $errors->first('phone') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Mobile</label>
            <input class="form-control" name="mobile" value="{{ old('mobile') }}" type="text" placeholder="Stylist mobile" >@if($errors->has('mobile'))<div class="error">{{ $errors->first('mobile') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Email</label>
            <input class="form-control" name="email" value="{{ old('email') }}" type="text" placeholder="Stylist email" >@if($errors->has('email'))<div class="error">{{ $errors->first('email') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Contact Person</label>
            <input class="form-control" name="contact_person" value="{{ old('contact_person') }}" type="text" placeholder="Stylist contact person" >@if($errors->has('contact_person'))<div class="error">{{ $errors->first('contact_person') }}</div>@endif
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
                 <option value="<?=$value->country_id?>"><?=$value->country_name?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>


          <div class="form-group col-md-4">
            <label for="title">State</label>
            <select name="state" class="form-control" id="getState">
              <option value="">Select</option>
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">City</label>
            <select name="city" class="form-control" id="getCity">
              <option value="">Select</option>
              
            </select>
          </div>

          <div class="form-group col-md-4">
            <label for="title">Pincode</label>
            <input class="form-control" name="pincode" value="{{ old('pincode') }}" type="text" placeholder="Pincode" >@if($errors->has('pincode'))<div class="error">{{ $errors->first('pincode') }}</div>@endif
          </div>

          <div class="form-group col-md-12">
            <label for="password">Complete Address</label>
            <textarea class="form-control" name="complete_address"></textarea>
          </div>
         
               
          <div class="form-group col-md-4">
            <label for="title">Latitude</label>
            <input class="form-control" name="latitude" value="{{ old('latitude') }}" type="text" placeholder="Stylist latitude" >@if($errors->has('latitude'))<div class="error">{{ $errors->first('latitude') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Longitude</label>
            <input class="form-control" name="longitude" value="{{ old('longitude') }}" type="text" placeholder="Stylist longitude" >@if($errors->has('longitude'))<div class="error">{{ $errors->first('longitude') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">Website</label>
            <input class="form-control" name="website" value="{{ old('website') }}" type="text" placeholder="Stylist website" >@if($errors->has('website'))<div class="error">{{ $errors->first('website') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">PAN Number</label>
            <input class="form-control" name="pan_number" value="{{ old('pan_number') }}" type="text" placeholder="Stylist PAN number" >@if($errors->has('pan_number'))<div class="error">{{ $errors->first('pan_number') }}</div>@endif
          </div>

          <div class="form-group col-md-8">
            <label for="title">PAN Document</label>
            <input type="file" name="pan_doc" class="form-control view_photo">@if($errors->has('pan_doc'))<div class="error">{{ $errors->first('pan_doc') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="title">GST Number</label>
            <input class="form-control" name="gst_number" value="{{ old('gst_number') }}" type="text" placeholder="Stylist GST number" >@if($errors->has('gst_number'))<div class="error">{{ $errors->first('gst_number') }}</div>@endif
          </div>

          <div class="form-group col-md-8">
            <label for="title">GST Document</label>
            <input type="file" name="gst_doc" class="form-control view_photo">@if($errors->has('gst_doc'))<div class="error">{{ $errors->first('gst_doc') }}</div>@endif
          </div>

          

          <div class="form-group col-md-4">
            <label for="title">Annual Business</label>
            <input class="form-control" name="annual_business" value="{{ old('annual_business') }}" type="text" placeholder="Stylist annual business" >@if($errors->has('annual_business'))<div class="error">{{ $errors->first('annual_business') }}</div>@endif
          </div>

          <div class="form-group col-md-4">
            <label for="enable">Home Service</label>
            <select class="form-control" name="home_service">
                <option value="1">Yes</option>
                <option value="0">No</option>
              </select>
            </div>

        <div class="form-group col-md-8">
          <label for="heading">Stylist Logo</label>
          <input type="file" name="salon_logo" class="form-control view_photo">@if($errors->has('salon_logo'))<div class="error">{{ $errors->first('salon_logo') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Stylist Banner</label>
          <input type="file" name="salon_banner" class="form-control view_photo">@if($errors->has('salon_banner'))<div class="error">{{ $errors->first('salon_banner') }}</div>@endif
        </div>

        

          <div class="form-group col-md-12">
            <label for="password">About Stylist</label>
            <textarea class="form-control" name="about_salon"></textarea>
          </div>  
        
        <div class="form-group col-md-4">
        <label for="enable">Status</label>
        <select class="form-control" name="status">
            <option value="1">Active</option>
            <option value="0">Inactive</option>
          </select>
				</div>

          <div class="form-group col-sm-12">
          @csrf
          <button class="btn btn-success btn-flat" type="submit">Create Stylist</button>
          </div>
                   
         </form>
        </div>

</div>