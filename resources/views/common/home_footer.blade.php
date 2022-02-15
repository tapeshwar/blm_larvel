
  <footer>
  <div class="container">
   <div class="row">
    <div class="col-sm-6 col-lg-2">
     <div class="f-list">
      <ul>
       <h4 class="pb-2">Quick Links</h4>
       <li><a href="{{url('about')}}">About us</a> </li>
	   <li><a href="{{url('contact-us')}}">Contact us</a></li>
       <li><a href="{{url('blog')}}">Blog</a></li>
		<li><a href="{{url('insta-gallery')}}">Insta Gallery</a></li>
	   <!--<li><a href="#">faqs</a></li>-->
	   
     </ul>
   </div>
 </div>
 <div class="col-sm-6 col-lg-3">
   <div class="f-list">
    <ul>
     <h4 class="pb-2">Become our Partner</h4>
     <li><a href="{{url('salon-registration')}}">Register as Salon</a> </li>
       <li><a href="{{url('stylist-registration')}}">Register as Stylist</a></li>
       <li><a href="{{url('corporate-registration')}}">Register as Corporate</a></li>
   </ul>
 </div>
</div>
<div class="col-sm-6 col-lg-4">
 <div class="f-list">
  <ul>
   <h4 class="pb-2">need help?</h4>
   <li><a href="#"> <i class="fa fa-phone"></i> 0124 401 5666</a> </li>
   <li><a href="#"> <i class="fa fa-phone-square"></i> 1800 123 1696</a></li>
   <li><a href="#"> <i class="fa fa-envelope-o"></i> customer.support@maisondauraine.com</a></li>
   <li><a href="#"> <i class="fa fa-map-marker"></i> Building No- 22,  Electronic City, Sector – 18, Gurgaon-122001, (Haryana) India</a></li>
 </ul>
</div>
</div>
<div class="col-sm-6 col-lg-3">
 <div class="f-list">

  <h4 class="pb-2">get in touch</h4>
  <p>styleing hacks, sneak peaks + special offers, in your inbox</p>

  <div class="form-group d-flex">
   <input type="text" class="form-control flex-grow-1"  placeholder="Enter Your Email">
   <button type="button" class="btn"> Sign up</button>
 </div>

 <div class="payment-icon">
   <img src="{{asset('images/payment.png')}}" class="img-fluid" alt="payment">
 </div>
</div>
</div>
<div class="col-md-12">
 <div class="copyright">
  <p class="text-center p-5 text-gray-light">Copyright @ <?=date('Y')?> bookmyservices. All Rights Reserved</p>
</div>
</div>
</div>
</div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script src='https://cdnjs.cloudflare.com/ajax/libs/skrollr/0.6.29/skrollr.min.js'></script> -->
<script src="https://cdn.jsdelivr.net/npm/zebra_datepicker@latest/dist/zebra_datepicker.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.5/jquery.bxslider.min.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js'></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="<?=asset('assets/js/custom-script.js')?>"></script>

<script type="text/javascript" src="https://localhost/bloom/control-center/files/assets/pages/j-pro/js/jquery-cloneya.min.js"></script>
<script type="text/javascript" src="https://localhost/bloom/control-center/files/assets/pages/j-pro/js/custom/cloned-form.js"></script>
<script type="text/javascript" src="<?=asset('assets/js/select2/js/select2.min.js')?>"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>

<!-- Include the plugin's CSS and JS: -->
<script type="text/javascript" src="<?=asset('assets/js/select2/js/multi-select.js')?>"></script>
<script type="text/javascript" src="<?=asset('assets/js/select2/js/main.js')?>"></script>
 
<input type="hidden" id="redirect_url" value="{{url('service-booking?btype=c2Fsb24%3D&service_id=Mg%3D%3D&service_category_id=MQ%3D%3D')}}"> 



<script>
   $(document).on("click", '[data-toggle="lightbox"]', function(event) {
    event.preventDefault();
    $(this).ekkoLightbox();
   });
  </script>

<script>
	function book_appointment(redirect_url, is_login){  
		if(redirect_url!==''){
			if(is_login=='no'){ 
				$.ajax({
					method: "POST",
					url:"services_booking_ajax.php",
					data:{"get_redirect_url":"yes", "redirect_url":redirect_url}  
				})
				.done(function( msg ) {
					alert('You need to login as customer.'); 
					$('#redirect_url').val(redirect_url); 
					window.location.href='{{url("login")}}'; 
					      
				});  
			}
			if(is_login=='yes'){
				window.location.href=redirect_url;   
			}
		}else{    
		}	
	}


	function book_appointment_service(redirect_url, is_login){  
		if(redirect_url!==''){
			if(is_login=='no'){ 
				$.ajax({
					method: "POST",
					url:"https://localhost/bloom/services_booking_ajax.php",
					data:{"get_redirect_url":"yes", "redirect_url":redirect_url}  
				})
				.done(function( msg ) {
					//alert('You need to login as customer.'); 
					$('#redirect_url').val(redirect_url); 
					window.location.href=redirect_url+'&utype=guest';
					//window.location.href='login'; 
					      
				});  
			}
			if(is_login=='yes'){
				window.location.href=redirect_url+'&utype=user';  
			}
		}else{    
		}	
	}

	var redirect_url=$('#redirect_url').val();
	redirect_url=redirect_url.trim();
	if(redirect_url!==''){ 
		var dash_redirect_url=redirect_url;
	}else{
		var dash_redirect_url='https://localhost/bloom/dashboard.php';  
	}
	
	function fun_state(country,temp){
		$.ajax({
			method: "POST",
			url: "https://localhost/bloom/control-center/ajax.php",
			data: {country:country,temp:temp}
		}).done(function(data) {
			$(".cls_state").html(data);
		});
	}

	function fun_city(state,temp){
		$.ajax({
			method: "POST",
			url: "https://localhost/bloom/control-center/ajax.php",
			data: {state:state,temp:temp}
		}).done(function(data) {
			$(".cls_city").html(data);
		});
	}

	function validateEmailId(input) {
		var emailFormat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		if (emailFormat.test(input)) {
			return true;
		} else {
			return false;
		}
	}

	function pregMatch(input) {
		var regExp = /^[a-zA-Z ]*$/;
		if (regExp.test(input)) {
			return true;
		} else {
			return false
		}
	}
	
	function CustomerEmailDuplicacy(email,temp){
	    var type='customer';
        $.ajax({
            method: "POST",
            url: "ajax.php",
            data: {duemail:email,type:type,temp:temp}
        }).done(function(data) {
            $("#cd-error-email").html(data);
        });
	}

