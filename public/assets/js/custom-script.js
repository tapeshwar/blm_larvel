(function(){
 $(document).click(function() {
  var $item = $(".shopping-cart");
  if ($item.hasClass("active")) {
    $item.removeClass("active");
  }
});

 $('.shopping-cart').each(function() {
  var delay = $(this).index() * 50 + 'ms';
  $(this).css({
    '-webkit-transition-delay': delay,
    '-moz-transition-delay': delay,
    '-o-transition-delay': delay,
    'transition-delay': delay
  });
});
 $('#cart').click(function(e) {
  e.stopPropagation();
  $(".shopping-cart").toggleClass("active");
});

 $('#addtocart').click(function(e) {
  e.stopPropagation();
  $(".shopping-cart").toggleClass("active");
});



})();





////////////////////////end cart js///////////////////////////////////






jQuery(document).ready(function($){
  var $form_modal = $('.cd-user-modal'),
  $form_login = $form_modal.find('#cd-login'),
  $form_signup = $form_modal.find('#cd-signup'),
  $form_forgot_password = $form_modal.find('#cd-reset-password'),
  $form_modal_tab = $('.cd-switcher'),
  $tab_login = $form_modal_tab.children('li').eq(0).children('a'),
  $tab_signup = $form_modal_tab.children('li').eq(1).children('a'),
  $forgot_password_link = $form_login.find('.cd-form-bottom-message a'),
  $back_to_login_link = $form_forgot_password.find('.cd-form-bottom-message a'),



  $main_nav = $('.main-nav');
  $main_nav.on('click', function(event){

    if( $(event.target).is($main_nav) ) {
      $(this).children('ul').toggleClass('is-visible');
    } else {
      $main_nav.children('ul').removeClass('is-visible');
      $form_modal.addClass('is-visible'); 
      ( $(event.target).is('.cd-signup') ) ? signup_selected() : login_selected();
    }

  });



  //close modal
  $('.cd-user-modal').on('click', function(event){
    if( $(event.target).is($form_modal) || $(event.target).is('.cd-close-form') ) {
      $form_modal.removeClass('is-visible');
    } 
  });
  
 /* $(document).keyup(function(event){
    if(event.which=='27'){
      $form_modal.removeClass('is-visible');
    }
  });*/

  //switch from a tab to another
  $form_modal_tab.on('click', function(event) {
    event.preventDefault();
    ( $(event.target).is( $tab_login ) ) ? login_selected() : signup_selected();
  });

  //hide or show password
  $('.hide-password').on('click', function(){
    var $this= $(this),
    $password_field = $this.prev('input');
    
    ( 'password' == $password_field.attr('type') ) ? $password_field.attr('type', 'text') : $password_field.attr('type', 'password');
    ( 'Hide' == $this.text() ) ? $this.text('Show') : $this.text('Hide');
    //focus and move cursor to the end of input field
    $password_field.putCursorAtEnd();
  });

  //show forgot-password form 
  /*$forgot_password_link.on('click', function(event){
    event.preventDefault();
    forgot_password_selected();
  });*/

  //back to login from the forgot-password form
  /*$back_to_login_link.on('click', function(event){
    event.preventDefault();
    login_selected(); 
  });*/

  function login_selected(){
    $form_login.addClass('is-selected');
    $form_signup.removeClass('is-selected');
    $form_forgot_password.removeClass('is-selected');
    $tab_login.addClass('selected');
    $tab_signup.removeClass('selected');
  }

  function signup_selected(){ 
    $form_login.removeClass('is-selected');
    $form_signup.addClass('is-selected');
    $form_forgot_password.removeClass('is-selected');
    $tab_login.removeClass('selected'); $tab_signup.addClass('selected'); 
  }

  function forgot_password_selected(){
    $form_login.removeClass('is-selected');
    $form_signup.removeClass('is-selected');
    $form_forgot_password.addClass('is-selected');
  }

});
///////////////////////////////////////////////////////////




////////////////////////owl-carousel js///////////////////////////////////



jQuery(function() {
  jQuery(".owl-carousel").owlCarousel({
    items: 1,
    merge: true,
    loop: true,
    autoPlay:true,
    margin: 10,
        //video: true,
        //lazyLoad: true,
        center: true,
        responsive: {
          320: {
            items: 1
          },
          560: {
            items: 2
          },
          992: {
            items: 4
          }
        }
      });
});


