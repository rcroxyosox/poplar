<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" />

<!-- KB - www.tridig.com created 03.08.2006 -->
<!-- CEF - www.tridig.com - last modified 03.13.2006 -->
<!-- SLS - www.tridig.com - last modified 12.06.2006 -->
<!-- NMP - www.tridig.com - last modified 10.21.2008 -->

<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Explore - Master Plan</title>

<?php require_once('lib/meta.php'); ?>
<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/menus.css" />
<link rel="icon" type="image/ico" href="images/favicon.ico" />


<link rel="stylesheet" href="css/explore.css" />

<script type="text/JavaScript" src="js/default.js"></script>
<script type="text/JavaScript" src="js/menus.js"></script>
</head>
<body onLoad="MM_preloadImages('images/topNav_home-over.gif','images/topNav_slideShow-over.gif','images/topNav_explore-over.gif','images/topNav_community-over.gif','images/topNav_pressAwards-over.gif','images/topNav_contact-over.gif','images/topNav_homes-over.gif')">
<a href="#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="images/spacer.gif" width="800" height="10" border="0"></a>
<div align="center" id="topNav">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><a href="index.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_home','','images/topNav_home-over.gif',1); buttonMouseover(event, 'menuClear')"><img src="images/topNav_home.gif" alt="Home" name="topNav_home" width="66" height="50" border="0"></a></td>
      <td><a href="slideShow.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_slideShow','','images/topNav_slideShow-over.gif',1); buttonMouseover(event, 'slideShow')"><img src="images/topNav_slideShow.gif" alt="Slide Show" name="topNav_slideShow" width="120" height="50" border="0"></a></td>
      <td><a href="explore_overview.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_explore','','images/topNav_explore-over.gif',1); buttonMouseover(event, 'explore')"><img src="images/topNav_explore-over.gif" alt="Explore" name="topNav_explore" width="96" height="50" border="0" id="topNav_explore"></a></td>
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
	<div id="left_menu">
		<div id="left_hdr"><img src="images/left_hdr_explore.gif" alt="bird" width="81" height="20"></div>
		<div><img src="images/corner_bird.gif" alt="bird" width="113" height="83"></div>
				<ul>
								<li><a href="explore_overview.php">Overview</a></li>
								<li><a href="explore_vision.php">Vision</a></li>
								<li><a href="explore_patterns.php">Patterns</a></li>
								<li><a href="explore_masterPlan.php" class="selected">Master Plan</a></li>
								<li><a href="explore_locationMaps.php">Location Maps</a></li>
								<li><a href="explore_history.php">History</a></li>
								<li><a href="explore_neighborhoodFounders.php">Neighborhood Founders</a></li>
				</ul>
		<div id="quotes" style="float: left; margin-top: 15px; padding-right: 10px;">
			<a href="awardsPress_testimonials.php" style="color: #000000; text-decoration: none;">
			<?php 
				srand((double)microtime()*1000000); 
				$arry_txt=preg_split("/--NEXT--/",join('',file("lib/quotes.txt"))); 
				echo$arry_txt[rand(0,sizeof($arry_txt)-1)]; 
			?>
			</a>
		</div>
	</div>
	<div id="content">
		<div id="content_header"><span id="content_header_underline">Master Plan </span></div>
		<div id="content_text">
		  <p>The development of the Wellington Neighborhood is proceeding pursuant   to a Master Plan approved by the Town of Breckenridge.	    </p>
		  <div> 
		    <p><a href="pdf/masterplan.pdf">Master Plan</a>  PDF (1220 KB)<br>
	      <a href="pdf/wellington2block9.pdf">Wellington 2, Block 9</a> PDF (287 KB)</p>
	    </div>
		  <div>
				<img src="images/vignette_1.jpg" alt="vignette1"><br>
				<p>A new entrance road off of Wellington Road and a new bridge across French Creek will link the existing neighborhood to the South 40.
				There is the opportunity to place a community building and "historic" bridge at this important junction.</p>
			</div>
		  <div>
				<img src="images/vignette_2.jpg" alt="vignette2"><br>
				<p>An existing construction bridge is modified to create a pedestrian crossing to connect to the new kid's playground and the South
40 neighborhood.</p>
			</div>
			<p>&nbsp;</p>
		  <div>
				<img src="images/vignette_3.jpg" alt="vignette3"><br>
				<p>A pedestrian crossing using stepping stones leads to an outdoor room at a place along the creek where existing vegetation is dense,
and the view is incredible.</p>
			</div>
		  <div>
				<img src="images/vignette_4.jpg" alt="vignette4"><br>
				<p>A turf area big enough for active recreation is placed between Queen-of-the-West Road and French Creek.</p>
			</div>
		
		</div>	
	</div>	
	<div id="explore_bottom_img"></div>
	
		<?php
		require_once('lib/footer.php');	   
	?>
    
    
    </body>
</html>
