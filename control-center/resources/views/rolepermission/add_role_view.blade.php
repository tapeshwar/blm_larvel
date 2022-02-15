
<form action="{{url('rolepermission/store_role')}}" method="post" name="add_role_form">
<div class="row">
  <div class="col-lg-6 mt20">
    <div class="form-group">
      <label for="title">Role Name</label>
      <input class="form-control" name="role_name" type="text" placeholder="Role Name" data-msg-required="Role name is required" required>
    </div>
  </div>
</div>

<div class="row"> 
<div class="col-lg-12 mt20">

<table class="table table-responsive table-bordered">
<thead>
		<tr>
		    <th class="text-center" style="width: 20%"> Modules / Access Privileges </th> 
		</tr>
	    </thead>
  <tbody>
<?php
  if (!empty($modules)) {
        foreach ($modules as $controller_name=>$method_name) {
      ?>
    <tr>
      <td class="text-capitalize pl30">
      <div class="checkbox">
        <label>
        <input data-sec="affiliate" class="controller_checkbox" type="checkbox"> <strong> <?= $controller_name; ?></strong>
        </label>
      </div>
      </td>
    </tr>
    <tr>
    		<td>
    			<div class="row ml60">
            <?php
              if (!empty($method_name)) {
                foreach ($method_name as $key=>$val) {

              ?>
              <div class="col-sm-4">
                <div class="pull-left "> 
                  <input name="method_name[]" id="<?= $val['method_name'] ?>" type="checkbox" class="acckey affiliate" value="<?= $val['id'] ?>">
                </div>
                <div class="pull-left ml15"> 
                  <label for="<?= $val['method_name'] ?>" style="font-weight: normal; padding-top: 2px; padding-left:3px; padding-bottom: 3px;"> <?= $val['module_name'] ?></label>
                </div>
                <div class="clearfix"></div>
              </div>

              <?php }  } ?> 

				  </div>
    	</td>
    </tr>

    <?php 
      }
    }
    ?>


  </tbody>
</table>


</div>

</div>
<div class="row"> 
<div class="form-group col-sm-12">
  @csrf
  <button class="btn btn-success btn-flat create_new_role_btn" type="submit">Create Role</button>
</div>
</div>

</form>



