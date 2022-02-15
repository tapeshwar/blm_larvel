
@include('common.home_header')
<?php if($countMainCategory>0){ ?>
<section class="service-slider mt-5 pt-5">
  <div class="container">
   <div class="row">
    <div class="col-sm-12">

     <div class="service">

      <?php
        foreach($mainCategory as $k=>$v){
      ?>
        
      <a href="{{ url('service_detail/?ssvi='.$v->category_id) }}">
        <div class="slide">
          <div class="img_slider"> 
            <?php if(file_exists("uploads/".$v->category_icon)){?>   
            <img src="{{ asset('uploads') }}/<?=$v->category_icon?>"alt="Hair"> 
            <?php
            }else{ ?>
              <img src="{{ asset('uploads/noicon.png') }}" alt="<?=$v->category_name?>" > 
           <?php 
              }     
            ?>
            <p><?=substr($v->category_name,0,12)?><?php if(strlen($v->category_name) > 12){echo "..";}?></p>
          </div>
        </div>
      </a>
      <?php } ?>
     

     
      </div>
    </div>
   </div>
  </div>
 </section>
  <?php } ?>

 <section class="how-book p-5 m-5">
  <div class="container">
   <div class="row">
    <div class="col-md-3">
     <div class="box1 mt-4">
      <h2>how book my services works</h2>
      <p>Follow these steps to book services with us</p>
      <span class="br-line"></span>
     </div>
    </div>
    <div class="col-md-3">
     <div class="box-c">
      <img src="{{ asset('images/booking_type.png') }}" alt="">
      <p>Choose Type</p>
      <h3>Booking Type</h3>
      <p>Choose service Location Home Bookings/ Salon Visit</p>
     </div>
    </div>
    <div class="col-md-3">
     <div class="box-img">
      <div class="imgbox comman-animation">
       <img src="{{ asset('images/service_work.jpg') }}" alt="">
      </div>
      <div class="content">
       <p>Choose Services</p>
       <h3>Select Services</h3>
       <p>Choose Service Location Home Bookings/ Salon Visit</p>
      </div>
     </div>
    </div>
    <div class="col-md-3">
     <div class="box-c">
      <img src="{{ asset('images/date_time.png') }}" alt="">
      <p>Choose datetime</p>
      <h3>Date & Time</h3>
      <p>Select your preffered <br>date and time</p>
     </div>
    </div>
   </div>
  </div>
 </section>


 <section class="salon-at-your">
  <div class="container">
   <div class="row">
    <div class="col-sm-12">
     <div class="slider sliderinner-page">
      <div class="slide">
       <div class="img_slider comman-animation"> 
        <img src="{{ asset('images/banner2.jpg') }}" alt="">
        <div class="info">
         <h1>Salon At your doorstep</h1>
         <span class="br-line"></span>
         <p>dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br>standard dummy text ever since the 1500s, </p>
        </div>
       </div>
      </div>
      <div class="slide">
       <div class="img_slider comman-animation"> 
        <img src="{{ asset('images/banner2.jpg') }}" alt="">
        <div class="info">
         <h1>Salon At your doorstep</h1>
         <span class="br-line"></span>
         <p>dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br>standard dummy text ever since the 1500s, </p>
        </div>
       </div>
      </div>
      <div class="slide">
       <div class="img_slider comman-animation"> 
        <img src="{{ asset('images/banner2.jpg') }}" alt="">
        <div class="info">
         <h1>Salon At your doorstep</h1>
         <span class="br-line"></span>
         <p>dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's <br>standard dummy text ever since the 1500s, </p>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>


 <?php if($countRecomSalons>0) { ?>
 <section class="recommended-salon">
  <div class="container">
   <div class="comman-heading">
    <h3>Recommended salon</h3>
    <span class="line"></span>
   </div>
   <div class="recommended sliderinner-page">

    <?php 
      foreach($recomSalons as $rk=>$rv){
      ?>  
    <div class="slide">
     <div class="img_slider comman-animation comman-animation-new"> 
      
      <a href="{{ url('salon/'.trim($rv->permalink)) }}" class="hovr-icons hovr-icons-new"><img src="{{ asset('images/booking.png') }}" alt="" class="img-fluid img-fluid-hov"></a>

      <a href="{{ url('salon/'.trim($rv->permalink)) }}">
        <img src="{{ asset('uploads') }}/<?=trim($rv->display_picture);?>" alt="<?=$rv->salon_name?>" class="img-responsive editor-image img-s">
      </a>
      <div class="content-overlay-new"></div>
      <div class="info info-new">

        <div class="infomain d-flex justify-content-between align-items-center">
          <p class="mb-0 text-uppercase locations"><strong><?php echo substr($rv->city_name,0,16); if(strlen($rv->city_name) > 16){echo "..";}?></strong>
          </p>
          <p class="mb-0 d-flex justify-content-center align-items-center">
          <strong>
              <span><img src="{{ asset('images/location.png') }}" class="img-fluid"></span> 
              <span>
              <?php 
              $latlong = get_sourch_lat_long();
					    $latfrom = $latlong['latfrom'];
              $lonfrom = $latlong['lonfrom'];
              
					    $km = twopoints_on_earth($latfrom,$lonfrom,$rv->latitude,$rv->longitude); echo substr($km,0,2); ?> km</span>
          </strong>
			    </p>
        </div>

        <p class="mb-2 mt-2 text-uppercase new-names">
          <a href="{{ url('salon/'.trim($rv->permalink)) }}"> <strong><?php echo substr($rv->salon_name,0,16); if(strlen($rv->salon_name) > 16){echo "..";}?></strong></a>
        </p>

        <div class="d-flex justify-content-between font-weight-bold pt-1">
          
   
          <p class="text-uppercase fonnt-no">
            <span class="d-inline-block mr-1">Starting</span> 
                        <strong>₹ <?=(!empty(getStartingPrice($rv->salon_id))) ? getStartingPrice($rv->salon_id) : '0.00' ?></strong>
          </p>

          <div class="review_ratings">       
            <?php get_average_review($rv->avg_review_ratings) ?>      
          </div>
       </div>

      </div>
     </div>
    </div>

    <?php } ?>
      

   </div>
  </div>
 </section>
 <?php } ?>


