#!/usr/bin/perl5
# A PERL SCRIPT written by Sam Matson
#	that accompanies mortgage.pl

sub PrintPageHeader {
  $top1=<<_EOM_;
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<!--  SLS - www.tridig.com mod 3.29.99
      SAM - www.tridig.com mod 4-6-99
      SLS - www.tridig.com mod 4.12.99
      SAM - www.tridig.com mod 4.20.99
      SLS - www.tridig.com mod 5.1.99
	  SW  - www.tridig.com modified 10.18.2001
//-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" />
<html>
<head>

<title>The Wellington Neighborhood in Breckenridge, Colorado - Finance Worksheet</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<link rel="stylesheet" href="/css/default.css" />
<link rel="stylesheet" href="/css/home.css" />
<link rel="stylesheet" href="/css/menus.css" />

<script type="text/JavaScript" src="/js/default.js"></script>
<script type="text/JavaScript" src="/js/menus.js"></script>

</head>
<body onLoad="MM_preloadImages('/images/topNav_home-over.gif','/images/topNav_slideShow-over.gif','/images/topNav_explore-over.gif','/images/topNav_community-over.gif','/images/topNav_pressAwards-over.gif','/images/topNav_contact-over.gif')">
<a href="/#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="/images/spacer.gif" width="800" height="10" border="0"></a>
<div align="center" id="topNav">
  <table width="800" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><a href="/index.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_home','','/images/topNav_home-over.gif',1); buttonMouseover(event, 'menuClear')"><img src="/images/topNav_home.gif" alt="Home" name="topNav_home" width="66" height="50" border="0"></a></td>
      <td><a href="/slideShow.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_slideShow','','/images/topNav_slideShow-over.gif',1); buttonMouseover(event, 'slideShow')"><img src="/images/topNav_slideShow.gif" alt="Slide Show" name="topNav_slideShow" width="120" height="50" border="0"></a></td>
      <td><a href="/explore_overview.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_explore','','/images/topNav_explore-over.gif',1); buttonMouseover(event, 'explore')"><img src="/images/topNav_explore.gif" alt="Explore" name="topNav_explore" width="96" height="50" border="0" id="topNav_explore"></a></td>
      <td><a href="/homes_forSale.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_homes','','/images/topNav_homes-over.gif',1); buttonMouseover(event, 'homes')"><img src="/images/topNav_homes.gif" alt="Homes" name="topNav_homes" width="82" height="50" border="0" id="topNav_homes"></a></td>
      <td><a href="/community_transportation.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_community','','/images/topNav_community-over.gif',1); buttonMouseover(event, 'community')"><img src="/images/topNav_community.gif" alt="Community" name="topNav_community" width="124" height="50" border="0"></a></td>
      <td><a href="/awardsPress_print.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_pressAwards','','/images/topNav_pressAwards-over.gif',1); buttonMouseover(event, 'awardsPress')"><img src="/images/topNav_pressAwards.gif" alt="Press and Awards" name="topNav_pressAwards" width="147" height="50" border="0"></a></td>
      <td><a href="/contact_sales.htm" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('topNav_contact','','/images/topNav_contact-over.gif',1); buttonMouseover(event, 'contactUs')"><img src="/images/topNav_contact.gif" alt="Contact" name="topNav_contact" width="103" height="50" border="0"></a></td>
      <td><a href="/#" onMouseOver="buttonMouseover(event, 'menuClear');"><img src="/images/topNav_tree.gif" alt="Tree" name="tree" width="62" height="50" id="tree" border="0"></a></td>
    </tr>
  </table>
</div>

<!-- Menus -->
<div id="menuClear" class="menu" style="display:none;"></div>
<div id="slideShow" class="menu" style="display:none;"></div>

<div id="explore" class="menu">
<a class="menuItem" href="/explore_overview.htm">Overview</a>
<a class="menuItem" href="/explore_vision.htm">Vision</a>
<a class="menuItem" href="/explore_patterns.htm">Patterns</a>
<a class="menuItem" href="/explore_masterPlan.htm">Master Plan</a>
<a class="menuItem" href="/explore_locationMaps.htm">Location Maps</a>
<a class="menuItem" href="/explore_history.htm">History</a>
<a class="menuItem" href="/explore_neighborhoodFounders.htm">Neighborhood Founders</a>
</div>

<div id="homes" class="menu"
     onmouseover="menuMouseover(event)">
<a class="menuItem" href="/homes_forSale.htm">For Sale</a>
<a class="menuItem" href="/homes_catalog.htm"
   onclick="return false;"
   onmouseover="menuItemMouseover(event, 'homes_2');"
><span class="menuItemText">Home Catalog</span><span class="menuItemArrow">&gt;</span></a>
<a class="menuItem" href="/homes_financing.htm">Financing</a>
<a class="menuItem" href="/homes_warranty.htm">Warranty</a>
<a class="menuItem" href="/homes_brokers.htm">Brokers</a>
</div>

<div id="community" class="menu">
<a class="menuItem" href="/community_transportation.htm">Transportation</a>
<a class="menuItem" href="/community_technology.htm">Technology</a>
<a class="menuItem" href="/community_neighborhoodGovernance.htm">Neighborhood Governance</a>
<a class="menuItem" href="/community_historicMining.htm">Historic Mining Activities</a>
<a class="menuItem" href="/community_deedRestriction.htm">"Local Price" Deed Restriction</a>
<a class="menuItem" href="/community_links.htm">Links</a>
</div>

<div id="awardsPress" class="menu">
<a class="menuItem" href="/awardsPress_print.htm">Print</a>
<a class="menuItem" href="/awardsPress_broadcast.htm">Broadcast</a>
<a class="menuItem" href="/awardsPress_residentComments.htm">Resident Comments</a>
</div>

<div id="contactUs" class="menu">
<a class="menuItem" href="/contact_sales.htm">Sales</a>
<a class="menuItem" href="/contact_warranty.htm">Warranty</a>
<a class="menuItem" href="/contact_builder.htm">Builder</a>
</div>


<div id="homes_2" class="menu"
     onmouseover="menuMouseover(event)">
<a class="menuItem" href="/homes_catalog_buckthorn.htm">Buckthorn</a>
<a class="menuItem" href="/homes_catalog_mountainAsh.htm">Mountain Ash</a>
<a class="menuItem" href="/homes_catalog_oak.htm">Oak</a>
<a class="menuItem" href="/homes_catalog_cottonwood.htm">Cottonwood</a>
<a class="menuItem" href="/homes_catalog_juniper.htm">Juniper</a>
<a class="menuItem" href="/homes_catalog_hawthorne.htm">Hawthorne</a>
<a class="menuItem" href="/homes_catalog_ponderosa.htm">Ponderosa</a>
</div>

<!-- End Menus -->
<div><img src="/images/mtn_top_800.jpg" alt="mountains" width="800" height="67"></div>
<div id="main">
  <div id="left_menu">
    <div id="left_hdr"><img src="/images/left_hdr_blank.gif" alt="bird" width="88" height="20"></div>
    <div><img src="/images/corner_bird.gif" alt="bird" width="113" height="83"></div>
  </div>
  <div id="content">
    <div id="content_header"><span id="content_header_underline">Finance Worksheet</span></div>
    <div id="content_text">
      <FORM action="/poplar-cgi-bin/mortgage2.pl" method="post" name=mortgage2 id="mortgage2">
			<TABLE WIDTH=500 ALIGN=LEFT BORDER=0>
			<TR>
				 <TD WIDTH=43% ALIGN=LEFT VALIGN=TOP COLSPAN=1>

					<table width=205 border=1 align=left>
					<tr><td colspan=2 bgcolor="#6699ff"><b>Assumptions</b></td></tr>
					<tr><td>Annual Income</td><td>\$<input type="text" name="salary" value="$income" maxlength=6 size=6></td></tr>
					<tr><td>Down Payment</td>
						<td><input type="text" name="downpayment" value="$downpayment" maxlength=2 size=2>%</td></tr>
					<tr><td>Interest Rate</td>

						<td><input type="text" name="interest" value="$interest" maxlength=4 size=4>\%</td></tr>
					<tr><td>Amortization</td>
						<td><input type="text" name="amortization" value="$duration" maxlength=2 size=2>years
						 	<!-- $250 --> <input type="hidden" name="fees" value="200"></td></tr>
					</table></TD>
			
				 <TD WIDTH=57% ALIGN=LEFT VALIGN=TOP COLSPAN=1> 
					<table width=260 border=1 align=left>
					<tr><td colspan=2 bgcolor="#6699FF"><b>Affordability Guide</b></td></tr>

					<tr><td>Down Payment</td><td><b>$downpayment\%</b></td></tr>
            
_EOM_
# End of First Assignment

  $top2=<<_EOM_;
			</table></TD>
						</TR>
						<TR>
							<TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1>
								<input type="submit" value="Calculate What I Can Afford"><br>
								<!-- input type="reset" value="Reset Form" --></TD>
			
								
							<TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1>
								*Monthly Expenses includes assumed monthly taxes, insurance, maintenance &amp; HOA fees.</TD>
						</TR>
						</TABLE></FORM>
						<p>This calculator is provided in the hope that it will be useful, but WITHOUT ANY WARRANTY<br>
						 without even the implied warranty of MERCHANTABILIY or FITNESS FOR A PARTICULAR PURPOSE.<br>The calculation does not include the cost of private mortgage insurance (PMI) that may be an expense to the Buyer who puts less then 20% down.</p>
			    </div>
	</div>
	<div id="footer"> <img src="../images/footer_bar.jpg" alt="footerbar" width="799" height="5"><br />
		<div id="copyright"> 
		  <p>Copyright 2006 Poplar Wellington, LLC   |   All Rights Reserved   |   Web site by: <a href="http://www.tridig.com" target="_blank">TriDigital, Inc. </a><br>
		    <a href="../contact_sales.htm">Contact Us</a>   |   970-453-5303   | <a href="privacyStatement.htm">Privacy Statement</a></p>
		</div>
			</div>
			</div>
			</body>
			</html>



_EOM_

print $top1;

printf ("<tr><td>Monthly Mortgage Payment</td><td><b>\$%s</b></td></tr>\n",commify(int($payment)));
printf("<tr><td>Monthly Expenses*</td><td><b>\$%s</b></td></tr>\n",commify(int($fees)));
printf("<tr><td>Total Monthly Cost </td><td><b>\$%s</b></td></tr>\n",commify(int($totalpay)));
printf("<tr><td>Loan Amount</td><td><b>\$%s</b></td></tr>\n",commify(int($Po)));
printf("<tr><td><b>Affordable Purchase Price</b></td><td><b>\$%s</b></td></tr>\n",commify(int($value)));

print $top2;

}


1; #return true
