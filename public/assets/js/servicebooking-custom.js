//================ Get Current latitide and longitude ========================//
var x = document.getElementById("demo");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}
    
function showPosition(position) {
    var latitude = position.coords.latitude;
    var longitude= position.coords.longitude;
    $("#latitude").val(latitude);
    $("#longitude").val(longitude);
}

//========== Zebra datepicker for opening and closing time ===================//
$( document ).ready(function() {  
    $('#opening-timing').Zebra_DatePicker({
        format: 'H:i a'
    });
    $('#closing-timing').Zebra_DatePicker({
        format: 'H:i a'
    });
});

//======= Function to check Phone Number is duplicate Salon ==================//
function checkphoneDuplicacy(phone,temp){
    var type='salon';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duPhone:phone,type:type,temp:temp}
    }).done(function(data) {
        $("#phoneError").html(data);
    });
}

//========= Function to check Mobile Number Duplicay Salon ===================//
function checkmobileDuplicacy(mobile,temp){
    var type='salon';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duMobile:mobile,type:type,temp:temp}
    }).done(function(data) {
        $("#mobileError").html(data);
    });
}

//========= Function to check Email Address Duplicay Salon ===================//
function checkemailDuplicacy(email,temp){
    var type='salon';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duemail:email,type:type,temp:temp}
    }).done(function(data) {
        $("#emailError").html(data);
    });
} 

//======== Function to check the username duplicacy ==========================//
function checkusernameDuplicacy(username,temp){
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duUsername:username,temp:temp}
    }).done(function(data) {
        $("#errorUsername").html(data);
    });
}


//================================== Stylist Js Section start here ======================================//

//================ Mobile duplicacy Check Stylist ===============//
function checkmobileDuplicacyStylist(mobile,temp){
    var type='stylist';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duMobile:mobile,type:type,temp:temp}
    }).done(function(data) {
        $("#errorMobile").html(data);
    });
}
 
//================ Email-ID Duplicay Check Stylist ===============//     
function checkemailDuplicacyStylist(email,temp){
    var type='stylist';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {duemail:email,type:type,temp:temp}
    }).done(function(data) {
        $("#errorEmail").html(data);
    });
}


//============= Creating Stylist validation =====================//

$(document).on('change','.stylist_employment_type',function () { 
    
    if($(this).val()=='self_employee'){
        $('#dynamic_salon_div').hide();
        $('#stylist-salon').attr('disabled','disabled');
        $('#stylist-salon').prop('selectedIndex',0);
    }else{
        $('#dynamic_salon_div').show();
        $('#stylist-salon').removeAttr('disabled');
    }
});

 

//=============================== Cart Page Js Start Here=====================//

//============= Remove product from cart ========================//
function RemoveCartProduct(productId){
    var actionString ='RemoveCart';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {product_id:productId,action:actionString}
	}).done(function(data) {
        $("#cart-msg").html(data);
        window.setTimeout(function() {
            window.location.reload();
    	}, 1000);
	});
}

function RemoveCartPackage(packageId){
    var actionString ='RemoveCartPackage';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,action:actionString}
	}).done(function(data) {
        $("#cart-msg").html(data);
        window.setTimeout(function() {
            window.location.reload();
    	}, 1000);
	});
}





function RemoveCartPackageSession(packageId,assocId,visit_id){
    var actionString ='RemoveCartSessionPackage';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,association_id:assocId,visit_id:visit_id,action:actionString}
	}).done(function(data) {
        $("#cart-msg").html(data);
        window.setTimeout(function() {
		    window.location.reload();
		}, 1000);
    });
}


