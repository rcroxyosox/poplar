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
//-->

<HTML>
<HEAD>

<TITLE>Financing Information for Wellington Neighborhood</TITLE>
<META NAME="AUTHOR" CONTENT="SLS, TriDigital Consulting">
<META NAME="description" CONTENT="Wellington Neighborhood in Breckenridge, CO provides homeownership opportunities in a traditional neighborhood with a sense of community and place.">
<META NAME="keywords" CONTENT="poplar house wellington neighborhood real estate affordable housing breckenridge colorado summit county catalog homebuyers homeownership employee local home housing resident residental residence wolff lyon architects brynn g

rey planning commission ski mountain views peak 7 8 resort community historical old town rocky mountain region new urbanism open space family dogs kids">

<SCRIPT LANGUAGE="JavaScript">


<!-- Hide JavaScript

// mouseover functions
// check for image object

        var OK = 0;
        if (document.images) OK =1;

// fetch images to browser cache
        if (OK) { 
                normal = new MakeArray(8);
                over = new MakeArray(8);
                blurb = new MakeArray(8);

		normal[1].src = "http://www.poplarhouse.com/images/nav_search.gif";
		normal[2].src = "http://www.poplarhouse.com/images/nav_neighborhood.gif";
		normal[3].src = "http://www.poplarhouse.com/images/nav_catalog.gif";
		normal[4].src = "http://www.poplarhouse.com/images/nav_financing.gif";
		normal[5].src = "http://www.poplarhouse.com/images/nav_homebuyers.gif";
		normal[6].src = "http://www.poplarhouse.com/images/nav_know.gif";
		normal[7].src = "http://www.poplarhouse.com/images/nav_home.gif";
		 		
		over[1].src = "http://www.poplarhouse.com/images/nav_search1.gif";
		over[2].src = "http://www.poplarhouse.com/images/nav_neighborhood1.gif";
		over[3].src = "http://www.poplarhouse.com/images/nav_catalog1.gif";
		over[4].src = "http://www.poplarhouse.com/images/nav_financing1.gif";
		over[5].src = "http://www.poplarhouse.com/images/nav_homebuyers1.gif";
		over[6].src = "http://www.poplarhouse.com/images/nav_know1.gif";
		over[7].src = "http://www.poplarhouse.com/images/nav_home1.gif";

		blurb[1] = "Search Site";
		blurb[2] = "Wellington Neighborhood";
		blurb[3] = "Poplar House Catalog";   
		blurb[4] = "Financing";
		blurb[5] = "First Time Homebuyers";
		blurb[6] = "You Should Know";
		blurb[7] = "Home";
	}
		
	function MakeArray(n) {	
		this.length = n;		
		for (var i = 1; i<=n; i++) {
			this[i] = new Image();
		}
			return this;
	}

	function msover(num) {
		if ( OK) { 
			loadImage = "Image" + num;
			document.images[loadImage].src = over[num].src;
			window.status = blurb[num];
		}
	}

	function msout(num) {	
		if ( OK) {
			loadImage = "Image" + num;
			document.images[loadImage].src = normal[num].src;
			window.status = " ";
        } 
	}

// end JavaScript -->

</SCRIPT>

</HEAD>

<BODY BGCOLOR=FFFFFF TEXT=000000 LINK=669933 VLINK=000000  ALINK=333333 LEFTMARGIN=0 TOPMARGIN=0 >

<!-- basefont face not supported on Netscape 4, hence Times 3 default -->
<BASEFONT SIZE=3 FACE="Times, Arial, Verdana">

<FORM name=mortgage action="/poplar-cgi-bin/mortgage.pl" method="post">