//===== Function to Register new user ======//
function ajaxRegistration() {
	
	$(".error").text("");
	$('#cd-error-name').removeClass("error");
	$('#cd-error-mobile').removeClass("error");
	$('#cd-error-email').removeClass("error");
	//$('#cd-error-username').removeClass("error");
	$('#cd-error-password').removeClass("error");
	$('#cd-error-cpassword').removeClass("error");

	var custName = $('#cust_name').val();
	var custMobile = $('#cust_mobile').val();
	var emailId = $('#cust_email').val();
	var Username = emailId;
	//var Username = emailId.match(/^([^@]*)@/)[1];
	var password = $('#cust_password').val();
	var confirmPassword = $('#cust_cpassword').val();
	var actionString = 'registration';

	if (custName == "") {
		$('#cd-error-name').addClass("error");
		$(".error").text("Name can not be blank");
	} else if (!pregMatch(custName)) {
		$('#cd-error-name').addClass("error");
		$(".error").text('Alphabets and white space allowed');
	} else if (custMobile == "") {
		$('#cd-error-mobile').addClass("error");
		$(".error").text("Mobile Number can not be blank");
	}else if (isNaN(custMobile) || (custMobile.indexOf(" ") != -1) || custMobile.length > 10) {
		$('#cd-error-mobile').addClass("error");
		$(".error").text("Invalid Mobile Number");
	} else if (emailId == "") {
		$('#cd-error-email').addClass("error");
		$(".error").text("Email-ID can not be blank");
	} else if (!validateEmailId(emailId)) {
		$('#cd-error-email').addClass("error");
		$(".error").text("Provide a valid Email-ID");
	}/* else if (Username == "") {
		$('#cd-error-username').addClass("error");
		$(".error").text("Provide your username");
	} */ else if (password == "") {
		$('#cd-error-password').addClass("error");
		$(".error").text("Password can not be blank");
	} else if (confirmPassword == "") {
		$('#cd-error-cpassword').addClass("error");
		$(".error").text("Please confirm you password");
	} else if (password != confirmPassword) {
		$('#cd-error-cpassword').addClass("error");
		$(".error").text("Your confirm password does not match with password.");
	} else {
		$('#loaderId').show();
		$.ajax({
			url : 'https://localhost/bloom/ajax.php',
			type : 'POST',
			data : {
				txt_name : custName,
				txt_mobile : custMobile,
				txt_email : emailId,
				txt_username : Username,
				txt_password : password,
				txt_cpassword : confirmPassword,
				CustomerRegistration : actionString
			},
			success : function(response) {
				$('#loaderId').hide();
				if (response.trim() == 'success') {
					$("#register-success").show();
					window.setTimeout(function() {
						window.location.href = 'https://localhost/bloom/registration-completed.php?complete';
					}, 2000);
				}else{
					$("#register-Error").html(response);
				}
			}
		});
		this.close();
	}
}

//===== Function to Login into system ======//
function ajaxLogin() {
	//$('#loaderId').show();
	//alert('test');
	$(".error").text("");
	$('#username-info').removeClass("error");
	$('#password-info').removeClass("error");

	var emailId = $('#signin-username').val();
	var password = $('#signin-password').val();
	var prevPage = $('#prev_page').val();
	var actionString = 'Sublogin';
	if (emailId == "") {
		$('#username-info').addClass("error");
		$(".error").text("Username can not be blank");
	} else if (password == "") {
		$('#password-info').addClass("error");
		$(".error").text("Password can not be blank");
	} else {
		// show loader
		$('#loaderId').show();
		$.ajax({
			url : 'https://localhost/bloom/ajax.php',
			type : 'POST',
			data : {
				emailId : emailId,
				password : password,
				action : actionString
			},
			success : function(response) {
				
				
				//alert(response);return false;
				var res = JSON.parse(response);

				if(res.sts=='corporate-success' && res.user_type=='CORPORATE'){
					//$("#login-success").show();
					$("#login-Error").html(res.msg);
					window.setTimeout(function() {
				        window.location.href = res.url;
					}, 1000);
				}else if(res.sts=='success'){
					//$("#login-success").show();
					$("#login-Error").html(res.msg);
					window.setTimeout(function() {
				        window.location.href = res.url;
					}, 1000);
				}else if(res.sts=='error'){
					$("#login-Error").html(res.msg);
				}
				$('#loaderId').hide();
				/* if (response.trim() == 'success') {
					$("#login-success").show();
					window.setTimeout(function() {
				        window.location.href = dash_redirect_url;
					}, 1000);
				}else{
					$("#login-Error").html(response);
				} */
			}
		});
		this.close();
	}
}

//===== Function to Login as a guest =======//
function loginGuest(){
    $('#loaderId').show();
    var action = "guestLogin";
    $.ajax({
		method: "POST",
		url: "https://localhost/bloom/ajax.php",
		data: {useraction:action}
	}).done(function(data) {
		$('#loaderId').hide();
		if (data.trim() == 'success') {
			$("#login-success").show();
			window.setTimeout(function() {
				window.location.href = dash_redirect_url;
			}, 1000);
		}else{
			$("#login-Error").html(response);
		}
	}); 
}

//===== Function to match current password with database ======//
function checkcurrentPassword(password,temp){
	$.ajax({
		method: "POST",
		url: "https://localhost/bloom/ajax.php",
		data: {passwd:password,temp:temp}
	}).done(function(data) {
		$("#cd-current-password").html(data);
	});
}