<?php

if($countRecomPackage>0){
    $package_type_arr = [];
    $i = 1;
    ?>
 <section class="offer-section">
  <div class="container">
  <div class="comman-heading pb-5" style="padding:0">
    <h3>Recommended Packages</h3>
    <span class="line"></span>
   </div>
   <div class="row">
    <div class="col-md-12">
     <div class="row">
      <div class="col-sm-12">
      <div id="pkg-msg"></div>
       <div class="tabs-info ">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
          <?php
           
              foreach($recomPackage as $pak=>$pav){
                $package_type_arr[] = $pav->package_type_id;
                
                ?>
            <li class="nav-item" role="presentation">
              <a class="nav-link <?php if($i == 1) {?>active <?php } ?>" id="pills-home-tab_<?=$pav->package_type_id?>" data-toggle="pill" href="#package_<?=$pav->package_type_id?>"><?=$pav->type_name?> </a>
            </li>
            <?php
              $i++;
              }
            
        ?>
                </ul>

        <?php 
          if(!empty($package_type_arr)){
            $package_arr = [];
            foreach($package_type_arr as $package_type_id){
              $rePack = getPackage($package_type_id);
              $package_arr[$package_type_id][] = $rePack;
              //echo '<pre>';
              //print_r($package_arr);
            }
          }

        ?>
          
        <div class="tab-content" id="pills-tabContent">

        
        <?php 
        if(!empty($package_arr)){
          foreach($package_arr as $pk=>$pv){
        ?>

         <div class="tab-pane fade <?php if($pk==1){?>show active<?php } ?>" id="package_<?=$pk?>" role="tabpanel">
          <div class="row">
            <?php 
            foreach($pv as $pppk=>$pppv){
            
              foreach($pppv as $ppk=>$ppv){
                
              /* $resP['price'] = 0;
              $sqlPrice = "SELECT SUM(price) as price FROM salon_services WHERE service_id IN (".$ppv['service_id'].") ";
              $sqlE = exeQuery($sqlPrice);
              $resP=fetchAssoc($sqlE); */

              ?>
             
          <div class="col-md-4">
            <a href="{{ url('pack-detail'.trim($ppv->permalink)) }}" class="package-box_main">
   
            <div class="package-box package-box_bg">
                <div class="content-overlay-new"></div>

                <img src="{{ asset('uploads') }}/<?=$ppv->banner?>" class="img-fluid" alt="package image">
                  <span class="hovr-icons">
                  <img src="{{ asset('images/booking.png') }}" alt="" class="img-fluid img-fluid-hov">
                </span>
              </div>

               <div class="infomain d-flex justify-content-between align-items-center">
                <div class="wed-name">
                  <p class="text-uppercase m-0"><?php echo substr($ppv->package_name,0,23); if(strlen($ppv->package_name) > 16){echo "..";}?></p>
                </div>
                <div class="wed-locations">
                    <a href="javascript:void(0)" onclick="packageAddToWishlistIndex(<?=$ppv->package_id?>)" class="text-uppercase text-dark text-decoration-none">
                      <i class="fa fa-heart-o"></i>
                    </a>
                  <span><img src="{{ asset('images/location.png') }}" class="img-fluid"></span>
                  <span><strong></strong></span>
                </div>
              </div>
              <div class="infomain d-flex justify-content-between align-items-center mt-2">
                <div class="review_ratings stras-i-part"> 
                  <span class="pkgprice stras-i-parts" >Actual Price: <i class="fa fa-rupee rup-common pkgprice"></i> <?=(!empty(getStartingPrice($ppv->service_id))) ? getStartingPrice($ppv->service_id) : '0.00' ?></span>
                </div>
                   
                <div class="review_ratings stras-i-part">         
                  <i class="fa fa-star-o"></i>                 
                  <i class="fa fa-star-o"></i>                 
                  <i class="fa fa-star-o"></i>                 
                  <i class="fa fa-star-o"></i>                 
                  <i class="fa fa-star-o"></i>
                </div>
                  
             
              </div>
               <span class="pkgprice d-block mt-2 text-right stras-i-parts">Offer Price: <i class="fa fa-rupee rup-common pkgprice"></i><?=(!empty($ppv->deal_price)) ? $ppv->deal_price : '0.00' ?> </span>
              
            </a>
          </div>
          <?php } ?>
        
           <?php } ?>
           
          </div>
         </div>

         <?php } } ?>

         
         
         <div class="btn-view">
          <a href="packages.php" class="view-all">View All</a>
         </div>
        </div>
       </div>
      </div>
     </div>
    </div>
   </div>
  </div>
 </section>
<?php } ?>



 <section class="recommed">
  <div class="recommed-slider sliderinner-page">
   <div class="slide">
    <div class="img_slider"> 
     <img src="{{ asset('images/our-recommended-salon.jpg') }}" class="img-fluid" alt="">
     <div class="info">
      <h3>our recommeded salon </h3>
      <span class="line"></span>
      <p class="welcometxt">Welcome to our acclaimed, award-winning salon <br/> arton in crown Heights, New York.</p>
      <ul class="award">
       <li><img src="{{ asset('images/award_logo7.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo6.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo2.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo3.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo4.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo1.png') }}" alt="" class="imglogo"></li>
      </ul>
     </div>
    </div>
   </div>
   <div class="slide">
    <div class="img_slider"> 
     <img src="{{ asset('images/our-recommended-salon.jpg') }}" class="img-fluid" alt="">
     <div class="info">
      <h3>our recommeded salon </h3>
      <span class="line"></span>
      <p class="welcometxt">Welcome to our acclaimed, award-winning salon <br/> arton in crown Heights, New York.</p>
      <ul class="award">
      <li><img src="{{ asset('images/award_logo7.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo6.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo2.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo3.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo4.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo1.png') }}" alt="" class="imglogo"></li>
      </ul>
     </div>
    </div>
   </div>
   <div class="slide">
    <div class="img_slider"> 
     <img src="{{ asset('images/our-recommended-salon.jpg') }}" class="img-fluid" alt="">
     <div class="info">
      <h3>our recommeded salon </h3>
      <span class="line"></span>
      <p class="welcometxt">Welcome to our acclaimed, award-winning salon <br/> arton in crown Heights, New York.</p>
      <ul class="award">
      <li><img src="{{ asset('images/award_logo7.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo6.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo2.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo3.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo4.png') }}" alt="" class="imglogo"></li>
       <li><img src="{{ asset('images/award_logo1.png') }}" alt="" class="imglogo"></li>
      </ul>
     </div>
    </div>
   </div>
  </div>
 </section>




 <?php if($countrecomStylist>0){  ?> 
  <section class="product-list recommended-services book-this-expert">
   <div class="container">
    <div class="comman-heading">
     <h3>Book this expert</h3>
     <span class="line"></span>
    </div>
    <div class="row">
     <div class="col-md-12">
      <div class="slider-expert">
 
      <?php 
      foreach ($recomStylist as $rskey => $rsSST) {
        
      //while($rsSST=fetchAssoc($resStylist)){
 
       $salon_code = $rsSST->salon_code;
 
       if($rsSST->stylist_employment_type == '1'){
        /*  $sqldp=exeQuery("SELECT MIN(deal_price) as starting_price FROM salon_services WHERE salon_id='".$gSalCode['salon_id']."' ");
          $sdealprice=fetchAssoc($sqldp);
 
         $sqlSl2 = exeQuery("SELECT latitude, longitude FROM salons WHERE salon_code = '".$salon_code."' ");
         $gSalCode2=fetchAssoc($sqlSl2);
         $salLatTo = $gSalCode2['latitude'];
         $salLongTo = $gSalCode2['longitude'];
         $km = twopoints_on_earth($latfrom=0,$lonfrom=0,$salLatTo,$salLongTo); */
 
         
       }
       if($rsSST->stylist_employment_type == '0'){
       /* $sqldp = exeQuery("SELECT MIN(deal_price) as starting_price FROM stylist_services WHERE stylist_id = '".$rsSST['stylist_id']."' ");
       $sdealprice=fetchAssoc($sqldp);
       
 
       $sqlSl2 = exeQuery("SELECT my_latitude, my_longitude FROM stylist WHERE stylist_code = '".$rsSST['stylist_code']."' ");
       $gSalCode2=fetchAssoc($sqlSl2);
       $salLatTo = $gSalCode2['latitude'];
       $salLongTo = $gSalCode2['longitude'];
       $km = twopoints_on_earth($latfrom=0,$lonfrom=0,$salLatTo,$salLongTo); */
 
 
     }
       
     ?>
       <div class="slide">
        <div class="mrgin ">
 
        <a href="{{url('stylist-details'.<?=trim($rsSST->permalink);?>)}}/">
          <div class="product-box bg-light text-dark text-center comman-animation comman-animation-new position-relative">
          <?php if(!empty($rsSST->profile_picture) && file_exists("upload/".$rsSST->profile_picture)){ ?>
                 <img src="{{url('upload')}}/<?=$rsSST->profile_picture?>" class="img-responsive icons-responsive">   
               <?php }  else { ?>   
                 <img src="{{asset('assets/images/s1.jpg')}}" class="img-responsive icons-responsive"  height="504" alt="<?php echo $rsSST->stylist_name; ?>">  
               <?php  } ?> 
 
           
               <div class="content-overlay-new"></div>
               <span class="hovr-icons hovr-icons-new"><img src="{{asset('assets/images/booking.png')}}" alt="" class="img-fluid img-fluid-hov"></span>
 
          </div>
 
             <div class="infomain d-flex justify-content-between align-items-center">
                 <div class="wed-name">
                   <p class="text-uppercase m-0"><?php echo $rsSST->stylist_name; ?></p>
                 </div>
                 <div class="wed-locations">
                   <span><img src="{{asset('assets/images/location.png')}}" class="img-fluid"></span>
                   <span class="ml-2"><strong></strong></span>
                 </div>
             </div>
 
             <div class="infomain d-flex justify-content-between align-items-center mt-2">
              
               <div>
                 <span class="d-inline-block mr-1">Starting</span> 
                 <strong>₹ 0.00</strong>
               </div> 
 
               <div class="review_ratings stras-i-part">
 
           <?php 
           /* $get_stylist_avg_reviews_ratings2=get_avg_reviews_by($review_id_key='stylist_id', $review_id_val=$rsSST['stylist_id'], $db_con); 
           get_average_review($get_stylist_avg_reviews_ratings2); */
           ?>
 
          </div>
 
 
           </div>
 
          
         </a>
 
        </div>
       </div>
   <?php } ?>
 
      </div>
     </div>
    </div>
   </div>
  </section>
 
  <?php } ?>



  <?php
  if($countNearestSalon>0){ ?>
  <section class="salon-near-you">
   <div class="container">
   <div class="comman-heading">
    <h3>salons near you</h3>
    <span class="line"></span>
   </div>
   <div class="row">

    <?php 
      foreach ($nearestSalon as $nkey => $nSalon) {
    ?>	

      <div class="col-md-3 mb-4 post" id="post_<?php echo $nSalon->salon_id; ?>>
        <a href="#">
          <div class="box-imgs">
            <img src="{{asset('uploads')}}/<?php echo $nSalon->display_picture; ?>" alt="salon" class="img-fluid">
          </div>
        </a>
      </div>
  
      <?php } ?>
    

   </div>
   <div class="new-btns-section d-flex justify-content-center align-items-center mt-3 mb-3">
     <a href="javascript:void(0)" class="load-more text-decoration-none text-uppercase pl-4 pr-4 pt-3 pb-3 ">Lode More</a>
    <input type="hidden" id="row" value="0">
    <input type="hidden" id="all" value="12">
   </div>
   </div>
  </section>
  <?php } ?> 

  


  <?php
 
  if($countTopProduct>0){  ?>
  <section class="product-list">
   <div class="container">
    <div class="comman-heading">
     <h3>Top rated products</h3>
     <p>Best Selling Products</p>
     <span class="line"></span>
    </div>
    <div class="row">
     <div class="col-md-12">
      <div id="cart-msg"></div>

      <div class="slider-rated">

      <?php 
        foreach ($topProduct as $tkey => $rsProduct) { 
			
				/* $sprice=exeQuery("SELECT MIN(deal_price) AS starting_price, salon_code FROM product_association WHERE product_id='".$rsProduct['product_id']."' ");
				$spriceres=fetchAssoc($sprice);
				$salon_code = $spriceres['salon_code'];

				$sqlSl2 = exeQuery("SELECT latitude, longitude FROM salons WHERE salon_code = '".$salon_code."' ");
				$gSalCode2=fetchAssoc($sqlSl2);
				$salLatTo = $gSalCode2['latitude'];
				$salLongTo = $gSalCode2['longitude'];
				$km = twopoints_on_earth($latfrom=0,$lonfrom=0,$salLatTo,$salLongTo); */

		?>
       
       <div class="slide">
        <div class="mrgin">
         <div class="product-box bg-light text-dark text-center p-4 position-relative">
           
         <?php if(!empty($rsProduct->display_picture) && file_exists("uploads/".$rsProduct->display_picture)){ ?>
          <img src="{{asset('uploads')}}/<?php echo $rsProduct->display_picture;?>"
          alt="<?php echo $rsProduct->product_name; ?>" class="img-responsive img-fluid"> 
        <?php }  else { ?>  
          <img src="{{asset('images/conditioner.png')}}" class="img-responsive img-fluid" alt="<?php echo $rsProduct->product_name; ?>">  
        <?php  } ?>     

          <div class="addcart position-absolute">
          <a href="{{url('product-details/'.<?=trim(strtolower($rsProduct->permalink)); ?>)}}">
           <button type="button" class="btn btn-outline-secondary">
            <i class="fa fa-eye"></i>
           </button>
			</a>
          <a href="{{url('product-details/'.<?=trim(strtolower($rsProduct->permalink)); ?>)}}">   
			<button type="button" class="btn btn-outline-secondary"> 
            <i class="fa fa-shopping-cart"></i>
           </button>
		   </a>
           <button type="button" class="btn btn-outline-secondary" onclick="productTowishlistIndex(<?=$rsProduct->product_id?>);">
				<i class="fa fa-heart-o"></i>
           </button> 
          </div>
         </div>


          <div class="infomain d-flex justify-content-between align-items-center">
            <div class="wed-name">
              <p class="text-uppercase m-0"><a href="{{url('product-details/'.<?=trim(strtolower($rsProduct->permalink)); ?>)}}"><?php echo substr($rsProduct->product_name,0,23); if(strlen($rsProduct->product_name) > 16){echo "..";} ?></a></p>
            </div>
            <div class="wed-locations">
              <span><img src="{{asset('images/location.png')}}" class="img-fluid"></span>
              <span class="ml-2"><strong></strong></span>
            </div>
          </div>

          <div class="infomain d-flex justify-content-between align-items-center mt-2">
            <div class="review_ratings stras-i-part"> 
              <span class="pkgprice stras-i-parts">Starting: <i class="fa fa-rupee rup-common pkgprice"></i> 0.00</span>
            </div>
				
				<div class="review_ratings stras-i-part">         
            <?php 
                /* $rev = get_avg_reviews_by($review_id_key='product_id', $review_id_val=$rsProduct['product_id'], $db_con); 
					      get_average_review($rev); */
                ?>
					
          </div>

          </div>
         
        </div>
       </div>
        
       <?php } ?>
      </div>
     </div>
    </div>
   </div>
  </section>
<?php } ?>





