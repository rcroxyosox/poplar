<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> -->

<!--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
-->
<!-- KB - www.tridig.com created 03.08.2006 -->
<!-- NMP - www.tridig.com - last modified 10.21.2008 -->

<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/home.css" />
<link rel="stylesheet" href="css/menus.css" />
<link rel="stylesheet" href="css/index_page.css" />




<style>
#callouts{
	padding: 0px;
	list-style-type: none;
	list-style: none;
	margin-top: 15px;
}
#callouts li{
	float: left;
	background-image: url(../images/cottage.jpg);
	background-repeat: no-repeat;
	background-position: center center;
	margin-left: 2px;
	width: 207px;
	height: 110px;
}
#callouts li a{
	display: block;
	text-decoration: none;
	color: #666;
	font-size: 13px;
	padding-left: 70px;
	height: 110px;
	padding-top: 25px;
}
#callouts li a:hover{
	color: #000;
}
</style>

<script type="text/JavaScript" src="js/default.js"></script>
<script type="text/JavaScript" src="js/menus.js"></script>

<script type="text/javascript" src="lib/jquery-1.3.2.js"></script>
<script type="text/javascript" src="lib/jquery.cycle.all.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$('#tick').cycle({ 
    fx:    'fade',
	speed: 2000,
	timeout: 10000, 
    pause:  1
	});
});
</script>

</head>
<body onLoad="MM_preloadImages('images/topNav_home-over.gif','images/topNav_slideShow-over.gif','images/topNav_explore-over.gif','images/topNav_community-over.gif','images/topNav_pressAwards-over.gif','images/topNav_contact-over.gif')">
<a href="#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="images/spacer.gif" width="800" height="10" border="0"></a>
<div align="center" id="topNav">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><a href="index.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_home','','images/topNav_home-over.gif',1); buttonMouseover(event, 'menuClear')"><img src="images/topNav_home.gif" alt="Home" name="topNav_home" width="66" height="50" border="0"></a></td>
      <td><a href="slideShow.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_slideShow','','images/topNav_slideShow-over.gif',1); buttonMouseover(event, 'slideShow')"><img src="images/topNav_slideShow.gif" alt="Slide Show" name="topNav_slideShow" width="120" height="50" border="0"></a></td>
      <td><a href="explore_overview.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_explore','','images/topNav_explore-over.gif',1); buttonMouseover(event, 'explore')"><img src="images/topNav_explore.gif" alt="Explore" name="topNav_explore" width="96" height="50" border="0" id="topNav_explore"></a></td>
      <td><a href="homes_forSale.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_homes','','images/topNav_homes-over.gif',1); buttonMouseover(event, 'homes')"><img src="images/topNav_homes.gif" alt="Homes" name="topNav_homes" width="82" height="50" border="0" id="topNav_homes"></a></td>
      <td><a href="community_transportation.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_community','','images/topNav_community-over.gif',1); buttonMouseover(event, 'community')"><img src="images/topNav_community.gif" alt="Community" name="topNav_community" width="124" height="50" border="0"></a></td>
      <td><a href="awardsPress_print.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_pressAwards','','images/topNav_pressAwards-over.gif',1); buttonMouseover(event, 'awardsPress')"><img src="images/topNav_pressAwards.gif" alt="Press and Awards" name="topNav_pressAwards" width="147" height="50" border="0"></a></td>
      <td><a href="contact_sales.php" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_contact','','images/topNav_contact-over.gif',1); buttonMouseover(event, 'contactUs')"><img src="images/topNav_contact.gif" alt="Contact" name="topNav_contact" width="103" height="50" border="0"></a></td>
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
<a class="menuItem" href="awardsPress_residentComments.php">Resident Comments</a>
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
</div>

<!-- End Menus -->


