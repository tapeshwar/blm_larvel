$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });


/* $(document).ready(function(){
    CKEDITOR.replace('ck_editor1',{
        "extraPlugins" : 'imagebrowser',
        "filebrowserBrowseUrl": 'dfsdasd',
    });

}); */	


$('.delete_brand').on('click', function () {
    var th = $(this);
    if(confirm('Are you sure want to delete?')){
        $.get(th.attr('data-url'), '',
            function (data, textStatus, jqXHR) {
                //alert(data);
                document.location.reload();
            },    
        );
    }

});