<?php if($countMostVisitedSalons>0){  ?>   
  <section class="most-visited mt-5 pt-5 mb-5">
  
   <div class="container">
   <div class="comman-heading" style="padding-top: 0;">
      <h3>Most Visited salons </h3>
      <p>Best salon in town</p>
      <span class="line"></span>
   </div>
   
    <div class="row">

    <?php 
      foreach ($mostVisitedSalons as $vkey => $rsSalArr2) {
       ?>
      <div id="post2_<?php echo $rsSalArr2->salon_id; ?>" class="col-md-4 mb-3 post2">
        <div class="box-salon comman-animation">
          <a href="{{url('salon/'.<?=trim(strtolower($rsProduct->permalink)); ?>)}}"> 
            <?php if(!empty($rsSalArr2->display_picture) && file_exists("uploads/".$rsSalArr2->display_picture)){ ?>
              <img src="{{asset('uploads/'.<?=$rsSalArr2->display_picture?>)}}"
              alt="<?php echo $rsSalArr2->salon_name; ?>" class="img-responsive editor-image"> 
            <?php }  else { ?>
              <img src="{{asset('images/noimage.png')}}" class="img-responsive editor-image" alt="<?php echo $rsSalArr2->salon_name; ?>">  
            <?php  } ?>
            
            <div class="infomain d-flex justify-content-between align-items-center">
              <div class="wed-name">
                <p class="text-uppercase m-0"><?php echo substr($rsSalArr2->salon_name,0,15); if(strlen($rsSalArr2->salon_name) > 15){echo "...";} ?></p>
              </div>
              <div class="wed-locations">
                <span><img src="{{asset('images/location.png')}}" class="img-fluid"></span>
            
                <span class="ml-2"><strong>0km</strong></span>
              </div>
            </div>

            <div class="infomain d-flex justify-content-between align-items-center mt-2">
              <div class="review_ratings stras-i-part"> 
				  
                <span class="pkgprice stras-i-parts">Starting: <i class="fa fa-rupee rup-common pkgprice"></i> 0.00</span>
              </div>
                  
          <?php  
				    //$salonRev2 = get_avg_reviews_by($review_id_key='salon_id', $review_id_val=$rsSalArr2->salon_id, $db_con); 
					  //get_average_review($salonRev2);
					?>

          </div>
            
          </a>  
        </div>     
      </div>
      <?php } ?>

    
    </div>
    <div class="new-btns-section d-flex justify-content-center align-items-center mt-3 mb-3">
     <a href="javascript:void(0)" class="load-more-visited-salon text-decoration-none text-uppercase pl-4 pr-4 pt-3 pb-3 ">Lode More</a>
    <input type="hidden" id="row2" value="0">
    <input type="hidden" id="all2" value="<?php echo $countMostVisitedSalons; ?>">
   </div>
    
    </div>
   </div>
   </section>
   <?php } ?>
  

   <div class="clearfix"></div> 


   <?php if($countRecomServices > 0){?>
    <section class="product-list recommended-services">
     <div class="container">
      <div class="comman-heading">
       <h3>Recommended Services</h3>
       <span class="line"></span>
      </div>
      <div class="row">
       <div class="col-md-12">
        <div class="slider-rated">
        <?php 
        foreach ($recomServices as $rkey => $respTr) {
        
        /* $sqldp=exeQuery("SELECT latitude, longitude FROM salons WHERE salon_id='".$respTr['type_id']."' ");
        $resSall=fetchAssoc($sqldp);
        $salLatTo = $resSall['latitude'];
        $salLongTo = $resSall['longitude'];
        $km = twopoints_on_earth($latfrom,$lonfrom,$salLatTo,$salLongTo); */
      ?>
        <div class="slide">
          <div class="mrgin">
          <a href="javascript:void(0)" onclick="">
            <div class="product-box bg-light text-dark text-center comman-animation comman-animation-new position-relative">
              <div class="content-overlay-new"></div>
             <img src="{{asset('uploads/.<?=$respTr->service_image?>')}}" class="img-fluid" alt="<?php echo $respTr->service_title; ?>">  
             <a href="javascript:void(0)" onclick="" class="hovr-icons hovr-icons-new" tabindex="0">
               <img src="{{asset('images/booking.png')}}" alt="" class="img-fluid img-fluid-hov"></a>
            </div>
           
           </a>
           <div class="infomain d-flex justify-content-between align-items-center">
                <div class="wed-name">
                  <p class="text-uppercase m-0"><?php echo substr($respTr->service_title,0,23); if(strlen($respTr->service_title) > 23){echo "...";}?></p>
                </div>
                <div class="wed-locations">
                  <span><img src="{{asset('images/location.png')}}" class="img-fluid"></span>
                  <span class="ml-2"><strong>0km></strong></span>
                </div>
            </div>
  
            <div class="infomain d-flex justify-content-between align-items-center mt-2">
              <div class="review_ratings stras-i-part"> 
                <span class="pkgprice stras-i-parts">Starting: <i class="fa fa-rupee rup-common pkgprice"></i> 0.00</span>
              </div>
                 
              <div class="review_ratings stras-i-part">  
            <?php
            
            /* $rev = get_avg_reviews_by($review_id_key='service_id', $review_id_val=$respTr['type_id'], $db_con); 
             get_average_review($rev); */
             ?>
                
              </div> 
            </div>
          </div>
         </div>
        <?php } ?>
        
        </div>
       </div>
      </div>
     </div>
    </section>
  <?php } ?>  

  <?php if($countHomeGallery>0) { ?>
  <section class="our-gallery">
    <div class="container-fluid p-0">
     <div class="comman-heading">
      <h3>Our Gallery</h3>
      <span class="line"></span>
     </div>
     <div class="row no-gutters">
       <?php
       foreach ($homeGallery as $hkey => $resGalleryStylist) {
        ?>
          <div class="col-md-3 col-xs-12">
          <div class="img-box comman-animation">
          <a href="insta-gallery-detail.php?id=<?=base64_encode($resGalleryStylist->linked_code)?>&type=<?=base64_encode($resGalleryStylist->gallery_type)?> ">
              <img src="{{url('uploads/'.<?=$resGalleryStylist->image_path?>)}}" class="img-fluid" alt="gallery image">
          </a>
          </div>
      </div>
      <?php } ?>
     
      <div class="btn-view">
       <a href="insta-gallery.php" class="view-all">View All</a>
      </div>
     </div>
    </div>
   </section>
   <?php } ?>



  <section class="styling-inspiration" style="display: none;">
   <div class="container-fluid p-0">
    <div class="comman-heading">
     <h3>styling inspiration</h3>
     <p>Current Trends, Styling Tips and Much More</p>
     <span class="line"></span>
    </div>
    <div class="row no-gutters">
     <div class="col-sm-4">
      <div class="img-box comman-animation">
       <img src="{{asset('images/portrait.jpg')}}" class="img-fluid" alt="">
      </div>
     </div>
     <div class="col-sm-4 bg-color">
      <div class="text-box">
       <h3>Paul Mitchell Hair shows 2019</h3>
       <p>Prism lo-fi copper mug ugh edison bulb. Umami truffaut pop-up, pack jean short typewriter</p>
      </div>
     </div>
     <div class="col-sm-4">
      <div class="img-box comman-animation">
       <img src="{{asset('images/VIDEO.jpg')}}" class="img-fluid" alt="">
      </div>
     </div>
     <div class="col-sm-4 bg-d">
      <div class="text-box">
       <h3>New Youk's Hottest Beauty show 2019</h3>
       <p>Prism lo-fi copper mug ugh edison bulb. Umami truffaut pop-up, pack jean short typewriter</p>
      </div>
     </div>
     <div class="col-sm-4">
      <div class="img-box comman-animation">
       <img src="{{asset('images/makeup-artist-applies-eye.jpg')}}" class="img-fluid" alt="">
      </div>
     </div>
     <div class="col-sm-4 bg-d">
      <div class="text-box">
       <h3>eyebrows extension weekend</h3>
       <p>Prism lo-fi copper mug ugh edison bulb. Umami truffaut pop-up, pack jean short typewriter</p>
      </div>
     </div>
    </div>
   </div>
  </section>



  <?php if($countTopBrands>0){  ?>
    <section class="our-gallery">
     <div class="container">
      <div class="comman-heading">
       <h3>Top Brands</h3>
       <span class="line"></span>
      </div>
      <div class="row">
       <div class="col-md-12">
        <div class="slider-rated slider-rated-new">
  
        <?php 
          foreach ($topBrands as $topkey => $rsBrands) {
           ?>
         
         <div class="slide">
         <div class="mrgin">
  
           <div class="product-box bg-light text-dark text-center position-relative" style="min-height:0;margin-bottom:0">      
           <a href="{{url('brand_detail.php?bid='.<?=$rsBrands->brand_id?>)}}"> 
            <?php if(!empty($rsBrands->brand_logo) && file_exists("uploads/".$rsBrands->brand_logo)){ ?>
              <img src="{{asset('uploads/'.<?=$rsBrands['brand_logo']?>)}}"
              alt="<?php echo $rsBrands->brand_name; ?>" class="sliders-img" style="height:130px"> 
            <?php } else { ?>
              <img src="{{asset('images/coming-soon-2.jpg')}}" class="sliders-img" style="height:130px" alt="<?php echo $rsBrands->brand_name; ?>">  
            <?php  } ?>        
          </a>  
           </div>
  
           </div>
           
         
         </div>
          
         <?php } ?>
        </div>
        <div class="btn-view">
        <a href="brands.php" class="view-all">View All</a>
       </div>
       </div>
      </div>
     </div>
    </section>
  <?php } ?>



  <section class="download-app">
   <div class="container">
    <div class="row">
     <div class="col-sm-7">
      <div class="phonebox">
       <h3>download the bookmysalon app!</h3>
       <p>Get real-time updates, live chat support, and exclusive app only offers.</p>
       <div class="input-group mb-3">
        <div class="input-group-prepend">
         <span class="input-group-text bround"><i class="fa fa-phone"></i> </span>
        </div>
        <input type="text" class="form-control" placeholder="Phone Number">
        <div class="input-group-append bgbtn">
         <button type="button" class="btn"> Send</button>
        </div>
       </div>
      </div>
     </div>
     <div class="col-sm-5">
      <!-- <img src="image/phone-vector.png" class="img-fluid"> -->
     </div>
    </div>
   </div>
  </section>



  <section class="sercive">
   <div class="container">
    <div class="d-flex justify-content-around flex-sm-row flex-column">
     <p><i class="fa fa-bus"></i> free delivery in india</p>
     <p> <i class="fa fa-plus" aria-hidden="true"></i> next day dispatch</p>
     <p><i class="fa fa-comment"></i> free consultation</p>
    </div>
   </div>
  </section>

  @include('common.home_footer')

