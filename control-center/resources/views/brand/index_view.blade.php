
<div class="row"> 

    <div class="col-md-5">
        <form action="" method="GET" role="search">
           <!--  @csrf -->
            <div class="input-group">
                <input type="text" class="form-control" name="q" value="{{ app('request')->input('q') }}"
                    placeholder="Enter brand name"> <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
                
            </div>
            
        </form>
    </div>
    <div class="col-md-1"><a href="{{ url('brand/index')}}" class="btn btn-md btn-default">Reset</a></div>

    <div class="col-md-6">
        <a href="{{ url('brand/create_brand') }}" class="btn btn-flat btn-primary pull-right">New Brand</a>
    </div>

    <div class="col-lg-12 mt20">
  
    <?php //echo $this->pagination->create_links(); ?>
      <table class="table table-responsive table-bordered">
        <thead>
          <tr>
            <th width="3%">#</th>
           
            <th width="20%">BRAND</th>
            <th width="20%">BRAND IMAGE</th>
            <th width="20%">BRAND LOGO</th>
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
                <td><?= $page->brand_name ?></td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_BRAND_IMAGE_PATH').$page->brand_image?>" height="100">
                </td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_BRAND_IMAGE_PATH').$page->brand_logo?>" height="100">
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
                  <a href="{{ url('brand/edit_brand/' . $page->brand_id) }}" class="btn btn-primary btn-sm btn-flat edit_brand"><i class="fa fa-edit" title="Edit"></i></a>
                  <a href="javascript:void(0)" data-url="{{ url('brand/delete_brand/'.$page->brand_id) }}" class="btn btn-danger btn-sm btn-flat delete_brand" title="Delete"><i class="fa fa-trash"></i></a>

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