//===== Function to Change User Password ======//       
function ChangePassword() {
	$(".error").text("");
	$('#cd-current-password').removeClass("error");
	$('#cd-new-password').removeClass("error");
	$('#cd-confirm-password').removeClass("error");

	var currentPassword = $('#current-password').val();
	var NewPassword = $('#new-password').val();
	var ConfirmPassword = $('#confirm-password').val();
	var actionString = 'ChangePasswod';
	if (currentPassword == "") {
		$('#cd-current-password').addClass("error");
		$(".error").text("Current Password can not be blank");
	} else if (NewPassword == "") {
		$('#cd-new-password').addClass("error");
		$(".error").text("New Password can not be blank");
	} else if (ConfirmPassword == "") {
		$('#cd-confirm-password').addClass("error");
		$(".error").text("Confirm Password field can not be blank");
	}  else if (NewPassword != ConfirmPassword) {
		$('#cd-confirm-password').addClass("error");
		$(".error").text("Your confirm password does not match with password.");
	} else {
        // show loader
        $('#loaderId').show();
        $.ajax({
        	url : 'https://localhost/bloom/ajax.php',
        	type : 'POST',
        	data : {currentPass : currentPassword,newPass : NewPassword,confPass : ConfirmPassword, action : actionString	},
        	success : function(response) {
        		$("#change-password-error").html(response);
        		$("#cd-change-password")[0].reset();
        	}
        });
        this.close();
    }
}
</script>

<script>
	$(window).scroll(function() {
		var scroll = $(window).scrollTop();
		$(".zoom img").css({
			transform: 'translate3d(-50%, -'+(scroll/90)+'%, 0) scale('+(100 + scroll/5)/90+')',

		});
	});
</script>
<script>
	$( document ).ready(function() { 
		$(".gps_locator").click(function() {
			getUserGPSLocation();
			getLocationData('','');
		});
	});
	function getUserGPSLocation() {
		if (navigator.geolocation) {
			navigator.geolocation.getCurrentPosition(getPositions);
		} else { 
			alert("Geolocation is not supported by this browser.");
		}
	}
	function getPositions(position) { 
		var get_user_latitude=position.coords.latitude; 
		var get_user_longitude=position.coords.longitude;
		getLocationData(get_user_latitude, get_user_longitude);
		$('#get_user_latitude').val(get_user_latitude);
		$('#get_user_longitude').val(get_user_longitude);
	}
	function getLocationData(latitude1='', longitude1=''){
		if(latitude1!=='' && longitude1!==''){ 
			var latitude=latitude1;
			var longitude=longitude1;
		}else{
			var latitude=$('#get_user_latitude').val();
			var longitude=$('#get_user_longitude').val();	
		}
		
		if(latitude!=='' && longitude!==''){
			$.ajax({
				method: "POST",
				url:"https://localhost/bloom/get_locations.php",
				data:{ "getUserCity":"yes","latitude":latitude,"longitude":longitude}
			})
			.done(function( msg ) { 
				console.log(msg);  
				var addressObj = JSON.parse(msg); 
				if(addressObj.city!=='' || addressObj.city!='undefined'){  
					$('.gps_input').val(addressObj.city);
					$('#get_selected_user_city').val(addressObj.city);
					
				}
			});  
		}else{
			console.log('invalid location latlang');
		} 
	}
	function getLocationDataOnLoad() {  
		 
			$.ajax({
				method: "POST",
				url:"https://localhost/bloom/get_locations.php",
				data:{ "getUserCitySess":"yes"}
			})
			.done(function( msg ) { 
				//console.log(msg);  
				var addressObj = JSON.parse(msg); 
				if(addressObj.city!=='' || addressObj.city!='undefined'){  
					$('.gps_input').val(addressObj.city);
					$('#get_selected_user_city').val(addressObj.city);      
				}
			});  
			}

	navigator.permissions.query({name:'geolocation'}).then(function(result) {
    // Will return ['granted', 'prompt', 'denied']
    console.log(result.state);
    if(result.state=='granted'){ 
  	    getLocationDataOnLoad(); 
    }else{
  	    getUserGPSLocation();   
    } 
    });
</script> 
<input type="hidden" id="get_user_latitude" value="28.5057948"> 
<input type="hidden" id="get_user_longitude" value="77.0679477"> 
<input type="hidden" id="get_selected_user_city" value="">
<script>
	$('#togglesss').click(function() {
		$('.togglesss').slideToggle('200').addClass( "showa" );
		return false;
	});
	$('.view_notifications').click( function() {
		$.ajax({
			method: "POST",
			url:"https://localhost/bloom/notify_ajax.php",   
			data:{ "update_unviewed_notifications_by_user_stylist_salon":"yes" }       
		})
		.done(function(msg) { 
			//console.log(msg);
			$('.nf_bell').removeClass('view_notifications');
			$('.nf_badge').removeClass('badge bage_notify view_notifications');
			$('.nf_badge').html('');
		});   
	});
</script>
<script>
    document.getElementById("fil_profile").onchange = function() {
        document.getElementById("imageform").submit();
    }
</script>

 <!--Select multiple dropdown-->
 <link rel="stylesheet" href="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006288/BBBootstrap/choices.min.css?version=7.0.0">
<script src="https://res.cloudinary.com/dxfq3iotg/raw/upload/v1569006273/BBBootstrap/choices.min.js?version=7.0.0"></script>
<style>
    .choices__input--cloned {
        width:150px !important;
        display: inline-block !important;
        background: transparent !important;
        border: none !important;
        padding: 1px 4px 0px 15px !important;
        margin: 0px !important;
        }
    .choices .choices__inner {
        padding: 0 !important;
        background-color: #ffffff;
        font-weight:700;
        color:#000;
        }
    .choices__inner {
        min-height: 35px;
    }
</style>
<script>
      $(document).ready(function(){
             var multipleCancelButton = new Choices('#choices-multiple-category', {
             removeItemButton: true,
             maxItemCount:100,
             searchResultLimit:10,
             renderChoiceLimit:10
         });
         });
</script>