<TABLE WIDTH=600 CELLPADDING=0 CELLSPACING=0 ALIGN=CENTER BORDER=0 >
<!-- set 5 columns, some browsers need table rows initialized -->       
<TR>
		<TD WIDTH=25  BGCOLOR=FFFFFF > <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=25  HEIGHT=1 BORDER=0 ></TD>
		<TD WIDTH=125 BGCOLOR=FFFFFF > <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=125 HEIGHT=1 BORDER=0 ></TD>
		<TD WIDTH=255 BGCOLOR=FFFFFF > <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=255 HEIGHT=1 BORDER=0 ></TD>
		<TD WIDTH=180 BGCOLOR=FFFFFF > <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=180 HEIGHT=1 BORDER=0 ></TD>
		<TD WIDTH=25  BGCOLOR=FFFFFF > <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=25  HEIGHT=1 BORDER=0 ></TD>
</TR>

<!-- main navigation section -->
<TR>
	<TD WIDTH=100% ALIGN=CENTER VALIGN=TOP COLSPAN=5 NOWRAP >
		<A HREF="http://www.poplarhouse.com/search.htm" onMouseOver="msover(1); return true" onMouseOut="msout(1)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_search.gif" ALT="Search" WIDTH=51 HEIGHT=50 NAME="Image1" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/neighborhood.htm" onMouseOver="msover(2); return true" onMouseOut="msout(2)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_neighborhood.gif" ALT="Wellington" WIDTH=100 HEIGHT=50 NAME="Image2" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/catalog.htm" onMouseOver="msover(3); return true" onMouseOut="msout(3)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_catalog.gif" ALT="Catalog" WIDTH=100 HEIGHT=50 NAME="Image3" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/financing.htm" onMouseOver="msover(4); return true" onMouseOut="msout(4)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_financing.gif" ALT="Financing"  WIDTH=100 HEIGHT=50 NAME="Image4" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/homebuyers.html" onMouseOver="msover(5); return true" onMouseOut="msout(5)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_homebuyers.gif" ALT="Homebuyers" WIDTH=100 HEIGHT=50 NAME="Image5" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/know.html" onMouseOver="msover(6); return true" onMouseOut="msout(6)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_know.gif" ALT="Know" WIDTH=80 HEIGHT=50 NAME="Image6" BORDER=0></A>
		<A HREF="http://www.poplarhouse.com/index.html" onMouseOver="msover(7); return true" onMouseOut="msout(7)">
		<IMG SRC="http://www.poplarhouse.com/images/nav_home.gif" ALT="Home" WIDTH=51 HEIGHT=50 NAME="Image7" border=0></A></TD>
</TR>
 
<TR>
		<TD WIDTH=100% VALIGN=TOP ALIGN=CENTER COLSPAN=5 > 
			 <IMG SRC="http://www.poplarhouse.com/images/mtn_top.jpg" ALT="Mountain Top" WIDTH=600 HEIGHT=50 BORDER=0 ></TD>
</TR>

<TR>
		<TD WIDTH=100% COLSPAN=5 ><IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=600 HEIGHT=15 BORDER=0 ></TD>
</TR>

<!-- sub navigation section -->
<TR>
		<TD WIDTH=150 VALIGN=TOP ALIGN=LEFT COLSPAN=2 >  
			<A HREF="/financing.htm"><IMG SRC="http://www.poplarhouse.com/images/subtitle_financing.gif" ALT="Financing" WIDTH=115 HEIGHT=30 BORDER=0 ALIGN=TOP ></A></TD>
</TR>

