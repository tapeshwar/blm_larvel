$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });


$('.delete_product').on('click', function () {
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