<script>
	$(document).ready(function(){
	$(".package_select").select2();
	$(".stylist-salon").select2();
	});
	function cancel_order_item(item_id){
		if(item_id!=''){
			if(confirm("Are you sure want to cancel this item?")){
				$.ajax({
					method: "POST",
					url:"https://localhost/bloom/ajax.php",
					data:{ "item_id":item_id,"cancel_order_item":"yes"},
					success: function (response) {
						if(response == 1){
							document.location.reload();
						}
					}
				});
			}
		}
	}

	function fun_category(){
		
		var selectedValues = $('.choices-multiple-category').val();
		if(selectedValues!=''){
			$.ajax({
				method: "POST",
				url: "https://localhost/bloom/ajax.php",
				data: {selected_category_id:selectedValues}
			}).done(function(data) {
				//alert(data);
				$(".cls_service").css("border","none");
				$(".cls_service").html(data);
				
			});
		}else{
			$(".cls_service").css("border","solid thin #ccc");
			$(".cls_service").html('');
		}
	}


	
    </script>

<script type="text/javascript">
  $(document).ready(function() {
        $('#example-post').multiselect({
            includeSelectAllOption: true,
            enableFiltering: true,
            buttonContainer: '<div class="btn-group w-100" />',
			nonSelectedText: 'Select services',
			maxHeight: 400,
			buttonWidth: 350,
        });
    });
</script>

<script type="text/javascript">
    /* $(document).ready(function() {
        $('#example-post112').multiselect({
            includeSelectAllOption: true,
            enableFiltering: true,
            buttonContainer: '<div class="btn-group w-100" />',
			nonSelectedText: 'Please select brand you dealing with ',
			buttonWidth: 350,
        });
    });


	function get_brands(){
           
		   var selectedValues = $('.choices-multiple-services').val();
		   if(selectedValues !=''){
		   $.ajax({
			   method: "POST",
			   url: "https://localhost/bloom/ajax.php",
			   data: {selected_services_id:selectedValues},
			   dataType: 'json',
			   success: function(response) {
				   
				$("#example-post112").html('');
				$(".multiselect-container", "#example-post112").remove();
					$.each(response,function(key, value){
						console.log(value.brand_name);
						$("#example-post112").append('<option value=' + value.brand_id + '>' + value.brand_name + '</option>');
						
						$(".multiselect-container, .dropdown-menu").closest("ul").append('<li class=""><a tabindex="0"><label class="checkbox"><input type="checkbox" value=' + value.brand_id + '> ' + value.brand_name + '</label></a></li>');
					});
				
             	}
		   })
		}else{
				$("#example-post112").html('');
				$(".multiselect-container", "#example-post112").remove();
			}
	   } */
</script>








<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>
<script>

function productToCartIndex(product_id,assoc_id,qty){
    
    //alert('test');return false;
		if(assoc_id!=null){
		    var actionString = 'AddToCartIndex'; 
    		$.ajax({
    			method: "POST",
    			url: "https://localhost/bloom/ajax.php",
    			data: {product_id:product_id,quantity:qty,assoc_id:assoc_id,action:actionString}
    		}).done(function(data) {
    			$("#cart-msg").html(data);
    			$("#LoadingCart").hide(); 
    			$("#MainCart").show();
    			window.setTimeout(function() {
    				//window.location.reload();
    				window.location.href="https://localhost/bloom/index.php"; 
    			}, 1000);   
    		});
		}
	}
</script>



  
  <script>
   $(document).ready(function(){
    $('.slider').slick({
     infinite: true,
     slidesToShow: 1,
     slidesToScroll: 1,
     arrows: true,
     autoplaySpeed: 1500,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
      // settings: "unslick"
     }

     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.slider-rated').slick({
     infinite: true,
     slidesToShow: 3,
     slidesToScroll: 1,
     arrows: true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }

     }

     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.slider-expert').slick({
     infinite: true,
     slidesToShow: 3,
     slidesToScroll: 1,
     arrows: true,
     dots:true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }

     }

     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.recommended').slick({
     infinite: true,
     slidesToShow: 4,
     slidesToScroll: 2,
     arrows: true,
     dots:true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }

     }

     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.near-you').slick({
     infinite: true,
     slidesToShow: 1,
     slidesToScroll: 1,
     arrows: true,
     dots:true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }

     }

     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.service').slick({
     autoplay:true,
     autoplaySpeed:1500,
     arrows:true,
     centerMode:false,
     slidesToShow:5, 
     slidesToScroll:1,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 4,
       slidesToScroll: 1
      }

     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }

     }
     ]
    });
   });
  </script>

  <script>
   $(document).ready(function(){
    $('.recommed-slider').slick({
     infinite: true,
     slidesToShow: 1,
     slidesToScroll: 1,
     arrows: true,
     dots: true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
      // settings: "unslick"
     }

     ]
    });
   });
  </script>

<script>
   $(document).ready(function(){
    $('.slider-most-visit').slick({
     infinite: true,
     slidesToShow: 2,
     slidesToScroll: 2,
     arrows: false,
     dots:true,
     autoplaySpeed: 2000,
     responsive: [
     {
      breakpoint: 1200,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 1008,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 800,
      settings: {
       slidesToShow: 2,
       slidesToScroll: 1
      }
     },
     {
      breakpoint: 600,
      settings: {
       slidesToShow: 1,
       slidesToScroll: 1
      }

 

     }

 

     ]
    });
   });
  </script>
  



<!-- Load React. -->
	<!-- Note: when deploying, replace "development.js" with "production.min.js". -->
	<script src="https://unpkg.com/react@16/umd/react.production.min.js"></script>
	<script src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js"></script>
	<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>
	<script>
		var get_selected_user_city=$("#get_selected_user_city").val();
		if(get_selected_user_city!=='' && get_selected_user_city!=='undefined'){
			get_selected_user_city=get_selected_user_city;
		}else{
			get_selected_user_city='';  
		} 
	</script>  
	<script type="text/babel">
		class AutoCompleteCityServices extends React.Component {
		constructor(props) {
		super(props);
		// searchWords was the input from the user
		// suggsKeywords was the keywords of the suggs
		// suggs were the array from the ajax response            
		// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
		this.state = {searchWords:get_selected_user_city, suggsKeywords:"", suggs:[], showSuggs:true}; 
	}
	componentDidMount() {
	document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.searcher-suggs') && !this.checkXYInElement(x, y, '.search-city-input')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getCity=reactSearch&term='+urlKeywords;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
//console.log(data);
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.searcher-suggs-word.selected').removeClass('selected');
$('.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}><i class="fa fa-map-marker"></i>{value}</li>);
}.bind(this));
}

