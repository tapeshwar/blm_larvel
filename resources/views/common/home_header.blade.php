
<!DOCTYPE html>
<html lang="en">
<head>
<title>BLOOM | Book your services online</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/zebra_datepicker@latest/dist/css/default/zebra_datepicker.min.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/animatecss/3.5.2/animate.min.css">
<link rel="stylesheet" href="{{ asset('assets/css/multi_select.css') }}" type="text/css"/>
<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">

<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style2.css') }}">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css">

<script>
	var base_url={{url('/')}};
</script>  
 
  
	<style type="text/css"> 
		li.searcher-suggs-word .fa {
			padding-right: 12px;
			} .cityError {border: 1px solid red; }
			ul.getslonsbyservicesul.searcher-suggs, ul.getslonsul.searcher-suggs, ul.getstylistsul.searcher-suggs, ul.getproductsul.searcher-suggs {
				width: 78%;
			} 
      /* #get_react_autocomplete_city_services ul.searcher-suggs{width: 88% !important;}  */
		</style>

</head>
<body class="fade-in">



<header id="header" class="navbar-wrapper-luxery sticky">
   <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark mt-2">
         <a class="navbar-brand d-lg-none" href=""><img src="{{ asset('images/logo.png') }}" alt="" class="mb-logo"></a>
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggle" aria-controls="navbarToggle" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse justify-content-between" id="navbarToggle">
            <a class="navbar-brand ds-none d-lg-block logohomecolor" href=""><img src="{{ asset('images/logo.png') }}" alt=""></a>
            <ul class="navbar-nav">
               <!-- <li class="nav-item">
               <a class="nav-link" href="#">Service</a>
               </li>
               <li class="nav-item">
               <a class="nav-link" href="#">Salon</a>
               </li>
               <li class="nav-item">
               <a class="nav-link" href="#">Stylist</a>
               </li>
               <li class="nav-item">
               <a class="nav-link" href="insta-gallery.php">Insta Gallery</a>
               </li>-->
            </ul>



            <div class="right-side-menu text-right d-flex align-items-center">

                  <ul class="navbar-nav signup">
                     <li class="nav-item">
                        <a class="nav-link" href="login.php">Sign in</a>
                     </li>
                     <li class="nav-item">
                        <a class="nav-link" href="signup.php">Sign up</a>
                     </li>
                  </ul>
              <!-- <ul class="navbar-nav signup">
               <li class="nav-item">
               <a class="nav-link" href="#">
                  <img src="image/cart.png" alt="cart">
                  <span class="badge badge-notify">3</span>
               </a>
               </li>
            </ul> -->
               <ul class="navbar-nav signup">
                  <li class="nav-item add-to-cart">
                     <div class="dropdown">
                        <a href="" title="" class="nav-link dropdown-toggle drop-login login-vew-cart" type="button" id="add-tocart-menu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <img src="{{ asset('images/cart.png') }}" alt="cart" class="cart-icon"><span class="badge badge-notify">1</span>
                        </a></span>
                        </a>

                        <ul class="dropdown-menu add-toc-art-menu" aria-labelledby="add-tocart-menu" style="    box-shadow: 0px 0px 15px 2px #6c757d; border: solid thin #CCC;">
                           

                           
                              <li class="item">
                              <p class="add-cart-title">RECENTLY ADDED ITEMS (1)</p>
                           </li>

                           

                                    <li class="item cart-parts-menu">
                                       <div class="main-box-add-tocart">
                                          <div class="d-flex ">
                                             <div class="cart-me-nu">
                                                <a href="#" title="" class="product-image">
                                                   <img src="https://localhost/bloom/upload/1606995056GKhair_AntiDandruff_pump-1.png" width="50" height="50" alt="ANTI-DANDRUFF SHAMPOO â€“ 250 ML">
                                                </a>
                                             </div>
                                             <div class="cart-product-details">
                                                <div class="font-menu-cart">
                                                   <p class="product-name">
                                                      <a href="#" title="">ANTI-DANDRUFF SHAMPOO â€“ 250 ML250 ml</a>
                                                   </p>
                                                   <strong>1</strong> x <span class="price">₹1700</span>
                                                </div>
                                             </div>
                                             <!-- <div class="cart-remove-btn-part">
                                                <a href="#" title="Remove This Item" class="btn-remove"><i class="fa fa-times"></i></a>
                                                <a href="#" title="Edit item" class="btn-edit"><i class="fa fa-pencil"></i></a>
                                                </div> -->
                                          </div>

                                       </div>
                                    </li>
                                 
                                                      
                           <li class="item">
                              <div class="summary">
                                 Total: <span class="price">₹1000</span>
                              </div>
                           </li>
                           
                              <li class="item" style="text-align: center; margin-bottom:5px">
                                 <div>
                                    <a href="{{asset('images/product-cart.png')}}" title="Proceed to checkout" class="btn-top-cart btn-view-cart" style="padding: 5px 10px;">View Cart</a>
                                    <!-- <a href="https://localhost/bloom/product-cart.php" title="Proceed to checkout" class="btn-top-cart btn-top-cart-checkout ">Checkout</a> -->
                                 </div>
                              </li>
                           

                          </ul>


                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </nav>
   </div>
