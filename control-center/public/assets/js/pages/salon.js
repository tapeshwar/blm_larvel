$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });


$('.delete_salon').on('click', function () {
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

$(document).ready(function () {
    $(document).on('click', '.salon_working_time', function () {
            
        $('.load-overlay').show();
        $('#modal-placeholder').html('');
        var actionUrl = $(this).attr('data-url');
        //alert(actionUrl);
        $('#modal-placeholder').load(actionUrl, function () {
            $('.load-overlay').hide();
            $("#myModalHorizontal").modal();
            //$('.update-worker-error').remove();

            $("#add_module_form").validate({
                submitHandler: function (form) {
                    //alert($("#user_registration_form").attr('data-url'));
                    //var btn = $('#user_registration_btn .btn_submit').loading('set');
                    $.ajax({
                        url: $("#add_module_form").attr('action'),
                        //dataType: "json",
                        type: "post",
                        data: new FormData($('#add_module_form')[0]),
                        contentType: false,
                        cache: false,
                        processData: false,
                        success: function (res) {
                            //alert(res);return false;
                            if (res == 'success') {
                                window.location.reload();
                            }
                            if (res == 'duplicate') {
                                alert('Duplicate Method Name');
                                return false;
                            }
                        }
                    }).always(function () {
                        //btn.loading('reset');
                    });
                }
            }); 
            
        });
    });

    $('.timepicker').timepicker({
        showInputs: false
    })

});