////////////////////////header sticky js///////////////////////////////////

 // Hide header on scroll down
 var didScroll;
 var lastScrollTop = 0;
 var delta = 5;
 var navbarHeight = jQuery('header').outerHeight();

 jQuery(window).scroll(function(event){
  didScroll = true;
});

 setInterval(function() {
  if (didScroll) {
    hasScrolled();
    didScroll = false;
  }
}, 250);

 function hasScrolled() {
  var st = jQuery(this).scrollTop();

    // Make scroll more than delta
    if(Math.abs(lastScrollTop - st) <= delta)
      return;
    
    // If scrolled down and past the navbar, add class .nav-up.
    if (st > lastScrollTop && st > navbarHeight){
        // Scroll Down
        jQuery('header').removeClass('nav-down').addClass('nav-up');
      } else {
        // Scroll Up
        if(st + jQuery(window).height() < jQuery(document).height()) {
          jQuery('header').removeClass('nav-up').addClass('nav-down');
        }
      }

      lastScrollTop = st;
    }

/////////////////////////gallery js//////////////////////////////////

jQuery( ".img-wrapper" ).hover(
  function() {
    jQuery(this).find(".img-overlay").animate({opacity: 1}, 600);
  }, function() {
    jQuery(this).find(".img-overlay").animate({opacity: 0}, 600);
  }
  );

// Lightbox
var jQueryoverlay = jQuery('<div id="overlay"></div>');
var jQueryimage = jQuery("<img>");
var jQueryprevButton = jQuery('<div id="prevButton"><i class="fa fa-long-arrow-left"></i></div>');
var jQuerynextButton = jQuery('<div id="nextButton"><i class="fa fa-long-arrow-right"></i></div>');
var jQueryexitButton = jQuery('<div id="exitButton"><i class="fa fa-times-circle-o"></i></div>');

// Add overlay
jQueryoverlay.append(jQueryimage).prepend(jQueryprevButton).append(jQuerynextButton).append(jQueryexitButton);
jQuery("#gallery").append(jQueryoverlay);

// Hide overlay on default
jQueryoverlay.hide();

// When an image is clicked
jQuery(".img-overlay").click(function(event) {
  // Prevents default behavior
  event.preventDefault();
  // Adds href attribute to variable
  var imageLocation = jQuery(this).prev().attr("href");
  // Add the image src to jQueryimage
  jQueryimage.attr("src", imageLocation);
  // Fade in the overlay
  jQueryoverlay.fadeIn("slow");
});

// When the overlay is clicked
jQueryoverlay.click(function() {
  // Fade out the overlay
  jQuery(this).fadeOut("slow");
});