</header>






<section class="home-slider">
  <div class="slider sliderinner-page">
   <div class="slide">
    <div class="img_slider comman-animation"> 
     <img src="{{ asset('images/banner.jpg') }}" alt="">
     <div class="info">
      <h1>Book Your Services Online</h1>
      <p>dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br>standard dummy text ever since the 1500s, </p>
     </div>
    </div>
   </div>
   <div class="slide">
    <div class="img_slider comman-animation"> 
     <img src="{{ asset('images/banner.jpg') }}" alt="">
     <div class="info">
      <h1>Book Your Services Online</h1>
      <p>Usu an adio aratio electram, delectus everti cu</p>
     </div>
    </div>
   </div>
   <div class="slide">
    <div class="img_slider comman-animation"> 
     <img src="{{ asset('images/banner.jpg') }}" alt="">
     <div class="info">
      <h1>Book Your Services Online</h1>
      <p>Usu an adio aratio electram, delectus everti cu</p>
     </div>
    </div>
   </div>
  </div>


  <div class="container">
 <div class="searchtab">
  <ul class="nav nav-tabs" id="myTab" role="tablist">
   <li class="nav-item" role="presentation">
    <a class="nav-link active" id="service-tab" data-toggle="tab" href="#service" role="tab" aria-controls="service" aria-selected="true"><img src="{{asset('images/icon-1.png') }}"> Service</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="salon-tab" data-toggle="tab" href="#salon" role="tab" aria-controls="salon" aria-selected="false"><img src="{{ asset('images/icon-2.png')}}"> Salon</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="stylist-tab" data-toggle="tab" href="#stylist" role="tab" aria-controls="stylist" aria-selected="false"><img src="{{ asset('images/icon-3.png')}}"> Stylist</a>
  </li>
  <li class="nav-item" role="presentation">
    <a class="nav-link" id="Product-tab" data-toggle="tab" href="#Product" role="tab" aria-controls="Product" aria-selected="false"><img src="{{ asset('images/icon-4.png')}}" class="w-26"> Products</a>
  </li>
</ul>
<div class="tab-content" id="myTabContent">
 <div class="tab-pane show active" id="service" role="tabpanel" aria-labelledby="service-tab">
  <div class="searchbox">
   <div class="row">
    <div class="col-md-12">
     <div class="box d-flex flex-sm-row flex-column">
      <div class="input-group mb-3">
       <div class="input-group-prepend">
        <span class="input-group-text bround"><img src="{{ asset('images/gps.png') }}"></span>
      </div>
      <input type="text" class="form-control br-0" placeholder="South West Delhi">
    </div>
    <div class="input-group mb-3">
     <input type="text" class="form-control" placeholder="Type services like hair cut, hair color, facial...">
     <div class="input-group-append bgbtn">
      <span class="input-group-text"><img src="{{ asset('images/search.png') }}" class="fil"></span>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
<div class="tab-pane" id="salon" role="tabpanel" aria-labelledby="salon-tab">
  <div class="searchbox">
   <div class="row">
    <div class="col-md-12">
     <div class="box d-flex flex-sm-row flex-column">
      <div class="input-group mb-3">
       <div class="input-group-prepend">
        <span class="input-group-text bround"><img src="{{ asset('images/gps.png') }}"></span>
      </div>
      <input type="text" class="form-control br-0" placeholder="South West Delhi">
    </div>
    <div class="input-group mb-3">
     <input type="text" class="form-control" placeholder="Type Salon Name...">
     <div class="input-group-append bgbtn">
      <span class="input-group-text"><img src="{{ asset('images/search.png') }}" class="fil"></span>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
<div class="tab-pane" id="stylist" role="tabpanel" aria-labelledby="stylist-tab">
  <div class="searchbox">
   <div class="row">
    <div class="col-md-12">
     <div class="box d-flex flex-sm-row flex-column">
      <div class="input-group mb-3">
       <div class="input-group-prepend">
        <span class="input-group-text bround"><img src="{{ asset('images/gps.png') }}"></span>
      </div>
      <input type="text" class="form-control br-0" placeholder="South West Delhi">
    </div>
    <div class="input-group mb-3">
     <input type="text" class="form-control" placeholder="Type expert or stylist name...">
     <div class="input-group-append bgbtn">
      <span class="input-group-text"><img src="{{ asset('images/search.png') }}" class="fil"></span>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
<div class="tab-pane" id="Product" role="tabpanel" aria-labelledby="Product-tab">
  <div class="searchbox">
   <div class="row">
    <div class="col-md-12">
     <div class="box d-flex flex-sm-row flex-column">
      <div class="input-group mb-3">
       <div class="input-group-prepend">
        <span class="input-group-text bround"><img src="{{ asset('images/gps.png') }}"></span>
      </div>
      <input type="text" class="form-control br-0" placeholder="South West Delhi">
    </div>
    <div class="input-group mb-3">
     <input type="text" class="form-control" placeholder="Type Product...">
     <div class="input-group-append bgbtn">
      <span class="input-group-text"><img src="{{ asset('images/search.png') }}" class="fil"></span>
    </div>
  </div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>