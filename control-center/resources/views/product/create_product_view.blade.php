<div class="row">

    <div class="col-md-12" style="margin-bottom: 10px;">
        <a href="{{ url('product/index') }}" class="btn btn-flat btn-primary pull-right"><i class="fa fa-building"></i> <span> View Product List</span></a>
    </div>
</div>
<div class="row">
  
  <form action="{{ url('product/store_product') }}" method="post" enctype="multipart/form-data">   
    
          @if(count($errors) > 0)
            @foreach($errors->all() as $error)
            <div class="col-md-8">
                <div class="alert alert-danger">{{ $error }}</div>
            </div>
            @endforeach
          @endif

          <div class="form-group col-md-4">
            <label for="title">Product Category</label>
            <select name="product_category" class="form-control">
              <option value="">Select</option>
              <?php if(!empty($product_category)) {
                foreach ($product_category as $key => $value) { ?>
                 <option value="<?=$value->product_category_id?>"><?=$value->category_name?></option>
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
                 <option value="<?=$value->brand_id?>"><?=$value->brand_name?></option>
               <?php  }
                 }
                ?>
            </select>
          </div>
              
          <div class="form-group col-md-8">
            <label for="title">Product SKU</label>
            <input class="form-control" name="product_sku" value="{{ old('product_sku') }}" type="text" placeholder="Product SKU" >@if($errors->has('product_sku'))<div class="error">{{ $errors->first('product_sku') }}</div>@endif
          </div>
               
        <div class="form-group col-md-8">
          <label for="title">Product Name</label>
          <input class="form-control" name="product_name" value="{{ old('product_name') }}" type="text" placeholder="Product Name" >@if($errors->has('product_name'))<div class="error">{{ $errors->first('product_name') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Product Image</label>
          <input type="file" name="product_image" class="form-control view_photo">@if($errors->has('product_image'))<div class="error">{{ $errors->first('product_image') }}</div>@endif
        </div>

        <div class="form-group col-md-8">
          <label for="heading">Product Price</label>
          <input class="form-control" name="product_price" value="{{ old('product_price') }}" type="text" placeholder="Product Price" >@if($errors->has('product_price'))<div class="error">{{ $errors->first('product_price') }}</div>@endif
        </div>

        <div class="form-group col-md-6">
          <label for="enable">Product Volume</label>
          <select class="form-control" name="product_volume">
              <option value="">Select</option>
              <?php if(!empty($product_variant)) {
                foreach ($product_variant as $key => $value) { ?>
                 <option value="<?=$value->variant_id?>"><?=$value->variant_name?></option>
               <?php  }
                 }
                ?>
              
          </select>
        </div>
      
        
        <div class="form-group col-md-10">
          <label for="password">Short Description</label>
          <textarea class="form-control" name="short_description"></textarea>
        </div>

        <div class="form-group col-md-10">
          <label for="password">Long Description</label>
          <textarea class="form-control" name="long_description"></textarea>
        </div>

        
          
        
        <div class="form-group col-md-4">
        <label for="enable">Status</label>
        <select class="form-control" name="enable"style="width:30%">
            <option value="1">Active</option>
            <option value="0">Inactive</option>
          </select>
				</div>

          <div class="form-group col-sm-12">
          @csrf
          <button class="btn btn-success btn-flat" type="submit">Create Product</button>
          </div>
                   
         </form>
        </div>

</div>