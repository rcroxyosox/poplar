<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> -->

<!--<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
-->
<!-- KB - www.tridig.com created 03.08.2006 -->
<!-- RSB - www.tridig.com - last modified 01.06.2010 -->

<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Home</title>
<?php require_once('lib/meta.php'); ?>

<link rel="stylesheet" href="css/default.css" />
<link rel="stylesheet" href="css/home.css" />
<link rel="stylesheet" href="css/menus.css" />
<link rel="icon" type="image/ico" href="images/favicon.ico" />



<script type="text/JavaScript" src="js/default.js"></script>
<script type="text/JavaScript" src="js/menus.js"></script>



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


<div align="center" id="main">
  <img src="images/tgif.gif" width="1" height="15" align="center" border="0" />
  <table width="808" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="647" valign="top" colspan="2">
				<div><img src="images/full_logo.jpg" alt="BGP" width="635" height="216" border="0"></div>
				<div id="home_text">The Wellington Neighborhood has received more national recognition than perhaps any other Colorado neighborhood. As a <a href="awardsPress_print_real_town.php">Denver Post</a> editorial lauded, the Wellington Neighborhood,"<em>...has the flavor and charm of a Victorian village, with porches, gables and fretwork, picket fences, narrow streets and alleys
and connections to the surrounding forests.</em>"</div>                            
                            
		<!--******CALLOUTS FOR MAGAZINE COVERS*******-->
        			<div>
								<ul id="callouts">
                                	<li class="cottageliving_mag">
										<a href="cottage_living.php">"Something precious<br> can be found on an<br> old mining site"<br /><br /><span class="smaller">-Cottage Living</span></a></li>
                                	<li class="metropolitanhome_mag">
										<a href="awardsPress_print_100_best.php">"Best affordable<br> housing on the<br /> slopes"<br /><br /><span class="smaller">-Metropolitan Home</span> </a></li>                                    
                                    <li class="sunset_mag">
										<a href="awardsPress_print_sunset_1.php">"Artful planning with<br /> a sense of history"<br /><br /><br /><span class="smaller">-Sunset Magazine</span></a></li>
                              </ul>                      
                            </div>
                            
		<!--******END OF CALLOUTS FOR MAGAZINE COVERS*******-->          

	  </td>
      
	  <td valign="top">
				<div id="home_right_menu">
					<div id="home_right_menu_top"></div>
					
                    <div id="inside_the_box">
                      <div style="height: 188px; overflow:hidden;">
                        <ul>
                          
                          <li style="margin-top: 7px; line-height: 1.0;" ><a href="energystar.php">ENERGY STAR&reg;, and what it means.</a></li>
                          <li style="margin-top: 7px; line-height: 1.0;" ><a href="homes_forSale.php">New Cottage Style floor plans and a DR home on the Creek!</a></li>
						  <li style="margin-top: 7px; line-height: 1.0;" ><a href="http://www.poplarhouse.com/homes_financing.php">Interest Rates are still under 5%...</a></li>
                        </ul>
                      </div>
                    </div>
								<div id="home_right_menu_btm"></div>
</div>
         
                
        <!--    <a href="community_links.php"><img src="images/Surf_brekenridge.jpg" width="150" height="100" border="0"></a>   -->
                <table width="145" height="81"><tr><td width="145" valign="top">
               <div id="video_image_box">
<a href="http://youtu.be/1XlCfqqP6C0"><img src="images/firecracker50.jpg" width="125" height="78" border="0">				</div>
                <div id="text_under_video_image_box" style="margin-top: 0px; ">
					<a href="http://youtu.be/OsVep7p-2yU"><strong>Firecracker 50</strong><br>
               		Presented by the Wellington Neighborhood

                	</a>
                </div>




               
				</td></tr></table>


	  </td></tr>
			
               
				</td>
    </tr>
	</table>
 <?php   
	require_once('lib/footer.php');   
 	?>
        
          </body>
</html>
