<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('brand/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Brand List</span></a>
    </div>
</div>
<div class="row">
  
  <form action="{{ url('brand/store_brand') }}" method="post" enctype="multipart/form-data">   
    
          @if(count($errors) > 0)
            @foreach($errors->all() as $error)
            <div class="col-md-8">
                <div class="alert alert-danger">{{ $error }}</div>
            </div>
            @endforeach
          @endif
              
               
        <div class="form-group col-md-8">
          <label for="title">Brand Name</label>
          <input class="form-control" name="brand_name" value="{{ old('brand_name') }}" type="text" placeholder="Brand Name" >@if($errors->has('brand_name'))<div class="error">{{ $errors->first('brand_name') }}</div>@endif
        </div>
        
        {{-- <div class="form-group col-md-8">
          <label for="heading">Permanent Link</label>
          <input class="form-control permalink" id="permalink" name="permalink" value="" type="text" placeholder="Permalink" readonly>
        </div> --}}

        <div class="form-group col-md-8">
          <label for="heading">Brand Image</label>
          <input type="file" name="brand_image" class="form-control view_photo">@if($errors->has('brand_image'))<div class="error">{{ $errors->first('brand_image') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Brand logo</label>
          <input type="file" name="brand_logo" class="form-control view_photo">@if($errors->has('brand_logo'))<div class="error">{{ $errors->first('brand_logo') }}</div>@endif
        </div>
      
        
        <div class="form-group col-md-12">
          <label for="password">Description</label>
          <textarea class="form-control" name="description"><?=(!empty($update_data->description)) ? $update_data->description : "" ?></textarea>
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
          <button class="btn btn-success btn-flat" type="submit" name="create_page">Create Brand</button>
          </div>
                   
         </form>
        </div>

</div>