$('#get_selected_user_city').val(this.state.searchWords);
$('.gps_input').val(this.state.searchWords); 
return (
<div>
	<input type="text" id="get_user_city_services" name="get_user_city" className="form-control search-city-input grid-100 gps_input" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Search city..." required="required"/>  
	<span class="gps_locator" id="locate_me_services"></span>
	<ul className="searcher-suggs">
		{suggestions}
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteCityServices />,
document.querySelector('#get_react_autocomplete_city_services'));
</script>  






<script type="text/babel">  
	class AutoCompleteCitySalons extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:get_selected_user_city, suggsKeywords:"", suggs:[], showSuggs:true}; 
}
componentDidMount() {
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.cityservicesul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-city-input2')) { 
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getCity=reactSearch&term='+urlKeywords;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
//console.log(data);
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.cityservices.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.cityservices.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {  
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());                
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {  
$('.cityservices.searcher-suggs-word.selected').removeClass('selected');
$('.cityservices.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="cityservices searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}><i class="fa fa-map-marker"></i>{value}</li>);
}.bind(this));
}     

$('#get_selected_user_city').val(this.state.searchWords);
$('.gps_input').val(this.state.searchWords);
return (         
<div>
	<input type="text" id="get_user_city_salons" name="get_user_city" className="form-control search-city-input2 grid-100 gps_input" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Search city..." required="required"/>  
	<span class="gps_locator" id="locate_me_salons"></span>
	<ul className="cityservicesul searcher-suggs">
		{suggestions}
	</ul>
</div>
);  
}
}
ReactDOM.render(<AutoCompleteCitySalons />,
document.querySelector('#get_react_autocomplete_city_salons'));
</script> 




<script type="text/babel">
	class AutoCompleteStlistsCity extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:get_selected_user_city, suggsKeywords:"", suggs:[], showSuggs:true}; 
}
componentDidMount() {
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.stylistscityul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-city-input3')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getCity=reactSearch&term='+urlKeywords;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
//console.log(data);
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.stylistscity.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.stylistscity.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.stylistscity.searcher-suggs-word.selected').removeClass('selected');
$('.stylistscity.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="stylistscity searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}><i class="fa fa-map-marker"></i>{value}</li>);
}.bind(this));
}

$('#get_selected_user_city').val(this.state.searchWords);
$('.gps_input').val(this.state.searchWords);
return (
<div>
	<input type="text" id="get_user_city_stylists" name="get_user_city" className="form-control search-city-input3 grid-100 gps_input" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Search city..." required="required"/>  
	<span class="gps_locator" id="locate_me_stylists"></span>
	<ul className="stylistscityul searcher-suggs">
		{suggestions}
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteStlistsCity />,
document.querySelector('#get_react_autocomplete_city_stylists'));
</script> 

<script type="text/babel">
	class AutoCompleteProductsCity extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:get_selected_user_city, suggsKeywords:"", suggs:[], showSuggs:true}; 
}
componentDidMount() {
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.productscityul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-city-input4')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getCity=reactSearch&term='+urlKeywords;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
//console.log(data);
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.productscity.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.productscity.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.productscity.searcher-suggs-word.selected').removeClass('selected');
$('.productscity.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="productscity searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}><i class="fa fa-map-marker"></i>{value}</li>);
}.bind(this));
}

$('#get_selected_user_city').val(this.state.searchWords);
$('.gps_input').val(this.state.searchWords);
return (
<div>
	<input type="text" id="get_user_city_products" name="get_user_city" className="form-control search-city-input4 grid-100 gps_input" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Search city..." required="required"/>  
	<span class="gps_locator" id="locate_me_products"></span>
	<ul className="productscityul searcher-suggs">
		{suggestions}
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteProductsCity />,
document.querySelector('#get_react_autocomplete_city_products'));
</script> 
<!-- services/products/salon/stylist search -->
<script type="text/babel">
	class AutoCompleteGetSalonsByServices extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:"", suggsKeywords:"", suggs:[], showSuggs:true, get_user_selected_city:get_selected_user_city}; 
}
componentDidMount() { 
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.getslonsbyservicesul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-salonsby-services-input')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let get_user_selected_city=$('#get_selected_user_city').val();
if(get_user_selected_city!=='' && get_user_selected_city!=='undefined'){
get_user_selected_city=get_user_selected_city;
$('.gps_input').removeClass('cityError');
}else{
$('.gps_input').addClass('cityError');
$('.gps_input').focus();	 
}
let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getsalonsByServices=reactSearchSalonsByServices&term='+urlKeywords+'&get_user_city='+get_user_selected_city;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
console.log(data); 
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
if(dataObj.message=='empty_results'){
/* $('#services_msg').html('<div class="alert alert-danger fade in alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a><strong>Error!</strong> Empty services results for this location. You may change your city.</div>'); */
}
if(dataObj.message=='success'){
$('#services_msg').html(''); 
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.getslonsbyservices.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.getslonsbyservices.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.getslonsbyservices.searcher-suggs-word.selected').removeClass('selected');
$('.getslonsbyservices.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="getslonsbyservices searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}>{value}</li>);
}.bind(this));
}

return (
<div>
	<input type="text" id="search_salon_by_services" name="search_salon_by_services" className="form-control search-salonsby-services-input grid-100" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Type services like hair cut, hair color, facial..." required="required"/>  
	<ul className="getslonsbyservicesul searcher-suggs">
		{suggestions}
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteGetSalonsByServices />,
document.querySelector('#get_react_autocomplete_services'));
</script> 

<script type="text/babel">
	class AutoCompleteGetSalons extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:"", suggsKeywords:"", suggs:[], showSuggs:true, get_user_selected_city:get_selected_user_city}; 
}
componentDidMount() { 
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.getslonsul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-salons-input')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let get_user_selected_city=$('#get_selected_user_city').val();
if(get_user_selected_city!=='' && get_user_selected_city!=='undefined'){
get_user_selected_city=get_user_selected_city;
$('.gps_input').removeClass('cityError');
}else{
$('.gps_input').addClass('cityError');
$('.gps_input').focus();	 
}
let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getSalons=reactSearchSalons&term='+urlKeywords+'&get_user_city='+get_user_selected_city;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
console.log(data); 
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
if(dataObj.message=='empty_results'){
/* $('#salons_msg').html('<div class="alert alert-danger fade in alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a><strong>Error!</strong> Empty salon results for this location. You may change your city.</div>'); */
}
if(dataObj.message=='success'){
$('#salons_msg').html(''); 
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.getslons.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.getslons.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.getslons.searcher-suggs-word.selected').removeClass('selected');
$('.getslons.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="getslons searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}>{value}</li>);
}.bind(this));
}