<TR>
		 <TD WIDTH=150 VALIGN=TOP ALIGN=LEFT COLSPAN=2 ROWSPAN=4 >  
                <IMG SRC="http://www.poplarhouse.com/images/corner_bird.gif" ALT="Bird" WIDTH=115 HEIGHT=83 BORDER=0 ALIGN=TOP >
                <IMG SRC="http://www.poplarhouse.com/images/tgif.gif" WIDTH=150 HEIGHT=10 BORDER=0 >
		<TABLE WIDTH=150 BORDER=0 ALIGN=LEFT > 
       	<TR>			
    		<TD WIDTH=4% ALIGN=CENTER VALIGN=TOP COLSPAN=1 >
				<IMG SRC="http://www.poplarhouse.com/images/bullet_sm.gif" WIDTH=14 HEIGHT=15 ALT="-" ALIGN=MIDDLE BORDER=0 ></TD>
     		
     		<TD WIDTH=96% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
      			<FONT SIZE=-1>MORTGAGE CALCULATOR</FONT></TD>
	   	</TR>
     	<TR>			
    		<TD WIDTH=4% ALIGN=CENTER VALIGN=TOP COLSPAN=1 >
				<IMG SRC="http://www.poplarhouse.com/images/bullet_sm.gif" WIDTH=14 HEIGHT=15 ALT="-" ALIGN=MIDDLE BORDER=0 ></TD>
     		
     		<TD WIDTH=96% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
      			<FONT SIZE=-1 > 
				<A HREF="http://www.poplarhouse.com/f_credit.htm">CREDIT TROUBLE?</A></FONT></TD>
	   	</TR>
       	<TR>			
    		<TD WIDTH=4% ALIGN=CENTER VALIGN=TOP COLSPAN=1 >
				<IMG SRC="http://www.poplarhouse.com/images/bullet_sm.gif" WIDTH=14 HEIGHT=15 ALT="-" ALIGN=MIDDLE BORDER=0 ></TD>
     		
     		<TD WIDTH=96% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
      			<FONT SIZE=-1 > 
				<A HREF="http://www.poplarhouse.com/c_worksheet.htm">REGISTER</A></FONT></TD>
      	</TR>
		 <TR>			
    		<TD WIDTH=4% ALIGN=CENTER VALIGN=TOP COLSPAN=1 >
			<IMG SRC="http://www.poplarhouse.com/images/bullet_sm.gif" WIDTH=14 HEIGHT=15 ALT="-" ALIGN=MIDDLE BORDER=0 ></TD>
     		
     		<TD WIDTH=96% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
      		<FONT SIZE=-1 > 
				<A HREF="http://www.poplarhouse.com/contactform.htm">CONTACT US</A></FONT></TD>
	     </TR></TABLE></TD>
	     	
<!-- end navigation section -->

			<TD WIDTH=435 VALIGN=TOP ALIGN=LEFT COLSPAN=2 >
				<FONT SIZE=-1 >
				The following Mortgage Calculator will provide a rough guide as to what price house you can afford.
				Fill in your household salary and percentage down payment and click "Calculate What I Can Afford".
				Of course, other factors, such as monthly obligations and your credit history, will affect the final loan amount for which you qualify.</FONT></TD>

			<TD WIDTH=25 > &nbsp; </TD>
</TR>

<TR>
		<!-- rowspan 2 -->

		<TD WIDTH=435 HEIGHT=25 ALIGN=LEFT VALIGN=MIDDLE COLSPAN=2 >	<BR>
			<FONT SIZE=-1>Fill in Assumptions:</FONT></TD>
</TR>

<TR>
        <!-- rowspan 3 -->

        <TD WIDTH=435 VALIGN=TOP ALIGN=LEFT COLSPAN=2 >
                <!-- internal table for more precise layout --> 
        <TABLE WIDTH=435 BORDER=0 ALIGN=LEFT >
        <TR>
            <TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1>
			<table width=205 border=1 align=left>
				<tr><td colspan=2 bgcolor="#6699ff"><b>Assumptions</b></td></tr>
				<tr><td>Annual Income</td><td><b>\$<input type="text" name="salary" value="$income" maxlength=6 size=6></b> </td></tr>
				<tr><td>Down Payment</td>
				<td><input type="text" name="downpayment" value="5" maxlength=2 size=2>%</td></tr>
				<tr><td>Annual Interest Rate</td><td><b><input type="text" name="interest" value="$interest" maxlength=4 size=4></b>\%</td></tr>
				<tr><td>Amortization</td><td><b><input type="text" name="amortization" value="$duration" maxlength=2 size=2></b>years
												<input type="hidden" name="fees" value="250"></td></tr>
			</table></TD>
        <TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1>
					<table width=205 border=1 align=left>
					<tr><td colspan=2 bgcolor="#6699FF"><b>Affordability Guide</b></td></tr>
					<tr><td>Down Payment</td><td><b><input type="text" name="downpayment" value="$downpayment" maxlength=2 size=2> \%</b></td></tr>
            
