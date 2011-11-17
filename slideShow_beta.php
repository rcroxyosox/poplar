<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" />
<!-- KB - www.tridig.com created 03.08.2006 -->
<!-- RSB - www.tridig.com last modified 07.08.2009 -->
<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Slide Show</title>

<?php require_once('lib/meta.php'); ?>
<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/menus.css" />
<link href="jquery.EmbedPicasaGallery_7/css/slimbox2.css" rel="stylesheet" type="text/css">
<link rel="icon" type="image/ico" href="images/favicon.ico" />
<link rel="stylesheet" href="css/slideShow.css" />

<script type="text/JavaScript" src="js/default.js"></script>
<script type="text/JavaScript" src="js/menus.js"></script>
<script type="text/javascript" src="jquery.EmbedPicasaGallery_7/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="jquery.EmbedPicasaGallery_7/slimbox2.js"></script>
<script type="text/javascript" src="jquery.EmbedPicasaGallery_7/jquery.EmbedPicasaGallery.js"></script>
<script type="text/javascript">
$(document).ready(function() {
 /*
 $("#pics").EmbedPicasaGallery('102428043167201564445',{
    albumid: "5674510483970664065",
//	matcher: /Best/,
//  auto_open: true,
//  hide_back: true,
//  show_more: 5,
    loading_animation: 'jquery.EmbedPicasaGallery_7/css/loading.gif',
    album_title_tag:    '<h3/>',
		thumb_tuner:    function(){ 
													$(".album").find('img').addClass('thumbBorder');
												}
 });
*/
/**/
 jQuery("#pics2").EmbedPicasaGallery('102428043167201564445',{
  albumid: "5674510483970664065",
  size: 90, // thumb size (32,48,64,72,144,160))
 loading_animation: 'jquery.EmbedPicasaGallery_7/css/loading.gif',
  msg_more: 'show<br/>more',
  //show_more: 5,
	thumb_tuner:    function(){ 
													$(".album").find('img').addClass('thumbBorder').unbind('mouseenter mouseleave').hover(function(){$(this).fadeTo('fast',0.8);},function(){$(this).fadeTo('fast',1.0);});
												}
 });


})
</script>


<!--<script type="text/JavaScript" src="js/slideShow.js"></script> -->


 
<script type="text/JavaScript">


</script>
</head>
<body onLoad="MM_preloadImages('images/topNav_home-over.gif','images/topNav_slideShow-over.gif','images/topNav_explore-over.gif','images/topNav_community-over.gif','images/topNav_pressAwards-over.gif','images/topNav_contact-over.gif','images/topNav_homes-over.gif'); init();">
<a href="#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="images/spacer.gif" width="800" height="10" border="0"></a>
<div align="center" id="topNav">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><a href="index.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_home','','images/topNav_home-over.gif',1); buttonMouseover(event, 'menuClear')"><img src="images/topNav_home.gif" alt="Home" name="topNav_home" width="66" height="50" border="0"></a></td>
      <td><a href="slideShow.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_slideShow','','images/topNav_slideShow-over.gif',1); buttonMouseover(event, 'slideShow')"><img src="images/topNav_slideShow-over.gif" alt="Slide Show" name="topNav_slideShow" width="120" height="50" border="0"></a></td>
      <td><a href="explore_overview.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_explore','','images/topNav_explore-over.gif',1); buttonMouseover(event, 'explore')"><img src="images/topNav_explore.gif" alt="Explore" name="topNav_explore" width="96" height="50" border="0" id="topNav_explore"></a></td>
      <td><a href="homes_forSale.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_homes','','images/topNav_homes-over.gif',1); buttonMouseover(event, 'homes')"><img src="images/topNav_homes.gif" alt="Homes" name="topNav_homes" width="82" height="50" border="0" id="topNav_homes"></a></td>
      <td><a href="community_transportation.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_community','','images/topNav_community-over.gif',1); buttonMouseover(event, 'community')"><img src="images/topNav_community.gif" alt="Community" name="topNav_community" width="124" height="50" border="0"></a></td>
      <td><a href="awardsPress_print.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_pressAwards','','images/topNav_pressAwards-over.gif',1); buttonMouseover(event, 'awardsPress')"><img src="images/topNav_pressAwards.gif" alt="Press and Awards" name="topNav_pressAwards" width="147" height="50" border="0"></a></td>
      <td><a href="mailto:courtney@poplarhouse.com?subject=Wellington Neighborhood Information" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_contact','','images/topNav_contact-over.gif',1)"><img src="images/topNav_contact.gif" alt="Contact" name="topNav_contact" width="103" height="50" border="0"></a></td>
      <td><a href="#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="images/topNav_tree.gif" alt="Tree" name="tree" width="62" height="50" id="tree" border="0"></a></td>
    </tr>
  </table>
</div>

<!-- Menus -->
<div id="menuClear" class="menu" style="display:none;"></div>
<div id="slideShow" class="menu" style="display:none;"></div>

<div id="explore" class="menu">
<a class="menuItem" href="explore_overview.php">Overview</a>
<a class="menuItem" href="explore_vision.php">Vision</a>
<a class="menuItem" href="explore_patterns.php">Patterns</a>
<a class="menuItem" href="explore_masterPlan.php">Master Plan</a>
<a class="menuItem" href="explore_locationMaps.php">Location Maps</a>
<a class="menuItem" href="explore_history.php">History</a>
<a class="menuItem" href="explore_neighborhoodFounders.php">Neighborhood Founders</a>
</div>

<div id="homes" class="menu"
     onmouseover="menuMouseover(event)">
<a class="menuItem" href="homes_forSale.php">For Sale</a>
<a class="menuItem" href="homes_catalog.php"
   onclick="return false;"
   onmouseover="menuItemMouseover(event, 'homes_2');"
