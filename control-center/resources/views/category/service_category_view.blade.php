
<div class="row"> 

    <div class="col-md-5">
        <form action="" method="GET" role="search">
           <!--  @csrf -->
            <div class="input-group">
                <input type="text" class="form-control" name="q" value="{{ app('request')->input('q') }}"
                    placeholder="Enter category name"> <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
                
            </div>
            
        </form>
    </div>
    <div class="col-md-1"><a href="{{ url('category/service_category')}}" class="btn btn-md btn-default">Reset</a></div>

    <div class="col-md-6">
        <a href="{{ url('category/create_service_category') }}" class="btn btn-flat btn-primary pull-right">New Service Category</a>
    </div>



    <div class="col-lg-12 mt20">
  
    <?php //echo $this->pagination->create_links(); ?>
      <table class="table table-responsive table-bordered">
        <thead>
          <tr>
            <th width="3%">#</th>
           
            <th width="20%">SERVICE CATEGORY</th>
            <th width="20%">CATEGORY ICON</th>
            <th width="20%">CATEGORY IMAGE</th>
            <th width="20%">STATUS</th>
            <th width="17%">ACTIONS</th>
          </tr>
        </thead>

        <tbody>
          <?php
         
          $i = $i = ($pages->perPage() * ($pages->currentPage() - 1)) + 1;
          if (!empty($pages)) {
            foreach ($pages as $page) {
          ?>
              <tr>
                <td><?php echo $i?></td>
                <td><?= $page->service_cat_title ?></td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_CATEGORY_IMAGE_PATH').$page->service_cat_icon?>" height="100">
                </td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_CATEGORY_IMAGE_PATH').$page->service_cat_image?>" height="100">
                </td>
                <td> 
                  <?php if($page->status == 1){ ?>
                  <button class="btn btn-success btn-xs">Active</button>
                  <?php } ?>
                  <?php if($page->status == 0){ ?>
                    <button class="btn btn-danger btn-xs">Inactive</button>
                    <?php } ?>
                  </td>
                <td>
                  <a href="{{ url('category/edit_service_category/' . $page->service_cat_id) }}" class="btn btn-primary btn-sm btn-flat edit_service_category"><i class="fa fa-edit" title="Edit"></i></a>
                  <a href="javascript:void(0)" data-url="{{ url('category/delete_service_category/'.$page->service_cat_id) }}" class="btn btn-danger btn-sm btn-flat delete_service_category" title="Delete"><i class="fa fa-trash"></i></a>

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

