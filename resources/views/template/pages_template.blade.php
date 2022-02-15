@include('common.pages_header')

<?php
$class_name =  class_basename(Route::current()->controller);
$class = substr(strtolower($class_name), 0, -10);

list(, $action) = explode('@', Route::getCurrentRoute()->getActionName());
$method = $action;
?>


<?php
$file_name = $class.'.'.$method.'_view'; 
?>



@include($file_name)

@include('common.pages_footer')