// When next button is clicked
jQuerynextButton.click(function(event) {
  // Hide the current image
  jQuery("#overlay img").hide();
  // Overlay image location
  var jQuerycurrentImgSrc = jQuery("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var jQuerycurrentImg = jQuery('#image-gallery img[src="' + jQuerycurrentImgSrc + '"]');
  // Finds the next image
  var jQuerynextImg = jQuery(jQuerycurrentImg.closest(".image").next().find("img"));
  // All of the images in the gallery
  var jQueryimages = jQuery("#image-gallery img");
  // If there is a next image
  if (jQuerynextImg.length > 0) { 
    // Fade in the next image
    jQuery("#overlay img").attr("src", jQuerynextImg.attr("src")).fadeIn(800);
  } else {
    // Otherwise fade in the first image
    jQuery("#overlay img").attr("src", jQuery(jQueryimages[0]).attr("src")).fadeIn(800);
  }
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When previous button is clicked
jQueryprevButton.click(function(event) {
  // Hide the current image
  jQuery("#overlay img").hide();
  // Overlay image location
  var jQuerycurrentImgSrc = jQuery("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var jQuerycurrentImg = jQuery('#image-gallery img[src="' + jQuerycurrentImgSrc + '"]');
  // Finds the next image
  var jQuerynextImg = jQuery(jQuerycurrentImg.closest(".image").prev().find("img"));
  // Fade in the next image
  jQuery("#overlay img").attr("src", jQuerynextImg.attr("src")).fadeIn(800);
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When the exit button is clicked
jQueryexitButton.click(function() {
  // Fade out the overlay
  jQuery("#overlay").fadeOut("slow");
});

/////////////////////salon slider js//////////////////////////////////////

jQuery(function(){
  jQuery('.carousel-item').eq(0).addClass('active');
  var total = jQuery('.carousel-item').length;
  var current = 0;
  jQuery('#moveRight').on('click', function(){
    var next=current;
    current= current+1;
    setSlide(next, current);
  });
  jQuery('#moveLeft').on('click', function(){
    var prev=current;
    current = current- 1;
    setSlide(prev, current);
  });
  function setSlide(prev, next){
    var slide= current;
    if(next>total-1){
     slide=0;
     current=0;
   }
   if(next<0){
    slide=total - 1;
    current=total - 1;
  }
  jQuery('.carousel-item').eq(prev).removeClass('active');
  jQuery('.carousel-item').eq(slide).addClass('active');
  setTimeout(function(){

  },800);



  console.log('current '+current);
  console.log('prev '+prev);
}
});

/////////////////////////Blog skrollr js//////////////////////////////////


jQuery(document).ready(function() {
  var s = skrollr.init();
})

/////////////////////bxslider js//////////////////////////////////////

jQuery(document).ready(function(){
  jQuery('.bxslider').bxSlider();
});


///////////////////////calendar js////////////////////////////////////

document.addEventListener('DOMContentLoaded', function() {
  var calendarEl = document.getElementById('calendar');

  var calendar = new FullCalendar.Calendar(calendarEl, {

    plugins: [ 'dayGrid','rrule'],
    timeZone: 'UTC',
    defaultView: 'dayGridMonth',
    events: [
    {     
      title: '',
      rrule:'DTSTART:20191111T103000Z\nRRULE:FREQ=WEEKLY;INTERVAL=1;UNTIL=20290601;BYDAY=TU,TH',      
      duration: ''
    },
    {     
     title: '',
     backgroundColor: '#ff03037a',
     rrule: {
      freq: 'weekly',
      interval: 2,
      byweekday: [ 'mo', 'fr' ],
      dtstart: '',
      until: '2030-06-01'
    },      
    duration: ''
  }
  ]

});

  calendar.render();
});

////////////////////////owl-carousel1 sliders///////////////////////////////////

$('#owl-carousel').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
  "<i class='fa fa-angle-left'></i>",
  "<i class='fa fa-angle-right'></i>"
  ],
      //autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 4
        },
        600: {
          items: 4
        },
        1000: {
          items: 4
        }
      }
    });
$('#owl-carousel1').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
  "<i class='fa fa-angle-left'></i>",
  "<i class='fa fa-angle-right'></i>"
  ],
      //autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 4
        },
        600: {
          items: 4
        },
        1000: {
          items: 4
        }
      }
    });
$('#owl-carousel2').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
  "<i class='fa fa-angle-left'></i>",
  "<i class='fa fa-angle-right'></i>"
  ],
      //autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 4
        },
        600: {
          items: 4
        },
        1000: {
          items: 4
        }
      }
    });
$('#owl-carousel3').owlCarousel({
  loop: true,
  margin: 10,
  nav: true,
  navText: [
  "<i class='fa fa-angle-left'></i>",
  "<i class='fa fa-angle-right'></i>"
  ],
      //autoplay: true,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 4
        },
        600: {
          items: 4
        },
        1000: {
          items: 4
        }
      }
    });




///////////////////////////////////////////////////////////

$(document).ready(function(){ 
  $(document).on("keydown", ".mask_mobile", function(e) { 
      var key = e.charCode || e.keyCode || 0;
      var mobile = $(this);
      if (key !== 8 && key !== 9) {
          if (mobile.val().mobile === 5) {
            //mobile.val(mobile.val() + ' ');
         }  
      }
      return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));	
  }).bind('focus click', function () {
      var mobile = $(this);
      var val = mobile.val();
      mobile.val('').val(val); 
  });     
  
  
  $(document).on("keydown", ".mask_pincode", function(e) { 
      var key = e.charCode || e.keyCode || 0;
      var pincode = $(this);
      if (key !== 8 && key !== 9) {
          if (pincode.val().length === 5) {
            //pincode.val(pincode.val() + ' ');
         }  
      }
      return (key == 8 || key == 9 || key == 46 || (key >= 48 && key <= 57) || (key >= 96 && key <= 105));	
  }).bind('focus click', function () {
      var pincode = $(this);
      var val = pincode.val();
      pincode.val('').val(val); 
  });
})





