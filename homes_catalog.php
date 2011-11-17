<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" />

<!-- KB - www.tridig.com created 03.08.2006 -->
<!-- RSB - www.tridig.com - last modified 06.03.2009 -->

<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Homes - Catalog</title>

<?php require_once('lib/meta.php'); ?>
<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/menus.css" />
<link rel="icon" type="image/ico" href="images/favicon.ico" />


<link rel="stylesheet" href="css/explore.css" />
<link rel="stylesheet" href="css/homes.css" />

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
      <td><a href="explore_overview.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_explore','','images/topNav_explore-over.gif',1); buttonMouseover(event, 'explore')"><img src="images/topNav_explore.gif" alt="Explore" name="topNav_explore" width="96" height="50" border="0" id="topNav_explore"></a></td>
      <td><a href="homes_forSale.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_homes','','images/topNav_homes-over.gif',1); buttonMouseover(event, 'homes')"><img src="images/topNav_homes-over.gif" alt="Homes" name="topNav_homes" width="82" height="50" border="0" id="topNav_homes"></a></td>
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
   onmouseover="menuItemMouseover(event, 'homes_2');">
   <span class="menuItemText">Home Catalog</span><span class="menuItemArrow">&gt;</span></a>
<a class="menuItem" href="homes_sustainability.php">Sustainability</a>
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
	<div id="left_menu">
		<div id="left_hdr"><img src="images/left_hdr_homes.gif" alt="bird" width="67" height="20"></div>
		<div><img src="images/corner_bird.gif" alt="bird" width="113" height="83"></div>
				<ul>
					<li><a href="homes_forSale.php">For Sale </a></li>
					<li><a href="homes_catalog.php" class="selected">Home Catalog </a>
						<ul class="left_sub">
							<li><a href="homes_catalog_buckthorn.php">Buckthorn</a></li>
							<li><a href="homes_catalog_mountainAsh.php">Mountain Ash</a></li>
							<li><a href="homes_catalog_oak.php">Oak</a></li>
							<li><a href="homes_catalog_cottonwood.php">Cottonwood</a></li>
							<li><a href="homes_catalog_juniper.php">Juniper</a></li>
							<li><a href="homes_catalog_hawthorne.php">Hawthorne</a></li>
							<li><a href="homes_catalog_ponderosa.php">Ponderosa</a></li>
							<li><a href="homes_catalog_ponderosa_plus.php">Ponderosa Plus</a></li>
						  	<li><a href="homes_catalog_copper_rose.php">Copper Rose</a></li>
							<li><a href="homes_catalog_pinon.php">Pinon</a></li>
							<li><a href="homes_catalog_winter_rose.php">Winter Rose</a></li>
                                        <li><a href="homes_catalog_honeyLocust.php">Honey Locust</a></li>
                                        <li><a href="homes_catalog_aspen.php">Aspen</a></li>
						</ul>
				  </li>
								<li><a href="homes_sustainability.php">Sustainability</a></li>
								<li><a href="homes_financing.php">Financing</a></li>
                                                                <!-- <li><a href="homes_specials.php">Specials</a></li> -->
								<li><a href="homes_warranty.php">Warranty</a></li>
								<li><a href="homes_brokers.php">Brokers</a></li>
				</ul>
  </div>
	<div id="content">
		<div id="content_header"><span id="content_header_underline">Home Catalog</span></div>
<br>
		  <table width="464" border="1" cellpadding="5" cellspacing="0">
        <tr>
          <td width="121" align="center"><a href="homes_catalog_buckthorn.php"><img src="images/catalog_buckthorn_t.gif" alt="Buckthorn" width="108" height="80" border="0"></a></td>
          <td width="93" align="left"><a href="homes_catalog_buckthorn.php">Buckthorn</a></td>
          <td width="114" align="center"><a href="homes_catalog_juniper.php"><img src="images/catalog_juniper_t.gif" alt="Juniper" width="69" height="80" border="0"></a></td>
          <td width="86" align="left"><a href="homes_catalog_juniper.php">Juniper</a></td>
        </tr>
        <tr>
          <td align="center"><a href="homes_catalog_mountainAsh.php"><img src="images/catalog_mountain_ash_t.gif" alt="Mountain Ash" width="116" height="80" border="0"></a></td>
          <td align="left"><a href="homes_catalog_mountainAsh.php">Mountain Ash </a></td>
          <td align="center"><a href="homes_catalog_hawthorne.php"><img src="images/catalog_hawthorne_t.gif" alt="Hawthorne" width="89" height="70" border="0"></a></td>
          <td align="left"><a href="homes_catalog_hawthorne.php">Hawthorne</a></td>
        </tr>
        <tr>
          <td align="center"><a href="homes_catalog_oak.php"><img src="images/catalog_oak_t.gif" alt="Oak" width="71" height="70" border="0"></a></td>
          <td align="left"><a href="homes_catalog_oak.php">Oak</a></td>
          <td align="center"><a href="homes_catalog_ponderosa.php"><img src="images/Ponderosa-render.jpg" alt="Ponderosa" width="111" height="75" border="0"></a></td>
          <td align="left"><a href="homes_catalog_ponderosa.php">Ponderosa</a></td>
        </tr>
        <tr>
          <td align="center"><a href="homes_catalog_ponderosa_plus.php"><img src="images/catalog_ponderosa_plus_t.gif" alt="Ponderosa Plus" width="117" height="70" border="0"></a></td>
          <td align="left"><a href="homes_catalog_ponderosa_plus.php">Ponderosa Plus</a></td>
          <td align="center"><a href="homes_catalog_cottonwood.php"><img src="images/catalog_cottonwood_t.gif" alt="Cottonwood" width="77" height="80" border="0"></a></td>
          <td align="left"><a href="homes_catalog_cottonwood.php">Cottonwood</a></td>
        </tr>
		<tr>
		  <td align="center"><a href="homes_catalog_copper_rose.php"><img src="images/catalog_copper_rose_t.gif" alt="Copper Rose" width="88" height="80" border="0"></a></td>
		  <td align="left"><a href="homes_catalog_copper_rose.php">Copper Rose</a></td>
		  <td align="center"><a href="homes_catalog_pinon.php"><img src="images/catalog_pinon_t.gif" alt="Pinon" width="105" height="80" border="0"></a></td>
		  <td align="left"><a href="homes_catalog_pinon.php">Pinon</a></td>
		  </tr>
		<tr>
		  <td align="center"><a href="homes_catalog_winter_rose.php"><img src="images/catalog_winter_rose_t.gif" alt="Winter Rose" width="120" height="80" border="0"></a></td>
		  <td align="left"><a href="homes_catalog_winter_rose.php">Winter Rose</a></td>
		  <td align="center"><a href="homes_catalog_honeyLocust.php"><img src="images/catalog_honeylocust_t.gif" width="100" height="85" alt="Honey Locust" border="0"></a></td>
		  <td align="left"><a href="homes_catalog_honeyLocust.php">Honey Locust</a></td>
		  </tr>
          <tr>
		  <td align="center"><a href="homes_catalog_aspen.php"><img src="images/catalog_aspen_t.gif" alt="Aspen" width="79" height="85" border="0"></a></td>
		  <td align="left"><a href="homes_catalog_aspen.php">Aspen</a></td>
		  <td align="center">&nbsp;</td>
		  <td align="left">&nbsp;</td>
		  </tr>
      </table>
	  <blockquote>&nbsp;	</blockquote>
		  <p>&nbsp;</p>
				
	</div>	
	
         <?php
			require('lib/footer.php');	   
		?>  
    
    
    </body>
</html>