><span class="menuItemText">Home Catalog</span><span class="menuItemArrow">&gt;</span></a>
<a class="menuItem" href="homes_sustainability.php">Sustainability</a>
<a class="menuItem" href="energystar.php">Energy Star&reg;</a>
<a class="menuItem" href="homes_financing.php">Financing</a>
<!-- <a class="menuItem" href="homes_specials.php">Specials</a> -->
<a class="menuItem" href="homes_warranty.php">Warranty</a>
<a class="menuItem" href="homes_brokers.php">Brokers</a>
</div>

<div id="community" class="menu">
<a class="menuItem" href="community_transportation.php">Transportation</a>
<a class="menuItem" href="community_technology.php">Technology</a>
<a class="menuItem" href="community_lifestyle.php">Lifestyle</a>
<a class="menuItem" href="community_neighborhoodGovernance.php">Neighborhood Governance</a>
<a class="menuItem" href="community_historicMining.php">Historic Mining Activities</a>
<a class="menuItem" href="community_deedRestriction.php">"Local Price" Deed Restriction</a>
<a class="menuItem" href="community_links.php">Links</a>
</div>

<div id="awardsPress" class="menu">
<a class="menuItem" href="awardsPress_print.php">Print</a>
<a class="menuItem" href="awardsPress_broadcast.php">Broadcast</a>
<a class="menuItem" href="awardsPress_testimonials.php">Testimonials</a>
</div>

<div id="contactUs" class="menu">
<a class="menuItem" href="contact_sales.php">Sales</a>
<a class="menuItem" href="contact_builder.php">Builder</a>
</div>


<div id="homes_2" class="menu"
     onmouseover="menuMouseover(event)">
<a class="menuItem" href="homes_catalog_buckthorn.php">Buckthorn</a>
<a class="menuItem" href="homes_catalog_mountainAsh.php">Mountain Ash</a>
<a class="menuItem" href="homes_catalog_oak.php">Oak</a>
<a class="menuItem" href="homes_catalog_cottonwood.php">Cottonwood</a>
<a class="menuItem" href="homes_catalog_juniper.php">Juniper</a>
<a class="menuItem" href="homes_catalog_hawthorne.php">Hawthorne</a>
<a class="menuItem" href="homes_catalog_ponderosa.php">Ponderosa</a>
<a class="menuItem" href="homes_catalog_ponderosa_plus.php">Ponderosa Plus</a>
<a class="menuItem" href="homes_catalog_copper_rose.php">Copper Rose</a>
<a class="menuItem" href="homes_catalog_pinon.php">Pinon</a>
<a class="menuItem" href="homes_catalog_winter_rose.php">Winter Rose</a>
<a class="menuItem" href="homes_catalog_honeyLocust.php">Honey Locust</a>
<a class="menuItem" href="homes_catalog_aspen.php">Aspen</a>
</div>

<!-- End Menus -->
<div><img src="images/mtn_top_800.jpg" alt="mountains" width="800" height="67"></div>
<div id="main">
	<div id="content_header"><span id="content_header_underline">Gallery</span></div>
  <div id="pics"></div>
  <div id="pics2"></div>
  
  
  <div id="slideShow">

<div id="picID"></div>

<div id="thumbWrapper" style="">
			<DIV id="Thumbs" width="540" align="left">
				&nbsp;
			</DIV>
</div>
</div>
<br />

	<div id="content_header"><span id="content_header_underline">Videos</span></div>
	
	<div class="video_box">
                <div class="video_image_box">
<a href="http://youtu.be/Cz02g2oGv9k"><img src="http://img.youtube.com/vi/Cz02g2oGv9k/default.jpg" width="125" height="78" border="0"></a>				</div>
                <div class="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://youtu.be/Cz02g2oGv9k"><strong>Wellington Neighborhood</strong><br>
               		Firecracker Bike Race...
                	</a>
                </div>
		</div>
	
	<div class="video_box">
                <div class="video_image_box">
<a href="http://youtu.be/OsVep7p-2yU"><img src="images/goldrunrushvideo.jpg" width="125" height="78" border="0"></a>				</div>
                <div class="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://youtu.be/OsVep7p-2yU"><strong>Wellington Neighborhood</strong><br>
               		Gold Run Rush Bike Race...
                	</a>
                </div>
		</div>
	
         <div class="video_box">
                <div class="video_image_box">
 					<a href="http://blip.tv/file/2299092"><img src="images/bliptvThumb_thisis.jpg" alt="Breckenridge Colorado" border="0" align="baseline"></a>
				</div>
                <div class="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://blip.tv/file/2299092"><strong>Wellington Neighborhood</strong><br>
               		Gold Run Gulch Bike Race...
                	</a>
                </div>
		</div>
		<div class="video_box">
                <div class="video_image_box">
 					<a href="http://blip.tv/file/1957777"><img src="images/bliptvThumb_smart.jpg" alt="Breckenridge Colorado" border="0" align="baseline"></a>
				</div>
                <div class="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://blip.tv/file/1957777"><strong>Smart Growth Town</strong><br>
               		HGTV: &nbsp;"From an old gold mine springs a 14 carat community..."
                	</a>
                </div>
		</div>
		<div class="video_box">
                <div class="video_image_box">
 					<a href="http://blip.tv/file/2338129"><img src="images/bliptvThumb_oak.jpg" alt="Tour the Oak house" border="0" align="baseline"></a>
				</div>
                <div class="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://blip.tv/file/2338129"><strong>The Oak</strong><br>
               		Take a guided tour of the new Oak house
                	</a>
                </div>  
		</div>	
		
		<?php
		require_once('lib/footer.php');	   
	?>
	</div>
	</body>
</html>
