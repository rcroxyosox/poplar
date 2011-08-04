<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" />
<!--  KB - www.tridig.com created 3.8.06
//-->
<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Cottage Living</title>

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
   onmouseover="menuItemMouseover(event, 'homes_2');"
><span class="menuItemText">Home Catalog</span><span class="menuItemArrow">&gt;</span></a>
<a class="menuItem" href="homes_sustainability.php">Sustainability</a>
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
		<div id="left_hdr"></div>
		<div><img src="images/corner_bird.gif" alt="bird" width="113" height="83"></div>
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
		<div id="content_header"><span id="content_header_underline">Cottage Living </span></div>
		
<br/>

<div> <p><img src="images/cottage_living.jpg"></p></div><br /><br/>
<div id="content_text">
<p>Producer & Writer Petra Spiess</p>

<p>Photographer Matthew Gilson</p>
<p>Cottage Living Magazine December/2006</p>

<p>"It's like the neighborhood we remember growing up in"</p><br />

<p>Something precious can still be found on an old mining site in Breckenridge, Colorado: the simple cottage life.</p><br />

<p>Imagine a backyard of towering peaks covered in powdery snow in winter and rainbows of wildflowers in summer.  The front yard is a Victorian-clad main street full of boutique shops, cafes, and restaurants right out of an airline magazine.  Sounds like livin' the dream.  And that's the problem.  In many classic ski resort towns - in Colorado and elsewhere- the demand for vacation homes and rentals has spiked the real estate market high enough to force locals to relocate to remote places a long, icy commute away.  That leaves the picture-perfect town without its most crucial element: a sense of community.</p><br />
	<p>In Breckenridge, Colorado, the Wellington Neighborhood has changed this resort-town trend due to a partnership between a visionary affordable-housing developer and the Breckenridge Town Council.  Located on a reclaimed mining site a mile from downtown, the first phase of the neighborhood is composed of 122 Victorian cottages, 98 of which are reserved for people who work 30-plus hours a week in Summit County and who agree to restrictions limiting resale value.  Breckenridge's town manager, Tim Gagen, and his wife, Ann, struggled to find a house until they came across Wellington.</p><br />
	<p>"We looked all around the 'Breck' area for housing options, and those in our price range were less then ideal," says Tim.  "But when we checked Wellington, we found the price, design, and neighborhood atmosphere we were looking for. It fees and operates like a real neighborhood that many of us in our forties and fifties remember growing up in."</p>
	<p>The neighborhood's design fosters a sense of community: welcoming front porches, streets made for walking, cottages that face one another across common greens (or whites, as is usually the case from October to May).  Efficient planning garnered the Environmental Protection Agency's National Award for Smart Growth Achievement in 2002.  (See "Smart Growth- An antidote to Sprawl," at right).  The second phase, which will add as many as 160 more homes, broke ground in spring 2006.</p><br/>
	<p>Ty Cortright, a resident whose appendicitis brought three of his neighbors to his door bearing food, explains what he loves best about Wellington: "in some of the communities we've lived in up here, it seems like you may know people's names - but no ones brings you cookies. Here, people see and treat one another as neighbors."</p><br />

	  </div>	
	</div>	
	<div id="footer">
		<img src="images/footer_bar.jpg" alt="footerbar"><br />
		<div id="copyright"> Copyright 2008 Poplar Wellington, LLC   |   All Rights Reserved   |   Web site by: <a href="http://www.tridig.com" target="_blank">TriDigital, Inc. </a><br>
        <a href="contact_sales.php">Contact Us</a> |   970-453-5303   | <a href="privacyStatement.php">Privacy Statement</a></div>
	</div>
</div>	
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-8846986-1");
pageTracker._trackPageview();
} catch(err) {}</script></body>
</html>