return (
<div>
	<input type="text" id="search_salons" name="search_salons" className="form-control search-salons-input grid-100" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Type salon name..." required="required"/>  
	<ul className="getslonsul searcher-suggs">
		{suggestions}
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteGetSalons />,
document.querySelector('#get_react_autocomplete_salons'));
</script> 

<script type="text/babel">
	class AutoCompleteGetStylists extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:"", suggsKeywords:"", suggs:[], showSuggs:true, get_user_selected_city:get_selected_user_city}; 
}
componentDidMount() { 
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.getstylistsul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-stylists-input')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let get_user_selected_city=$('#get_selected_user_city').val();
if(get_user_selected_city!=='' && get_user_selected_city!=='undefined'){
get_user_selected_city=get_user_selected_city;
$('.gps_input').removeClass('cityError');
}else{
$('.gps_input').addClass('cityError');
$('.gps_input').focus();	 
}
let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getStylists=reactSearchStylists&term='+urlKeywords+'&get_user_city='+get_user_selected_city;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
console.log(data); 
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
if(dataObj.message=='empty_results'){
/* $('#stylists_msg').html('<div class="alert alert-danger fade in alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a><strong>Error!</strong> Empty salon results for this location. You may change your city.</div>'); */
}
if(dataObj.message=='success'){
$('#stylists_msg').html(''); 
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.getstylists.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.getstylists.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.getstylists.searcher-suggs-word.selected').removeClass('selected');
$('.getstylists.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="getstylists searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}>{value}</li>);
}.bind(this));
}

return (
<div>
	<input type="text" id="search_stylists" name="search_stylists" className="form-control search-stylists-input grid-100" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Type experts or stylist name..." required="required"/>  
	<ul className="getstylistsul searcher-suggs">
		{suggestions} 
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteGetStylists />,
document.querySelector('#get_react_autocomplete_stylists'));
</script> 

<script type="text/babel">
	class AutoCompleteGetProducts extends React.Component {
	constructor(props) {
	super(props);
	// searchWords was the input from the user
	// suggsKeywords was the keywords of the suggs
	// suggs were the array from the ajax response            
	// showSuggs means we should show the suggs if the searchWords was the same as the suggsKeywords
	this.state = {searchWords:"", suggsKeywords:"", suggs:[], showSuggs:true, get_user_selected_city:get_selected_user_city}; 
}
componentDidMount() { 
document.addEventListener('mousedown', this.handleMouseDown.bind(this));
}

componentWillUnmout() {
document.removeEventListener('mousedown', this.handleMouseDown.bind(this));
}

handleMouseDown(event) {
let x = $(document).scrollLeft() + event.clientX; // event.offsetX
let y = $(document).scrollTop() + event.clientY; // event.offsetY

// did not click on the search input or the suggestion list
if (this.state.showSuggestions && !this.checkXYInElement(x, y, '.getproductsul.searcher-suggs') && !this.checkXYInElement(x, y, '.search-products-input')) {
this.setState({showSuggestions: false});
}
}

checkXYInElement(x, y, className) {
let elem = $(className);
if (elem.length == 0) {
return false;
}

let rect = {x: elem.offset().left, y: elem.offset().top, w: elem.outerWidth(), h: elem.outerHeight()};

if (x < rect.x || y < rect.y || x > (rect.x + rect.w) || y > (rect.y + rect.h)) {
return false;      
}

return true;
}
// check the input keywords (without URL encode) with the suggsKeywords
// true if the input was the same as the suggsKeywords
// otherwise, false
checkSuggsKeywords(keywords) {
if (this.state.suggsKeywords == encodeURIComponent(keywords.toLowerCase())) {
return true;
}
return false;
}
// check and send request to google for suggestions
// the request will not send if the input was the same as the suggsKeywords
// or length equals to 0
requestSuggestions(keywords) {
// current suggs was request with the input keywords
// no need to send again
if (this.checkSuggsKeywords(keywords)) {
return;
}

// empty keywords just reset the suggsKeywords and suggs
if (keywords.length == 0) {
this.setState({suggsKeywords:"", suggs:[]});
return;
}

let get_user_selected_city=$('#get_selected_user_city').val();
if(get_user_selected_city!=='' && get_user_selected_city!=='undefined'){
get_user_selected_city=get_user_selected_city;
$('.gps_input').removeClass('cityError');
}else{
$('.gps_input').addClass('cityError');
$('.gps_input').focus();	 
}
let urlKeywords = encodeURIComponent(keywords.toLowerCase());
this.setState({suggsKeywords:urlKeywords, suggs:[]});
let url = 'https://localhost/bloom/custom_ajax.php?getProducts=reactSearchProducts&term='+urlKeywords+'&get_user_city='+get_user_selected_city;
$.ajax({  
url: url, 
type: 'GET',
success: function(data) {
// data[0] was the keywords to search
// data[1] was the array of the server suggestion keywords  
console.log(data); 
let dataObj=JSON.parse(data);  
if (this.checkSuggsKeywords(dataObj.searchTag)) {
this.setState({suggs:dataObj.suggestionList});
}
if(dataObj.message=='empty_results'){
/* $('#products_msg').html('<div class="alert alert-danger fade in alert-dismissible"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a><strong>Error!</strong> Empty salon results for this location. You may change your city.</div>'); */
}
if(dataObj.message=='success'){
$('#products_msg').html(''); 
}
}.bind(this)

});

}

// handle the onChange event the search input
handleSearcherInputChange(event) {
let newSearchWords = event.target.value;
this.setState({searchWords: newSearchWords, showSuggestions: true});

this.requestSuggestions(newSearchWords);
}

// handle user click on the list of the suggestions
handleClickSuggetionsKeywords(event) {
this.setState({searchWords:event.target.textContent, showSuggestions: false});
this.requestSuggestions(event.target.textContent);
}

// handle the onFocus event of the search input
handleFocusSearcherInput(event) {
this.setState({showSuggestions: true});
}

// handel the key down event of the search input
handleSearcherInputKeyDown(event) {
if (this.state.showSuggestions) {
// use keyboard to select the suggesions
this.handleSelectSuggestions(event);
} else {
// just show the suggestions list
this.setState({showSuggestions: true});
}
}

// use use keyboards to select the suggestions
handleSelectSuggestions(event) {
let li = $('.getproducts.searcher-suggs-word.selected');
// 40 => down, 38 => up
if (event.keyCode == 40 || event.keyCode == 38) {
event.preventDefault();
if (li.length == 0) {
$('.getproducts.searcher-suggs-word:first-child').toggleClass('selected');
} else if (event.keyCode == 40) {
li.removeClass('selected');
li.next().toggleClass('selected');
} else {
li.removeClass('selected');
li.prev().toggleClass('selected');
}
} else {
// 13 => enter
if (event.keyCode == 13) {
event.preventDefault();

if (li.length > 0) {
this.setState({searchWords:li.text(), showSuggestions: false});
this.requestSuggestions(li.text());
} else {
this.setState({showSuggestions: true});  
}
}
}
}

// hover event on the suggestions list  
handleHoverSearcherSuggestions(event) {
$('.getproducts.searcher-suggs-word.selected').removeClass('selected');
$('.getproducts.searcher-suggs-word:hover').addClass('selected');
}

render() {
let suggestions = null;
// we should also check the input search was the same as the suggertions keywords
if (this.state.showSuggestions && this.checkSuggsKeywords(this.state.searchWords)) {
suggestions = this.state.suggs.map(function(value, index) {
return (<li key={index} className="getproducts searcher-suggs-word" onClick={this.handleClickSuggetionsKeywords.bind(this)} onMouseOver={this.handleHoverSearcherSuggestions.bind(this)}>{value}</li>);
}.bind(this));
}

return (
<div>
	<input type="text" id="search_products" name="search_products" className="form-control search-products-input grid-100" onChange={this.handleSearcherInputChange.bind(this)} onFocus={this.handleFocusSearcherInput.bind(this)} onKeyDown={this.handleSearcherInputKeyDown.bind(this)} value={this.state.searchWords} placeholder="Type products..." required="required"/>  
	<ul className="getproductsul searcher-suggs">
		{suggestions} 
	</ul>
</div>
);
}
}
ReactDOM.render(<AutoCompleteGetProducts />,
document.querySelector('#get_react_autocomplete_products'));
</script>   

