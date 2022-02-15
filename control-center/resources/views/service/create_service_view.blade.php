<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('service/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Service List</span></a>
    </div>
</div>
<div class="row">
  
  <form action="{{ url('service/store_service') }}" method="post" enctype="multipart/form-data">   
    
          @if(count($errors) > 0)
            @foreach($errors->all() as $error)
            <div class="col-md-8">
                <div class="alert alert-danger">{{ $error }}</div>
            </div>
            @endforeach
          @endif

          <div class="form-group col-md-6">
            <label for="title">Service Category</label>
            <select name="service_category" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($service_category)) {
                foreach ($service_category as $key => $value) { ?>
                 <option value="<?=$value->service_cat_id?>"><?=$value->service_cat_title?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label for="title">Service Type</label>
            <select name="service_type" class="form-control">
              <option value="Non-Dependent">Non-Dependent</option>
              <option value="Dependent">Dependent</option>

            </select>
          </div>
              
               
        <div class="form-group col-md-8">
          <label for="title">Service Name</label>
          <input class="form-control" name="service_name" value="{{ old('service_name') }}" type="text" placeholder="Service Name" >@if($errors->has('service_name'))<div class="error">{{ $errors->first('service_name') }}</div>@endif
        </div>
        
        {{-- <div class="form-group col-md-8">
          <label for="heading">Permanent Link</label>
          <input class="form-control permalink" id="permalink" name="permalink" value="" type="text" placeholder="Permalink" readonly>
        </div> --}}

        <div class="form-group col-md-8">
          <label for="heading">Service Icon</label>
          <input type="file" name="service_icon" class="form-control view_photo">@if($errors->has('service_icon'))<div class="error">{{ $errors->first('service_icon') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Service Image</label>
          <input type="file" name="service_image" class="form-control view_photo">@if($errors->has('service_image'))<div class="error">{{ $errors->first('service_image') }}</div>@endif
        </div>
      
        
        <div class="form-group col-md-12">
          <label for="password">Description</label>
          <textarea class="form-control" name="service_desc"><?=(!empty($update_data->service_desc)) ? $update_data->service_desc : "" ?></textarea>
        </div>
          
        
        <div class="form-group col-md-4">
        <label for="enable">Status</label>
        <select class="form-control" name="enable" id="enable" style="width:30%">
            <option value="1">Active</option>
            <option value="0">Inactive</option>
          </select>
				</div>

          <div class="form-group col-sm-12">
          @csrf
          
          <button class="btn btn-success btn-flat" type="submit" name="create_page">Create Service</button>
          </div>
                   
         </form>
        </div>

</div>