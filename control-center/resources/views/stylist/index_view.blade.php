
<div class="row"> 

    <div class="col-md-5">
        <form action="" method="GET" role="search">
           <!--  @csrf -->
            <div class="input-group">
                <input type="text" class="form-control" name="q" value="{{ app('request')->input('q') }}"
                    placeholder="Enter stylist name"> <span class="input-group-btn">
                    <button type="submit" class="btn btn-primary">
                        <span class="glyphicon glyphicon-search"></span>
                    </button>
                </span>
                
            </div>
            
        </form>
    </div>
    <div class="col-md-1"><a href="{{ url('stylist/index')}}" class="btn btn-md btn-default">Reset</a></div>

    <div class="col-md-6">
        <a href="{{ url('stylist/create_stylist') }}" class="btn btn-flat btn-primary pull-right">New Stylist</a>
    </div>

    <div class="col-lg-12 mt20">
  
    <?php //echo $this->pagination->create_links(); ?>
      <table class="table table-responsive table-bordered">
        <thead>
          <tr>
            <th width="3%">#</th>
            <th width="15%">STYLIST CODE</th>
            <th width="20%">STYLIST NAME</th>
            <th width="20%">STYLIST IMAGE</th>
            <th width="15%">STYLIST MOBILE</th>
            <th width="15%">STYLIST TYPE</th>
            
            <th width="10%">STATUS</th>
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
                <td><?= $page->stylist_code ?></td>
                <td><?= $page->stylist_name ?></td>
                <td>
                  <img src="<?=Config::get('constants.VIEW_STYLIST_IMAGE_PATH').$page->profile_picture?>" height="100">
                </td>
                <td><?= $page->mobile_number ?></td>
                <td><?php 
                  $salonData = getSalonName($page->salon_code);
                  if($page->stylist_employment_type == 0) {
                    echo 'Independent';
                  }
                  if($page->stylist_employment_type == 1) {
                    echo 'With Salon'.'<div>('.$salonData->salon_name.')</div>';
                  }
                  ?>
                </td>
                <td> 
                  <?php if($page->activation_status == 1){ ?>
                    <button class="btn btn-success btn-xs">Active</button>
                  <?php } ?>
                  <?php if($page->activation_status == 0){ ?>
                    <button class="btn btn-danger btn-xs">Inactive</button>
                  <?php } ?>
                </td>
               
                <td>
                  <a href="javascript:void(0)" data-url="{{ url('stylist/salon_gallery/'.$page->stylist_id) }}" class="btn btn-primary btn-xs btn-flat stylist_gallery" title="Product Gallery">Manage Services </a>
                  <a href="javascript:void(0)" data-url="{{ url('stylist/salon_gallery/'.$page->stylist_id) }}" class="btn btn-warning btn-xs btn-flat stylist_gallery" title="Product Gallery">Manage Working Time</a>
                  <a href="javascript:void(0)" data-url="{{ url('stylist/salon_gallery/'.$page->stylist_id) }}" class="btn btn-primary btn-xs btn-flat stylist_gallery" title="Product Gallery">Manage Gallery</a>
                  <a href="{{ url('stylist/edit_salon/' . $page->stylist_id) }}" class="btn btn-primary btn-sm btn-flat edit_salon"><i class="fa fa-edit" title="Edit"></i></a>
                  <a href="javascript:void(0)" data-url="{{ url('stylist/delete_stylist/'.$page->stylist_id) }}" class="btn btn-danger btn-sm btn-flat delete_stylist" title="Delete"><i class="fa fa-trash"></i></a>
                  

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