<!-- <script>
	$( function() {         
		$( "#get_user_city" ).autocomplete({
			source: "<? //=base_url();?>custom_ajax.php?getCity=Yes",
			minLength: 0,
			focus: function( event, ui ) {
				$("#get_user_city").val( ui.item.city );
				return false;
			},
			select: function( event, ui ) {
				$("#get_user_city").val(ui.item.city); 
				$("#get_selected_user_city").val(ui.item.city);   
				return false;
			}
		})
		.autocomplete( "instance")._renderItem = function( ul, item ) {
			return $( "<li>" )
			.append( "<div>" + item.address + "</div>" )
			.appendTo( ul );
		};    
	});
</script> -->  



<script>  
	/*$( function() {
		$("#search_salon_artist_products").autocomplete({
			source: function( request, response ) {
				var get_selected_user_city=$("#get_selected_user_city").val(); 
				//console.log(get_selected_user_city);
				$.ajax( {
					method: "GET",
					url: "<? //=base_url();?>custom_ajax.php?searchSalonArtistProduct=Yes&get_user_city=" + get_selected_user_city ,
					dataType: "json",
					data: {
						term: request.term
					},
					success: function( data ) {   
						response( data );
					}
				} );
			},
			minLength: 0,
			focus: function( event, ui ) {
				$("#search_salon_artist_products").val(ui.item.search_name);
				return false;
			},
			open: function(){
				$('.ui-autocomplete').css('width', '28%'); 
			},
			select: function( event, ui ) {
				$("#search_salon_artist_products").val(ui.item.search_name);
				$("#search_salon_id").val(ui.item.salon_id);
				$("#search_service_id").val(ui.item.service_id);
				$("#search_product_id").val(ui.item.product_id);
				$("#search_stylist_id").val(ui.item.stylist_id);
				$("#serch_label_type").val(ui.item.serch_label_type);
				$("#search_salon_type").val(ui.item.salon_type);
				$("#search_name").val(ui.item.search_name); 

				$('#g_search').submit();
				return false;
			}
		})
		.autocomplete( "instance")._renderItem = function( ul, item ) {
			return $( "<li>" )
			.append( "<div>" + item.serch_label + "</div>" )
			.appendTo( ul );
		}; 


		var get_stag=$("#search_salon_artist_products").val();
		$("#search_name").val(get_stag);      

	} );
	*/

	function filter_salons_by_services_location_based(url){
		var get_selected_user_city2=$("#get_selected_user_city").val();
		if(get_selected_user_city2!=='' && get_selected_user_city2!=='undefined'){
			get_selected_user_city2=get_selected_user_city2;
		}else{
			get_selected_user_city2='';
		}  
		var new_url=url + '&gp='+ get_selected_user_city2;
//console.log(get_selected_user_city2);
window.open(new_url, '_self');   
}
function filter_stylist_by_services_location_based(url){  
	var get_selected_user_city2=$("#get_selected_user_city").val();
	if(get_selected_user_city2!=='' && get_selected_user_city2!=='undefined'){
		get_selected_user_city2=get_selected_user_city2;
	}else{
		get_selected_user_city2='';
	}  
	var new_url=url + '&gp='+ get_selected_user_city2;
//console.log(get_selected_user_city2);
window.open(new_url, '_self');   
}
function filter_products_by_brands_location_based(url){    
	var get_selected_user_city2=$("#get_selected_user_city").val();
	if(get_selected_user_city2!=='' && get_selected_user_city2!=='undefined'){
		get_selected_user_city2=get_selected_user_city2;
	}else{
		get_selected_user_city2='';
	}  
	var new_url=url + '&gp='+ get_selected_user_city2;
//console.log(get_selected_user_city2);
window.open(new_url, '_self');   
}