<div align="center" id="main">
  
  <table width="798" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="637" valign="top">
				<div><img src="images/full_logo.jpg" alt="BGP" width="635" height="216" border="0"></div>
	  </td>
      
      
      <td style="overflow:hidden" width="161" align="left" valign="top" >
				<div id="home_right_menu">
					<div id="home_right_menu_top"></div>
					
                    <div id="inside_the_box">
                    
                 <!--   	<ul style="margin-bottom: 6px; line-height: 1.6;">
							<li style="margin-top: 10px;"> <a href="homes_financing.php">Mortgages</a> are still available, despite talk of a credit crunch.</li>
							<li style="margin-top: 8px;"> <a href="pdf/080319_WarrensStation.pdf">Check out</a> our proposal for a New Neighborhood in Keystone, &quot;Warren�s Station&quot;.</li>
                            
							</ul>  -->
					<div style="height: 188px; overflow:hidden;">
			<?php
				
				
				require_once('magpierss/rss_fetch.inc');
				
				//number to select
				$num_items = 3; 			
			
				//set the blog's URL	
				$rss = fetch_rss("http://wellingtonbreck.wordpress.com/feed/");  
							
				//The array_slice() function returns selected parts of an array
				$items = array_slice($rss->items, 0, $num_items);
				
				//set type of list
				echo "<ul>";
				
				//iterate through the lists elements
				foreach ($items as $item) {
					
					//set the href variable
					$href = $item['link'];
					//set the title variable
					$title = $item['title'];
					
					echo "<li style=\"margin-top: 10px; line-height: 1.0; \" >$title</li>";
					echo "<p class=\"more\"><a href=\"" . $href . "\" target=\"_blank\">More... <img src=\"images/poplarhouse_blue_arrow.gif\" border=\"0\" width=\"5\" 
					alt=\"More...\"></a></p>";
				}
				echo "</ul>";
				?>
				</div>
				<table width="140"><tr><td width="139" height="22">
				<div id="rss_feed">
                  
                  <a href="http://wellingtonbreck.wordpress.com/feed/">RSS</a>
                  <a href="http://wellingtonbreck.wordpress.com/feed/"><img border="0" width="20" alt="Subscribe to Poplar House News" src="images/poplarhouse_rssimage.jpg" /></a>
                  </div> 
				</td></tr></table>
				</div>
								<div id="home_right_menu_btm"></div>
</div>
	  </td></tr>
			
                
<tr><td width="635" valign="top">	
                            <div id="home_text">The Wellington Neighborhood has received more national recognition than perhaps any other Colorado
neighborhood. As a <a href="awardsPress_print_real_town.php">Denver Post</a> editorial lauded, the Wellington Neighborhood,"<em>...has the flavor and
charm of a Victorian village, with porches, gables and fretwork, picket fences, narrow streets and alleys
</em>"</div> 
                            <div>
								<ul id="callouts">
                                	<li><a href="http://poplarhouse.com/remodel/cottage_living.php">Something precious<br>
                                	  can be found on an old<br>
                               	    mining site</a></li>
                                	<li style="background-image: url(../images/metrobg.jpg)"><a href="http://poplarhouse.com/remodel/awardsPress_print_100_best.php">Best affordable housing<br>
                               	    on the slopes</a></li>
                                    <li style="background-image: url(../images/sunsetbg.jpg)"><a href="http://poplarhouse.com/remodel/awardsPress_print_sunset_1.php">Artful planning with a sense of history</a></li>
                              </ul>                      
                            </div>
                  </td>  
            
                    
           <td>         
                    
                
                
                
        <!--    <a href="community_links.php"><img src="images/Surf_brekenridge.jpg" width="150" height="100" border="0"></a>   -->
                <table width="136" height="78"><tr><td width="136" valign="top">
                <div id="video_image_box">
 
 <a href="http://poplarhouse.blip.tv/"><img src="images/home_bliptv_thumb1.jpg"  alt="Brekenridge Colorado" border="0" align="baseline"> 
  
              	
<!-- <div id="tick" style="overflow: hidden;">
  <a href="http://poplarhouse.blip.tv/"><img src="images/home_bliptv_thumb1.jpg"  alt="Brekenridge Colorado" border="0" align="baseline">
  <a href="http://poplarhouse.blip.tv/"><img src="images/home_bliptv_thumb2.jpg"  alt="Brekenridge Colorado" border="0" align="baseline">
  <a href="http://poplarhouse.blip.tv/"><img src="images/home_bliptv_thumb3.jpg"  alt="Brekenridge Colorado" border="0" align="baseline">
  <a href="http://poplarhouse.blip.tv/"><img src="images/home_bliptv_thumb4.jpg"  alt="Brekenridge Colorado" border="0" align="baseline">

</div>
-->
                	
                	
<!--                	<img src="images/bliptv-icon.png" width="145" height="77" hspace=" "  border="0" align="baseline" ></a> -->

</div>
                <div id="text_under_video_image_box" style="margin-top: 0px;">
								<a href="http://poplarhouse.blip.tv/">
                �HGTV: &nbsp;From an old gold mine springs a 14 carat community...�
                </a>
                </div>  
				</td></tr></table>
	</td>
  
</td></tr>       
				
				</td>
    </tr>
	</table>
 <?php   
	require_once('lib/footer.php');   
 	?>
        
          </body>
</html>
