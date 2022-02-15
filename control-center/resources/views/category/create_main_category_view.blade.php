<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('category/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Catetory List</span></a>
    </div>
</div>
<div class="row">
  
  <form id="create_new_page_form" action="{{ url('category/store_main_category') }}" method="post" enctype="multipart/form-data">   
    
          @if(count($errors) > 0)
            @foreach($errors->all() as $error)
            <div class="col-md-8">
                <div class="alert alert-danger">{{ $error }}</div>
            </div>
            @endforeach
          @endif
              
               
        <div class="form-group col-md-8">
          <label for="title">Category Name</label>
          <input class="form-control" id="cat_name" name="cat_name" value="{{ old('cat_name') }}" type="text" placeholder="Category Name" >@if($errors->has('cat_name'))<div class="error">{{ $errors->first('cat_name') }}</div>@endif
        </div>
        
        {{-- <div class="form-group col-md-8">
          <label for="heading">Permanent Link</label>
          <input class="form-control permalink" id="permalink" name="permalink" value="" type="text" placeholder="Permalink" readonly>
        </div> --}}

        <div class="form-group col-md-8">
          <label for="heading">Category Icon</label>
          <input type="file" name="cat_icon" class="form-control view_photo">@if($errors->has('cat_icon'))<div class="error">{{ $errors->first('cat_icon') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Category Image</label>
          <input type="file" name="cat_image" class="form-control view_photo">@if($errors->has('cat_image'))<div class="error">{{ $errors->first('cat_image') }}</div>@endif
        </div>
      
        
        <div class="form-group col-md-12">
          <label for="password">Description</label>
          <textarea class="form-control" name="cat_desc"><?=(!empty($update_data->content)) ? $update_data->content : "" ?></textarea>
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
          <input type="hidden" name="eid" value="<?=(!empty($update_data->id)) ? $update_data->id : "" ?>">
          <button class="btn btn-success btn-flat create_new_page_btn" type="submit" name="create_page">Create Main Category</button>
          </div>
                   
         </form>
        </div>

</div>