</script>

<script>  
	jQuery('#carousel1').owlCarousel({
		loop: true,
		margin: 10,
		nav: true,
		navText: [
		"<i class='fa fa-angle-left'></i>",
		"<i class='fa fa-angle-right'></i>"
		],
		autoplay: true,
		autoplayHoverPause: true,
		responsive: {
			0: {
				items: 3
			},
			600: {
				items: 4
			},

			1024: {
				items: 7
			},

			1366: {
				items: 7
			}
		}
	})
</script>
<script>
	jQuery('#carousel2').owlCarousel({
		loop: true,
		margin: 15,
		nav: true,
		navText: [
		"<i class='fa fa-angle-left'></i>",
		"<i class='fa fa-angle-right'></i>"
		],
		autoplay: true,
		autoplayHoverPause: true,
		responsive: {
			0: {
				items: 2
			},
			600: {
				items: 3
			},

			1024: {
				items: 4
			},

			1366: {
				items: 4
			}
		}
	})
</script>
<script>
	jQuery("#carousel3").owlCarousel({
		autoplay: true,
		lazyLoad: false,
		loop: true,
		margin: 20,
		responsiveClass: true,
		autoHeight: true,
		autoplayTimeout: 7000,
		smartSpeed: 1000,
		nav: false,
		responsive: {
			0: {
				items: 2
			},

			600: {
				items: 3
			},

			1024: {
				items: 6
			},

			1366: {
				items: 6
			}
		}
	});

function productTowishlistIndex(valid){
	
		$("#MainWish").hide();
		$("#LoadingWish").show();
		var productId = valid;
		var actionString = 'AddToWishlist'; 
		$.ajax({
			method: "POST",
			url: "https://localhost/bloom/ajax.php",
			data: {product_id:productId,action:actionString}
		}).done(function(data){
			$("#MainWish").show();
			$("#LoadingWish").hide();
			var ServerResponse = $.trim(data);
			if(ServerResponse === "loginRequired"){
				$("#wish-msg").show();
			    window.setTimeout(function() {
					window.location.href = 'https://localhost/bloom/login.php';
				}, 2000);
			}else{
        //alert(data);
				$("#cart-msg").html(data);
			}
		});
	}


  function packageAddToWishlistIndex(package_id){
	
  $("#MainWish").hide();
  $("#LoadingWish").show();
  var actionString = 'PackageAddToWishlist'; 
  $.ajax({
    method: "POST",
    url: "https://localhost/bloom/ajax.php",
    data: {package_id:package_id,action:actionString}
  }).done(function(data){
    $("#MainWish").show();
    $("#LoadingWish").hide();
    var ServerResponse = $.trim(data);
    if(ServerResponse === "loginRequired"){
      $("#wish-msg").show();
        window.setTimeout(function() {
        window.location.href = 'https://localhost/bloom/login.php';
      }, 2000);
    }else{
      //alert(data);
      $("#pkg-msg").html(data);
    }
  });
}


// Load more data
$('.load-more').click(function(){
        var row = Number($('#row').val());
        var allcount = Number($('#all').val());
        row = row + 3;

        if(row <= allcount){
            $("#row").val(row);

            $.ajax({
                url: 'ajax.php',
                type: 'post',
                data: {row:row,action:'loadMoreSalon'},
                beforeSend:function(){
                    $(".load-more").text("Loading...");
                },
                success: function(response){

                    // Setting little delay while displaying new content
                    setTimeout(function() {
                        // appending posts after last post with class="post"
                        $(".post:last").after(response).show().fadeIn("slow");

                        var rowno = row + 3;

                        // checking row value is greater than allcount or not
                        if(rowno > allcount){

                            // Change the text and background
                            //$('.load-more').text("Hide");
                            $('.load-more').css("background","darkorchid");
                        }else{
                            $(".load-more").text("Load more");
                        }
                    }, 2000);


                }
            });
        }else{
            $('.load-more').text("Loading...");

            // Setting little delay while removing contents
            setTimeout(function() {

                // When row is greater than allcount then remove all class='post' element after 3 element
                $('.post:nth-child(3)').nextAll('.post').remove().fadeIn("slow");

                // Reset the value of row
                $("#row").val(0);

                // Change the text and background
                $('.load-more').text("Load more");
                $('.load-more').css("background","#15a9ce");

            }, 2000);


        }

    });

    

    $('.load-more-visited-salon').click(function(){
      //alert('test');
        var row2 = Number($('#row2').val());
        var allcount = Number($('#all2').val());
        Myrow = row2 + 3;

        if(Myrow <= allcount){
            $("#row2").val(Myrow);

            $.ajax({
                url: 'ajax.php',
                type: 'post',
                data: {Myrow:Myrow,action:'loadMoreVisitedSalon'},
                beforeSend:function(){
                    $(".load-more-visited-salon").text("Loading...");
                },
                success: function(response){

                    // Setting little delay while displaying new content
                    setTimeout(function() {
                        // appending posts after last post with class="post"
                        $(".post2:last").after(response).show().fadeIn("slow");

                        var Myrowno = Myrow + 3;

                        // checking row value is greater than allcount or not
                        if(Myrowno > allcount){

                            // Change the text and background
                            //$('.load-more-visited-salon').text("Hide");
                            $('.load-more-visited-salon').css("background","darkorchid");
                        }else{
                            $(".load-more-visited-salon").text("Load more");
                        }
                    }, 2000);


                }
            });
        }else{
            $('.load-more-visited-salon').text("Loading...");

            // Setting little delay while removing contents
            setTimeout(function() {

                // When row is greater than allcount then remove all class='post' element after 3 element
                $('.post2:nth-child(3)').nextAll('.post2').remove().fadeIn("slow");

                // Reset the value of row
                $("#row2").val(0);

                // Change the text and background
                $('.load-more-visited-salon').text("Load more");
                $('.load-more-visited-salon').css("background","#15a9ce");

            }, 2000);


        }

    });

</script>




</body>
</html>