//============= Remove cart session from cart ==================//
function RemoveCartProductSession(productId,assocId){
    var actionString ='RemoveCartSession';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {product_id:productId,association_id:assocId,action:actionString}
	}).done(function(data) {
        $("#cart-msg").html(data);
        window.setTimeout(function() {
		    window.location.reload();
		}, 1000);
    });
}
//==================Update cart product =======================//
function UpdateCartValue(prodQty,productId,assocId){
    var actionString ='UpdateCart';
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {product_id:productId,Qty:prodQty,association_id:assocId,action:actionString}
	}).done(function(data) {
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}


function UpdateCartValueNewMinus(productId,assocId){
    
    var prodQty = $('.decrease_val').attr('data-val');
    if(prodQty<=0 || prodQty>1){
        prodQty = 1;
    }
    var actionString ='UpdateCartNewMinus';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {product_id:productId,Qty:prodQty,association_id:assocId,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}

function UpdateCartValueNew(productId,assocId){
    
    var prodQty = 1
    var actionString ='UpdateCartNew';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {product_id:productId,Qty:prodQty,association_id:assocId,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}



function UpdatePackageMinus(packageId,assocId){
    
    var prodQty = $('.decrease_val').attr('data-val');
    if(prodQty<=0 || prodQty>1){
        prodQty = 1;
    }
    var actionString ='UpdatePackageMinus';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,Qty:prodQty,association_id:assocId,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}

function UpdatePackagePlus(packageId,assocId){
    
    var prodQty = 1
    var actionString ='UpdatePackagePlus';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,Qty:prodQty,association_id:assocId,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}


function UpdatePackageMinusSession(packageId,assocId,visit_id){
    
    var prodQty = $('.decrease_val').attr('data-val');
    if(prodQty<=0 || prodQty>1){
        prodQty = 1;
    }
    var actionString ='UpdatePackageMinusSession';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,Qty:prodQty,association_id:assocId,visit_id:visit_id,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}


function UpdatePackagePlusSession(packageId,assocId,visit_id){
    
    var prodQty = 1
    var actionString ='UpdatePackagePlusSession';
    //alert(prodQty);
    $.ajax({
        method: "POST",
        url: "ajax.php",
        data: {packageId:packageId,Qty:prodQty,association_id:assocId,visit_id:visit_id,action:actionString}
	}).done(function(data) {
        //alert(data);
	    $("#cart_page_content").load(" #cart_page_content");
        $("#cart-msg").html(data);
	});
}


//================= Styling Js ==============================//
var check = false;
$(document).ready(function(){
    $(".qt-plus").click(function(){
    $(this).parent().children(".qt").html(parseInt($(this).parent().children(".qt").html()) + 1);
    $(this).parent().children(".full-price").addClass("added");
    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("added"); changeVal(el);}, 150);});
    $(".qt-minus").click(function(){
    child = $(this).parent().children(".qt");
    if(parseInt(child.html()) > 1) {
        child.html(parseInt(child.html()) - 1);
    }

    $(this).parent().children(".full-price").addClass("minused");
    var el = $(this);
    window.setTimeout(function(){el.parent().children(".full-price").removeClass("minused"); changeVal(el);}, 150); });
    window.setTimeout(function(){$(".is-open").removeClass("is-open")}, 1200);
});
//===================== End of the cart js section ===========================//


//===================== Checkout page js start ===============================//


//============ Js to add new address of the customer ===========//
function SaveNewAddress(){
    $(".error").text("");
	$('#name-error').removeClass("error");
	$('#address-error').removeClass("error");
	$('#country-error').removeClass("error");
	$('#state-error').removeClass("error");
	$('#city-error').removeClass("error");
	$('#pincode-error').removeClass("error");
	$('#landmark-error').removeClass("error");

	var custName = $('#cust_fulname').val();
	var custAddress = $('#cust_address').val();
	var country = $('#cust_country').val();
	var state = $('#cust_state').val();
	var city = $('#cust_city').val();
	var pincode = $('#cust_pincode').val();
	var landmark = $('#cust_landmark').val();
    var addType = $('.add_type').val();
    var addDefault = $('#address-default').val();
    var actionString = 'NewAddresss';

	if (custName == "") {
		$('#name-error').addClass("error");
		$(".error").text("Name can not be blank");
	} else if (custAddress == "") {
		$('#address-error').addClass("error");
		$(".error").text("Provide your complete address");
	}else if (country == "") {
		$('#country-error').addClass("error");
		$(".error").text("Select Country");
	}  else if (state == "") {
		$('#state-error').addClass("error");
		$(".error").text("Select State");
	}else if (city == "") {
		$('#city-error').addClass("error");
		$(".error").text("Select City");
	} else if (pincode == "") {
		$('#pincode-error').addClass("error");
		$(".error").text("Your area pincode");
	}else if (landmark == "") {
		$('#landmark-error').addClass("error");
		$(".error").text("Landmark here");
	} else {
		$('#loaderId').show();
		$.ajax({
			url : 'ajax.php',
			type : 'POST',
			data : {
				txt_name : custName,
				txt_address : custAddress,
				sel_country : country,
				sel_state : state,
				sel_city : city,
				txt_pincode : pincode,
				txt_landmark : landmark,
                address_type : addType,
                selDeault : addDefault,
				AddressCreate : actionString
        },
			success : function(response) {
			    $('#newAddress').modal('hide');
			    $("#address-success-msg").html(response);
			    window.setTimeout(function() {
            location.reload();
          }, 2000);
			}
		});
		this.close();
	}   
}

//======== Apply coupon code on checkout =======================//
function ApplyCoupon(){
    var CouponNumber = document.getElementById("couponValue").value;
    if(CouponNumber==''){
        document.getElementById("coupon-error").innerHTML = "Please provide valid coupon code";
        setTimeout(function() {
            $("#coupon-error").hide('blind', {}, 500)
        },  5000);
    }else{
        $.ajax({
          method: "POST",
          url: "ajax.php",
          data: {couponCode:CouponNumber}
    	}).done(function(data) {
    	    $("#checkout_page_content").load(" #checkout_page_content");
            $("#coupon-msg").html(data);
    	});
    }
}

function ApplyCouponCode(){
    var CouponNumber = document.getElementById("couponValuePick").value;
    if(CouponNumber==''){
        document.getElementById("coupon-error").innerHTML = "Please provide valid coupon code";
        setTimeout(function() {
            $("#coupon-error-pickup").hide('blind', {}, 500)
        },  5000);
    }else{
        $.ajax({
          method: "POST",
          url: "ajax.php",
          data: {couponCode:CouponNumber}
    	}).done(function(data) {
    	    $("#checkout_page_content").load(" #checkout_page_content");
            $("#coupon-msg-pickup").html(data);
    	});
    }
}

//========== Saving Delivery orders ============================//
function PlaceDeliveryOrder(utype){
    
    $(".error").text("");
	$('#address-error').removeClass("error");
	$('#payment-error').removeClass("error");

    $('#guest-address-error').removeClass("error");
    $('#guest-country-error').removeClass("error");
    $('#guest-state-error').removeClass("error");
    $('#guest-city-error').removeClass("error");
    $('#guest-pincode-error').removeClass("error");
    $('#pincode-error').removeClass("error");
    $('#guest-landmark-error').removeClass("error");

    $('#guest-username-error').removeClass("error");
    $('#guest-password-error').removeClass("error");

    
    var actionString = "PlaceOrder";


    if(utype=='guest'){
       
        var custom_name = document.getElementById('custd_name').value;
        var custom_mobile = document.getElementById('custd_mobile').value;
        var custom_email = document.getElementById('custd_email').value; 

        var orderType = $('.order-type').val();  
        var payType = $('input[name="sel_payment"]:checked').val();
        var cartTotal = document.getElementById('cart-total').textContent;
        var subTotal = document.getElementById('sub-total').textContent;
        var deliveryCharge = document.getElementById('delivery-charges').textContent;
        var appCoupon = document.getElementById('applied-coupon').textContent;
        var discountAmount = document.getElementById('discounted-amount').textContent;
        var couponDiscount = document.getElementById('coupon-discount').textContent;
        var grandTotal = document.getElementById('grand-total').textContent;

        var taxesCharges = document.getElementById('taxes-charges').textContent;

        var guest_username = $('#guest_username').val();
        var guest_password = $('#guest_password').val();

        var guest_address = $('#guest_address').val(); 
        var cust_country = $('#cust_country').val();
        var cust_state = $('#cust_state').val();
        var cust_city = $('#cust_city').val();
        var guest_pincode = $('#guest_pincode').val();
        var guest_landmark = $('#guest_landmark').val();


        if (custom_name == "") {
            $('#customname-error').addClass("error");
            $("#customname-error").text("Please provide your full name");
            return false;
        }if (custom_mobile == "") {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if (custom_mobile.length < 10) {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if (custom_mobile.length > 10) {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if ( !validateEmailId(custom_email)) {
            $('#customemail-error').addClass("error");
            $("#customemail-error").text("Please provide a valid email address");
            return false;
        }

        if (guest_username == "" && utype == 'guest') {
            $('#guest-username-error').addClass("error");
            $("#guest-username-error").text("Enter username");
            return false;
        }
        if (guest_password == "" && utype == 'guest') {
            $('#guest-password-error').addClass("error");
            $("#guest-password-error").text("Enter password");
            return false;
        }

        if (guest_address == "") {
            alert("Provide your complete address");
            $('#guest-address-error').addClass("error");
            $("#guest-address-error").text("Provide your complete address");
            return false;
        }
        if (cust_country == "") {
            $('#guest-country-error').addClass("error");
            $("#guest-country-error").text("Select Country");
            return false;
        }
        if (cust_state == "") {
            $('#guest-state-error').addClass("error");
            $("#guest-state-error").text("Select State");
            return false;
        }
        if (cust_city == "") {
            $('#guest-city-error').addClass("error");
            $("#guest-city-error").text("Select City");
            return false;
        }
        if (guest_pincode == "") {
            $('#guest-pincode-error').addClass("error");
            $("#guest-pincode-error").text("Your area pincode");
            return false;
        }
        if (guest_landmark == "") {
            $('#guest-landmark-error').addClass("error");
            $("#guest-landmark-error").text("Enter a landmark");
            return false;
        }

        if (payType == "") {
            $('#payment-error').addClass("error");
            $("#payment-error").text("Please choose a payment type to proceed");
            return false;
        }
        

        

        var data = { "address_id":custAddress,"ordType":orderType,"paymentType" : payType,"cartTotal" : cartTotal,"subTotal" : subTotal,"deliveryCharge" : deliveryCharge,"appCoupon" : appCoupon,"discountAmount" : discountAmount,"couponDiscount" : couponDiscount,"grandTotal" : grandTotal,"customName" : custom_name,"customMobile" : custom_mobile,"customeEmail" : custom_email,"guest_username" : guest_username,"guest_password" : guest_password,"guest_password" : guest_password,"guest_username":guest_username,"guest_password":guest_password,"guest_address":guest_address,"cust_country":cust_country,"cust_state":cust_state,"cust_city":cust_city,"guest_pincode":guest_pincode,"guest_landmark":guest_landmark,"utype":"guest","taxesCharges":taxesCharges,"action" : actionString }

    }
    if(utype=='user'){

        var custom_name = document.getElementById('custd_name').value;
        var custom_mobile = document.getElementById('custd_mobile').value;
        var custom_email = document.getElementById('custd_email').value; 

        var custAddress = $('input[name="sel_address"]:checked').val(); 
        var orderType = $('.order-type').val();  
        var payType = $('input[name="sel_payment"]:checked').val();
        var cartTotal = document.getElementById('cart-total').textContent;
        var subTotal = document.getElementById('sub-total').textContent;
        var deliveryCharge = document.getElementById('delivery-charges').textContent;
        var appCoupon = document.getElementById('applied-coupon').textContent;
        var discountAmount = document.getElementById('discounted-amount').textContent;
        var couponDiscount = document.getElementById('coupon-discount').textContent;
        var grandTotal = document.getElementById('grand-total').textContent;

        var taxesCharges = document.getElementById('taxes-charges').textContent;

        if (custom_name == "") {
            $('#customname-error').addClass("error");
            $("#customname-error").text("Please provide your full name");
            return false;
        }if (custom_mobile == "") {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if (custom_mobile.length < 10) {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if (custom_mobile.length > 10) {
            $('#custommobile-error').addClass("error");
            $("#custommobile-error").text("Please provide your valid mobile number");
            return false;
        }if ( !validateEmailId(custom_email)) {
            $('#customemail-error').addClass("error");
            $("#customemail-error").text("Please provide a valid email address");
            return false;
        }if(custAddress===undefined) {
            $('#address-error').addClass("error");
            $("#address-error").text("Please choose atleast one address from the address book or Add your address");
            return false;
        }if (custAddress == ""){
            $('#address-error').addClass("error");
            $("#address-error").text("Please choose atleast one address from the address book or Add your address");
            return false;
        }if (payType == "") {
            $('#payment-error').addClass("error");
            $("#payment-error").text("Please choose a payment type to proceed");
            return false;
        }

        var data = { "address_id":custAddress,"ordType":orderType,"paymentType" : payType,"cartTotal" : cartTotal,"subTotal" : subTotal,"deliveryCharge" : deliveryCharge,"appCoupon" : appCoupon,"discountAmount" : discountAmount,"couponDiscount" : couponDiscount,"grandTotal" : grandTotal,"customName" : custom_name,"customMobile" : custom_mobile,"customeEmail" : custom_email,"guest_username" : guest_username,"guest_password" : guest_password,"guest_password" : guest_password,"utype":"user","taxesCharges":taxesCharges,"action" : actionString }  
    }

    /* {
        address_id : custAddress,
        ordType : orderType,
        paymentType : payType,
        cartTotal : cartTotal,
        subTotal : subTotal,
        deliveryCharge : deliveryCharge,
        appCoupon : appCoupon,
        discountAmount : discountAmount,
        couponDiscount : couponDiscount,
        grandTotal : grandTotal,
        customName : custom_name,
        customMobile : custom_mobile,
        customeEmail : custom_email,
        guest_username : guest_username,
        guest_password : guest_password,
        action : actionString
    } */
    
        $('.btn-processing').show();
        $('.btn-order').hide();
		$.ajax({
			url : 'ajax.php',
			type : 'POST',
			data : data,
			success : function(response) {
                $('.btn-processing').hide();
                //console.log(response);
                //alert(response);

                $('.btn-order').show();
                if (response.trim() == 'success') {
					$("#order-success").show();
					window.setTimeout(function() {
						window.location.href = './order-success.php';
					}, 2000);
				}else if (response.trim() == 'payment'){
                $("#order-success").show();
					window.setTimeout(function() {
						window.location.href = './payment.php';
					}, 2000);
                }else{
					$("#order-Error").html(response);
				}
			}
		});
		this.close();
    
}

//========== Saving Pickup Orders ==============================//
function PlacePickupOrder(){
    $(".error").text("");
	$('#billingName-error').removeClass("error");
	$('#billingEmail-error').removeClass("error");
    $('#billingMobile-error').removeClass("error");
    $('#pickupDate-error').removeClass("error");
    $('#payment-error-pickup').removeClass("error");

    var custName = $('#billing-name').val();  
    var custEmail = $('#billing-email').val();  
    var custMobile = $('#billing-mobile').val();  
    var pickupDate = $('#pickup-date').val();  
	var orderType = $('#order-type-pickup').val();  
	var payType = $('input[name="sel_payment_mode"]:checked').val();
    var cartTotal = document.getElementById('cart-amount-pickup').textContent;
    var subTotal = document.getElementById('sub-total-pickup').textContent;
    var appCoupon = document.getElementById('applied-coupon-pickup').textContent;
    var couponDiscount = document.getElementById('coupon-discount-pickup').textContent;
    var discountAmount = document.getElementById('discounted-amount-pickup').textContent;
    var grandTotal = document.getElementById('grand-total-pickup').textContent;
    var actionString = "PlaceOrderPickup";

    if(custName == "" || custName==="Guest") {
		$('#billingName-error').addClass("error");
		$(".error").text("Please provide your Full Name");
	}else if (custEmail == "" || custEmail==0) {
		$('#billingEmail-error').addClass("error");
		$(".error").text("A valid Email Address will be here");
	}else if (!validateEmailId(custEmail)) {
		$('#cd-error-email').addClass("error");
		$(".error").text("Provide a valid Email-ID");
	}else if (custMobile == "" || custMobile==0) {
		$('#billingMobile-error').addClass("error");
		$(".error").text("A valid Mobile number will be here");
	}else if (isNaN(custMobile) || (custMobile.indexOf(" ") != -1) || custMobile.length > 10) {
		$('#billingMobile-error').addClass("error");
		$(".error").text("Not a valid Mobile Number");
	}else if (pickupDate == "") {
		$('#pickupDate-error').addClass("error");
		$(".error").text("Choose a pickup date");
	} else{
        $('#loaderId').show();
		$.ajax({
			url : 'ajax.php',
			type : 'POST',
			data : {
				custName : custName,
				custEmail : custEmail,
				custMobile : custMobile,
                pickupDate : pickupDate,
                orderType : orderType,
                payType : payType,
				cartTotal : cartTotal,
				subTotal : subTotal,
				appCoupon : appCoupon,
				couponDiscount : couponDiscount,
				discountAmount : discountAmount,
                grandTotal : grandTotal,
				action : actionString
            },
			success : function(response) {
                $('.btn-processing').hide();
                $('.btn-order').show();
                if (response.trim() == 'success') {
					$("#order-success").show();
					window.setTimeout(function() {
						window.location.href = './order-success.php';
					}, 2000);
				}else if (response.trim() == 'payment'){
                    $("#order-success").show();
					window.setTimeout(function() {
						window.location.href = './payment.php';
					}, 2000);
                }else{
					$("#order-Error").html(response);
				}
			}
		});
		this.close();
    }

}


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
















