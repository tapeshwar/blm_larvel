$(document).ready(function () {

    function view_uploaded_img(t) {
        if ($(t).parent().children().is('div.show_images')) {
        $(t).parent().children('.show_images').html('');
        } else {
        $(t).after('<div class="show_images"></div>');
        }
        var files = t.files;
        for (var i = 0; i < files.length; i++) {
        var file = files[i];
        var imageType = /image.*/;
        if (!file.type.match(imageType)) {
            continue;
        }
        var imgId = 'show_img_' + Math.random() + i;
        $(t).parent().children('.show_images').append('<img id="' + imgId + '" src="">');
        var img = document.getElementById(imgId);
        img.file = file;
        var reader = new FileReader();
        reader.onload = (function (aImg) {
            return function (e) {
            aImg.src = e.target.result;
            };
        })(img);
        reader.readAsDataURL(file);
        }
    }
    $(document).on('change', '.view_photo', function () {
        view_uploaded_img(this);
    });

    $(document).on('change','#getCountry', function(){
        var countryId = $(this).val(); 
        if(countryId!=''){
            $.ajax({
                type: "POST",
                url: $('#state_url').attr('data-url'),
                data: {'countryId':countryId},
                dataType: "json",
                success: function (res) {
                    var option = '<option value="">Select</option>';
                    $.each( res, function( i, val ) {
                        option+= '<option value="'+val.state_id+'">'+val.state_name+'</option>';
                    });
                    $('#getState').html(option);  
                }
            })
        }else{
            $('#getState').html('<option value="">Select</option>');
            $('#getCity').html('<option value="">Select</option>');
        }

    })

    $(document).on('change','#getState', function(){
        var stateId = $(this).val(); 
        if(stateId!=''){
            $.ajax({
                type: "POST",
                url: $('#city_url').attr('data-url'),
                data: {'stateId':stateId},
                dataType: "json",
                success: function (res) {
                    var option = '<option value="">Select</option>';
                    $.each( res, function( i, val ) {
                        option+= '<option value="'+val.city_id+'">'+val.city_name+'</option>';
                    });
                    $('#getCity').html(option);  
                }
            })
        }else{
            $('#getCity').html('<option value="">Select</option>');
        }

    })

    


});