_EOM_
# End of First Assignment

  $top2=<<_EOM_;
			</table>
		</TD>
 
        </TR>
		<TR>
				<TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
					<input type="submit" value="Calculate What I Can Afford"></TD>
				
			<TD WIDTH=50% ALIGN=LEFT VALIGN=TOP COLSPAN=1 >
				*Monthly Expenses includes assumed monthly taxes, insurance, maintenance &amp; HOA fees.</TD>
		</TR>
	</TABLE>
	</TD>
</TR>

<TR>
		<!-- rowspan 4 -->

		<TD WIDTH=435 VALIGN=TOP ALIGN=LEFT COLSPAN=2 > <BR><BR>
			<FONT SIZE=-1> 
			For additional information of various financing programs available please contact one of the lenders listed in the <A HREF="financing.htm">financing</A> section</FONT></TD>
</TR>

<!-- footer -->

<TR>
		<TD WIDTH=100% ALIGN=CENTER VALIGN=BOTTOM COLSPAN=4 > <BR>
			<FONT SIZE=-2> 
			[<A HREF="http://www.poplarhouse.com/search.htm"			onMouseOver="window.status='Search Site'; return true">Search</A>]
			[<A HREF="http://www.poplarhouse.com/neighborhood.htm"		onMouseOver="window.status='Wellington Neighborhood in Breckenridge'; return true">Wellington Neighborhood</A>]
			[<A HREF="http://www.poplarhouse.com/catalog.htm"			onMouseOver="window.status='Poplar House Catalog'; return true">Poplar House Catalog</A>] 
			[<A HREF="http://www.poplarhouse.com/financing.htm"		onMouseOver="window.status='Financing Information'; return true">Financing</A>] 
			[<A HREF="http://www.poplarhouse.com/homebuyers.htm"		onMouseOver="window.status='Information for First Time Homebuyers'; return true">First Time Homebuyers</A>] 
			[<A HREF="http://www.poplarhouse.com/know.htm"				onMouseOver="window.status='You Should Know'; return true">You Should Know</A>] 
			[<A HREF="http://www.poplarhouse.com/index.htm"			onMouseOver="window.status='- Home -'; return true">Home</A>] </FONT><BR><BR>

			<FONT SIZE=-2 COLOR=000000 ><A HREF="copyright.htm">COPYRIGHT&copy;</A> 2000 John K. Wolff, John T. Lyon and David G. O'Neil. All Rights Reserved. 
			(970) 453-5303  <A HREF="privacy.htm">Privacy Statement</A></FONT></TD>        
</TR>

</TABLE>
</FORM>
</BODY>
</HTML>


_EOM_

print $top1;

printf ("<tr><td>Monthly Mortgage Payment</td><td><b>\$%s</b></td></tr>\n",commify(int($payment)));
printf("<tr><td>Monthly Expenses*</td><td><b>\$%s</b></td></tr>\n",commify(int($fees)));
printf("<tr><td>Total Monthly Cost </td><td><b>\$%s</b></td></tr>\n",commify(int($totalpay)));
printf("<tr><td>Loan Amount</td><td><b>\$%s</b></td></tr>\n",commify(int($Po)));
printf("<tr><td>Affordable Purchase Price</td><td><b>\$%s</b></td></tr>\n",commify(int($value)));

print $top2;

}


1; #return true
