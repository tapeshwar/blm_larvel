jQuery(function($) {

    var updateArrows = function(){
        $('.carouselGallery-right').removeClass('disabled');
        $('.carouselGallery-left').removeClass('disabled');
        var curIndex = $('.carouselGallery-carousel.active').data('index');
        updateArrows.nbrOfItems = updateArrows.nbrOfItems || $('.carouselGallery-carousel').length -1;

        curIndex === updateArrows.nbrOfItems && $('.carouselGallery-right').addClass('disabled');
        curIndex === 0 && $('.carouselGallery-left').addClass('disabled');
    }
    $('.carouselGallery-carousel').on('click', function(e){
        scrollTo = $('body').scrollTop();
       $('body').addClass('noscroll');
       $('body').css('position', 'fixed');
        $('.carouselGallery-col-1, .carouselGallery-col-2').removeClass('active');
        $(this).addClass('active');
        showModal($(this));
        updateArrows();
    });

    $('body').on('click', '.carouselGallery-right, .carouselGallery-left', function(e){
        if($(this).hasClass('disabled')) return;
        var curIndex = $('.carouselGallery-carousel.active').data('index');
        var nextItemIndex = parseInt(curIndex+1);
        if($(this).hasClass('carouselGallery-left')){
            nextItemIndex-=2;
        }
        var nextItem = $('.carouselGallery-carousel[data-index='+nextItemIndex+']');
       // console.log(nextItemIndex);
        if(nextItem.length > 0){
            $('.carouselGallery-col-1, .carouselGallery-col-2').removeClass('active');
            $('body').find('.carouselGallery-wrapper').remove();
            showModal($(nextItem.get(0)));
            nextItem.first().addClass('active');
        }
        updateArrows();
    });

    var modalHtml = '';
    showModal = function(that){
     //   console.log(that);
        var username = that.data('username'),
        location = that.data('location'),
        imagetext = that.data('imagetext'),
        likes =  that.data('likes'),
        imagepath = that.data('imagepath'),
        carouselGalleryUrl = that.data('url');
        postURL =  that.data('posturl');
        data_img_id = that.data('id');

        maxHeight = $(window).height()-100;

        if ($('.carouselGallery-wrapper').length === 0) {
            if(typeof imagepath !== 'undefined') {
                modalHtml = "<div class='carouselGallery-wrapper'>";
                modalHtml += "<div class='carouselGallery-modal'><span class='carouselGallery-left'><span class='icons icon-arrow-left6'></span></span><span class='carouselGallery-right'><span class='icons icon-arrow-right6'></span></span>";
                modalHtml += "<div class='container'>";
                modalHtml += "<span class='icons iconscircle-cross close-icon'></span>";
                modalHtml += "<div class='carouselGallery-scrollbox' style='max-height:"+maxHeight+"px'><div class='carouselGallery-modal-image'>";
                modalHtml += "<img src='"+imagepath+"' alt='carouselGallery image'>";
                modalHtml += "</div>";
                modalHtml += "<div class='carouselGallery-modal-text'>";
                modalHtml += "<span class='carouselGallery-modal-username'><a href='"+postURL+"'>"+username+"</a> </span>"
                modalHtml += "<span class='carouselGallery-modal-location'>"+location+"</span>";
                modalHtml += "<span class='carouselGallery-item-modal-likes'>";
                modalHtml += "<a href='javascript:void(0)'><span class='icons icon-heart add-likes' data-val='1' data-img-id='"+data_img_id+"' style='color:#333'></span></a><span class='lk-div'>"+likes+"</span>";
                //modalHtml += "<a href='"+postURL+"'>"+likes+"</a>";
                modalHtml += "</span>";
                modalHtml += "<span class='carouselGallery-modal-imagetext'>";
                modalHtml += "<p>"+imagetext+"</p>";
                modalHtml += "</span></div></div></div></div></div>";
                $('body').append(modalHtml).fadeIn(2500);
            }
        }
    };

    $('body').on( 'click','.carouselGallery-wrapper', function(e) {
        if($(e.target).hasClass('.carouselGallery-wrapper')){
            removeModal();
        }
    });
    $('body').on('click', '.carouselGallery-modal .iconscircle-cross', function(e){
        removeModal();
    });

     var removeModal = function(){
        $('body').find('.carouselGallery-wrapper').remove();
        $('body').removeClass('noscroll');
        $('body').css('position', 'static');
        $('body').animate({scrollTop: scrollTo}, 0);
    };

    // Avoid break on small devices
    var carouselGalleryScrollMaxHeight = function() {
        if ($('.carouselGallery-scrollbox').length) {
            maxHeight = $(window).height()-100;
            $('.carouselGallery-scrollbox').css('max-height',maxHeight+'px');
        }
    }
    $(window).resize(function() { // set event on resize
        clearTimeout(this.id);
        this.id = setTimeout(carouselGalleryScrollMaxHeight, 100);
    });
    document.onkeydown = function(evt) {
        evt = evt || window.event;
        if (evt.keyCode == 27) {
            removeModal();
        }
    };


    $(document).on('click','.add-likes',function(){
        var add_like = $(this).attr('data-val');
        var img_id = $(this).attr('data-img-id');

        $.ajax({
            method: "POST",
            url:"../ajax.php",
            data:{ "add_like":add_like,"img_id":img_id,"add_like":"yes"},
            success: function (response) {
                //alert(response);
                $('.lk-div').html(response);
                
            }
        });

        $(this).removeClass('add-likes');
        $(this).addClass('remove-likes');
        $(this).css('color','');
        

    });

    $(document).on('click','.remove-likes',function(){
        var add_like = $(this).attr('data-val');
        var img_id = $(this).attr('data-img-id');

        $.ajax({
            method: "POST",
            url:"../ajax.php",
            data:{ "add_like":add_like,"img_id":img_id,"add_like":"no"},
            success: function (response) {
                $('.lk-div').html(response);
            }
        });

        $(this).removeClass('remove-likes');
        $(this).addClass('add-likes');
        $(this).css('color','#333');
        
    });

});
