
<div class="row"> 

    <div class="col-md-5">
        <form action="" method="GET" role="search">
           <!--  @csrf -->
            <div class="input-group">
                <input type="text" class="form-control" name="q" value="{{ app('request')->input('q') }}"
                    placeholder="Enter product name"> <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
                
            </div>
            
        </form>
    </div>
    <div class="col-md-1"><a href="{{ url('product/index')}}" class="btn btn-md btn-default">Reset</a></div>

    <div class="col-md-6">
        <a href="{{ url('product/create_product') }}" class="btn btn-flat btn-primary pull-right">New Product</a>
    </div>

    <div class="col-lg-12 mt20">
  
    <?php //echo $this->pagination->create_links(); ?>
      <table class="table table-responsive table-bordered">
        <thead>
          <tr>
            <th width="3%">#</th>
            <th width="15%">PRODUCT SKU</th>
            <th width="20%">PRODUCT NAME</th>
            <th width="15%">PRODUCT IMAGE</th>
            <th width="10%">PRICE</th>
            <th width="10%">VOLUME</th>
            <th width="10%">STATUS</th>
            <th width="17%">ACTIONS</th>
          </tr>
        </thead>

        <tbody>
          <?php
         
          $i = $i = ($pages->perPage() * ($pages->currentPage() - 1)) + 1;
          if (!empty($pages)) {
            foreach ($pages as $page) {

              $variant = getProductVariantName($page->variant_id);
          ?>
              <tr>
                <td><?php echo $i?></td>
                <td><?= $page->product_sku ?></td>
                <td><?= $page->product_name ?></td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_PRODUCT_IMAGE_PATH').$page->display_picture?>" height="100">
                </td>
                <td><?= $page->unit_price ?></td>
                <td><?= $variant->variant_name ?></td>
                <td> 
                  <?php if($page->product_status == 1){ ?>
                  <button class="btn btn-success btn-xs">Active</button>
                  <?php } ?>
                  <?php if($page->product_status == 0){ ?>
                    <button class="btn btn-danger btn-xs">Inactive</button>
                    <?php } ?>
                  </td>
                <td>
                  <a href="javascript:void(0)" data-url="{{ url('product/product_gallery/'.$page->product_id) }}" class="btn btn-primary btn-sm btn-flat product_gallery" title="Product Gallery">Manage Gallery</a>
                  <a href="{{ url('product/edit_product/' . $page->product_id) }}" class="btn btn-primary btn-sm btn-flat edit_product"><i class="fa fa-edit" title="Edit"></i></a>
                  <a href="javascript:void(0)" data-url="{{ url('product/delete_product/'.$page->product_id) }}" class="btn btn-danger btn-sm btn-flat delete_product" title="Delete"><i class="fa fa-trash"></i></a>
                  

                </td>
              </tr>
          <?php $i++;
            }
          } else{?>
              <tr><td colspan="6">No Result Found..</td></tr>
          <?php } ?>

        </tbody>
      </table>
      {{ $pages->links() }}
      <?php //echo $this->pagination->create_links() ?>
    

    </div>

</div>

