#!/usr/bin/perl5
# Location of perl on your server.

# © 2000 Bandley3 Software - Licensing Agreement Below Variables

# yes or no variables below must be lowercase.

# Valid Referer - prevents other sites from running your script. (yes recommended)
$vref="yes";

# Valid Referer Address (if yes to above) - your domain.
# Don't forget the .com, .net, etc. And don't include a trailing slash following .com
$vrefcom="poplarhouse.com";

# Are you using this script as a Server-Side Include?
# IMPORTANT: This must be set according to how you will be using this script.
# If set improperly, the sent mail will contain a bad link or no link at all.
$SSINC="no";

# The full URL to this script, including script name.
$THISSCRIPT="http://www.poplarhouse.com/poplar-cgi-bin/aaf.pl";

# Root path to sendmail application on your server.
$SENDMAIL="/usr/sbin/sendmail";

# Root path to aaflogit.dat and aafip.dat - no trailing slash.
$LOGPATH="/WWW/jewels/poplarhouse/cgi-bin";

# Your email address for error messages. Must have backslash BEFORE the at symbol.
$YOUREMAIL="susan\@tridig.com";

$FONTFACE="verdana";   # Separate secondary fonts by commas.
$FONTSIZE="2";
$FONTCOLOR="black";
$PAGECOLOR="white";    # Non-SSI - for form. SSI/Non SSI - for redirect page.
$VLINKC="669933";    # Visited link color for pause page failure or if auto-redirect not used.
$TITLE="Poplar House - Email This Page to a Friend";    # Non-SSI - title bar for form page. SSI - for pause page.
$HEADTEXT="Email This Page";    # Text/graphic above form.
$RETMESS="yes";    # SSI - Message upon return to sent page? Non-SSI - set to no.
$RETTEXT="<b>Page Emailed Successfully!</b>";    # SSI - return message/graphic. Non-SSI - for pause page.
$TOTEXT="Recipient's e-mail address: ";    # 'Mail To' Text/graphic.
$FROMTEXT="Your e-mail address: ";    # 'Mail From' Text/graphic.
$MAXNAME="50";    # Maximum characters in email addresses.
$MESSAGEBOX="yes";    # Do you want a message box for personal note?
$COMMTEXT="Personal Message (optional):";    # If YES above, text/graphic above message box.
$BUTTON="SEND PAGE";    # Submit Button text. Text Only.
$TABLECOLOR="#FFFFFF";    # Background color for table. - hex ok
$TBORDER="0";                     # Border around the table.
$TCELL="3";                         # Padding around elements in table.
$STACK="no";                      # Stack elements in table?
$USEAT="no";    # Time in mail cleaned up by Bandley3's ActualTime?
$timech="0";    # Hours from server. Up to +12 and -11. (No + needed, but - needed)
$ACTZONE="PT";    # Time zone text. Just text, does not affect time stamping.
$AUTORE="yes";    # Automatically redirect user back to the page they sent?
$REFRTIME="2";    # If YES above, seconds to pause. (Best results under 10)
$REFAIL="yes";    # If YES above, do you want link if redirect fails?
$DOLOG="yes";    # Log sent pages? If YES, read IMPORTANT LOG NOTE below.

# IMPORTANT NOTE FOR LAST VARIABLE -
# No quotation marks. Periods and commas ok.
# To add more links to the mail, other than the sent page link, just type a url.
# example - http://yourdomain.com/homepage.html
# TIP: If you would like carriage returns in your message, use a
# backslash and the letter n.
# example -  \n for a single return.
$MAILTEXT="\n--------\nThe Wellington Neighborhood offers a new home, on a quite street, in a traditional neighborhood, within the Breckenridge town limits. For more information, visit our web site: http:\/\/www.poplarhouse.com or call 970.453.5303.  \n\nDirections to the Wellington Neighborhood:  From the intersection of Main Street and Wellington Road in downtown Breckenridge, go east on Wellington Road 1.3 miles.  Look for the  brightly colored victorian homes on the right and you are there.";



### End Of Variables

# IMPORTANT LOG NOTE: If you will be using this script on a large number of pages, you may
# want to set this variable to NO. The script could slow down substantially if you were to try
# logging for, say, 100 pages. We suggest developers, using alot of pages, test to make sure
# the logging feature doesn't slow down your server.

# FUN NOTE: Except for the variables $MAILTEXT, $BUTTON, and $ACTZONE, where you are
# prompted to specify text messages, you may place your text within <b>bold</b> tags.
# You may also use an image tag within these same text variables. Make sure your image
# tags DO NOT contain quotation marks.  In general, it's probably best to use full URL to
# your images.
# example - <img src=http://yourdomain.com/images/sendit.jpg border=0>


#   Copyright and Licensing Agreement
#
#  Bandley3.com's Alert-A-Friend v1.0
#  UNIX (Debian Linux) tested
#  Copyright 2000 Bandley3.com
#  http://bandley3.com
#  cfs@mac.com
#
##########
#
#  Licensing Agreement
#
#  Installing this script constitutes acceptance of the licensing agreement found
#  at Bandley3.com and in the LICENSE document packaged with this script.
#  Although Alert-A-Friend is a free script, all copyright laws apply. This script is
#  not to be sold, redistributed, or repackaged in any way.
#  Bandley3.com's Alert-A-Friend is a licensed product.
#
#
##########



########## NO EDITING NECESSARY BELOW THIS POINT

print "Content-type:text/html\n\n";


########## checkreferer

sub checkreferer {

if (($vref eq "yes") && ($ENV{'HTTP_REFERER'} =~m|https?://([^/]*)$vrefcom|i)) {
     $checkref=1;
  }
elsif ($vref eq "no") {
     $checkref=1;
  }
else {  
&errorref;
}
}
##########


if (($RETMESS eq "yes") && ($SSINC eq "yes")) {

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);

     open (IPDAT, "<$LOGPATH/aafip.dat") || &error("Didn't send. Couldn't open file.<br><br>possible chmod 777 of log .dat file.");
@ipdat=<IPDAT>;
close (IPDAT);

$ieipfix="$ENV{'REMOTE_ADDR'}$mday";

for $ipdat(@ipdat) {
chomp($ipdat);
if ($ipdat eq $ieipfix) {
$iefix=1;
}
}
}

$sendit="sendit";
$senditssi="senditssi";

if (!$ENV{'QUERY_STRING'}) {

if ($SSINC eq "no") {
&ssino;
 }
else {
&ssiyes;
 }
}

elsif ($ENV{'QUERY_STRING'} eq $sendit) {
&parseform;
&sendit;
}
elsif ($ENV{'QUERY_STRING'} eq $senditssi) {
&parseform;
$FORM{'page'}=$ENV{'HTTP_REFERER'};
&sendit;
}
else {
&errorload;
}

########## ssino

sub ssino {

if ($STACK eq "yes") {

print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
print "<center><table bgcolor=\"$TABLECOLOR\" cellpadding=\"0\" cellspacing=\"0\" border=\"$TBORDER\"><td>\n";
print "<table bgcolor=\"$TABLECOLOR\" cellpadding=\"$TCELL\" cellspacing=\"0\" border=\"0\"><tr>\n";
print "<form action=\"$THISSCRIPT?sendit\" method=\"POST\">\n";
print "<td align=\"center\">\n";
print "<font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$HEADTEXT</font></td></tr><tr>\n";
print "<td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$TOTEXT</font></td></tr>\n";
print "<tr><td align=\"center\"><input type=\"text\" name=\"sendto\" size=\"30\"></td></tr>\n";
print "<tr><td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$FROMTEXT</font></td></tr>\n";
print "<tr><td align=\"center\"><input type=\"text\" name=\"sendfrom\" size=\"30\"></td></tr>\n";

if ($MESSAGEBOX eq "yes") {
print "<tr><td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$COMMTEXT</font><br>\n";
print "<textarea name=\"note\" cols=\"30\" rows=\"4\" wrap=\"virtual\"></textarea></td></tr>\n";
}

print "<tr><td align=\"center\"><input type=\"hidden\" name=\"page\" value=\"$ENV{'HTTP_REFERER'}\">\n";
print "<input type=\"submit\" value=\"$BUTTON\"></form></td></tr></table></td></table></center></body></html>\n";
exit;


}
else {

print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
print "<center><table bgcolor=\"$TABLECOLOR\" cellpadding=\"0\" cellspacing=\"0\" border=\"$TBORDER\"><td>\n";
print "<table bgcolor=\"$TABLECOLOR\" cellpadding=\"$TCELL\" cellspacing=\"0\" border=\"0\"><tr>\n";
print "<form action=\"$THISSCRIPT?sendit\" method=\"POST\">\n";
print "<td colspan=\"2\" align=\"center\">\n";
print "<font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$HEADTEXT</font></td></tr><tr>\n";
print "<td><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$TOTEXT</font></td><td><input type=\"text\" name=\"sendto\" size=\"30\"></td></tr>\n";
print "<tr><td><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$FROMTEXT</font></td><td><input type=\"text\" name=\"sendfrom\" size=\"30\"></td></tr>\n";

if ($MESSAGEBOX eq "yes") {
print "<tr><td colspan=\"2\" align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$COMMTEXT</font><br>\n";
print "<textarea name=\"note\" cols=\"30\" rows=\"4\" wrap=\"virtual\"></textarea></td></tr>\n";
}

print "<tr><td colspan=\"2\" align=\"center\"><input type=\"hidden\" name=\"page\" value=\"$ENV{'HTTP_REFERER'}\">\n";
print "<input type=\"submit\" value=\"$BUTTON\"></form></td></tr></table></td></table><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">The e-mail addresses that you supply to use this service will not be used <br>for any other purpose without your consent.</font></center></body></html>\n";
exit;
}
}

########## ssiyes

sub ssiyes {

if ($STACK eq "yes") {

print "<center><table bgcolor=\"$TABLECOLOR\" cellpadding=\"0\" cellspacing=\"0\" border=\"$TBORDER\"><td>\n";
print "<table bgcolor=\"$TABLECOLOR\" cellpadding=\"$TCELL\" cellspacing=\"0\" border=\"0\"><tr>\n";
print "<form action=\"$THISSCRIPT?senditssi\" method=\"POST\">\n";
print "<td align=\"center\">\n";
print "<font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$HEADTEXT</font></td></tr><tr>\n";
print "<td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$TOTEXT</font></td></tr>\n";
print "<tr><td align=\"center\"><input type=\"text\" name=\"sendto\" size=\"15\"></td></tr>\n";
print "<tr><td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$FROMTEXT</font></td></tr>\n";
print "<tr><td align=\"center\"><input type=\"text\" name=\"sendfrom\" size=\"15\"></td></tr>\n";

if ($MESSAGEBOX eq "yes") {
print "<tr><td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$COMMTEXT</font><br>\n";
print "<textarea name=\"note\" cols=\"20\" rows=\"4\"></textarea></td></tr>\n";
}

if ($RETMESS eq "yes") {

if ($iefix eq "1")  {
print "<tr><td align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$RETTEXT\n";
print "</font><br>\n";
print "</td></tr>\n";
}
}

print "<tr><td align=\"center\"><input type=\"hidden\" name=\"page\" value=\"$ENV{'HTTP_REFERER'}\">\n";
print "<input type=\"submit\" value=\"$BUTTON\"></form></td></tr></table></td></table></center>\n";
exit;


}
else {

print "<center><table bgcolor=\"$TABLECOLOR\" cellpadding=\"0\" cellspacing=\"0\" border=\"$TBORDER\"><td>\n";
print "<table bgcolor=\"$TABLECOLOR\" cellpadding=\"$TCELL\" cellspacing=\"0\" border=\"0\"><tr>\n";
print "<form action=\"$THISSCRIPT?senditssi\" method=\"POST\">\n";
print "<td colspan=\"2\" align=\"center\">\n";
print "<font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$HEADTEXT</font></td></tr><tr>\n";
print "<td><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$TOTEXT</font></td><td><input type=\"text\" name=\"sendto\" size=\"15\"></td></tr>\n";
print "<tr><td><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$FROMTEXT</font></td><td><input type=\"text\" name=\"sendfrom\" size=\"15\"></td></tr>\n";

if ($MESSAGEBOX eq "yes") {
print "<tr><td colspan=\"2\" align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$COMMTEXT</font><br>\n";
print "<textarea name=\"note\" cols=\"20\" rows=\"4\"></textarea></td></tr>\n";
}

if ($RETMESS eq "yes") {

if ($iefix eq "1")  {
print "<tr><td colspan=\"2\" align=\"center\"><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\">$RETTEXT\n";
print "</font><br>\n";
print "</td></tr>\n";
}
}

print "<tr><td colspan=\"2\" align=\"center\"><input type=\"hidden\" name=\"page\" value=\"$ENV{'HTTP_REFERER'}\">\n";
print "<input type=\"submit\" value=\"$BUTTON\"></form></td></tr></table></td></table></center>\n";
exit;
}
}



########## sendit

sub sendit {

&checkreferer;

    if ($FORM{'sendto'} =~ /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)|(\.$)/ ||
        $FORM{'sendto'} !~ /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/) {
&errormail("Invalid Mail To Address");
}

    if ($FORM{'sendfrom'} =~ /(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)|(\.$)/ ||
        $FORM{'sendfrom'} !~ /^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/) {
&errormail("Invalid Mail From Address");
}

$tolong=length($FORM{'sendto'});
if ($tolong > $MAXNAME) {
&errormail("Invalid Mail To Address<br><br>Too many characters.");
}
$fromlong=length($FORM{'sendfrom'});
if ($fromlong > $MAXNAME) {
&errormail("Invalid Mail From Address<br><br>Too many characters.");
}


if ($SSINC eq "yes") {
$logit=$ENV{'HTTP_REFERER'};
 }
else {
$logit=$FORM{'page'};
 }

if ($DOLOG eq "yes") {

     open (LOGDAT, "<$LOGPATH/aaflogit.dat") || &error("Didn't send. Couldn't open file.<br><br>possible chmod 777 of log .dat file.");
@logdat=<LOGDAT>;
close (LOGDAT);

foreach $logfind(@logdat) {
if ($logfind =~ m/$logit/) {
$logdoer="yes";
}
}
     open (LOGGER, ">$LOGPATH/aaflogit.dat") || &error("Didn't send. Couldn't open file.<br><br>possible chmod 777 of log .dat file");

foreach $logger(@logdat) {
chomp($logger);
@logcut=split('\|\|', $logger);

if ($logcut[0] =~ m/$logit/) {
$lognew=$logcut[1] + 1;
print LOGGER "$logcut[0]\|\|$lognew\n";
}
else{
print LOGGER "$logger\n";
}
}
if ($logdoer ne "yes") {
print LOGGER "$logit\|\|1\n";
}
close (LOGGER);

}


open(MAIL, "|$SENDMAIL -t") || &error("Didn't send");

print MAIL "To: $FORM{'sendto'}\n";
print MAIL "From: $FORM{'sendfrom'}\n";
print MAIL "Subject: $FORM{'sendfrom'} sent you a page.\n";
#print MAIL "\n$FORM{'note'}\n\n";

if ($USEAT eq "yes") {
&getnewstamp;
#print MAIL "The page below was sent on $wday $monptbac $mdaypbac, $year2bac at $hourpbac:$minbac $hourabac $ACTZONE ";
print MAIL "This page from the Wellington Neighborhood web page has been sent to you by";
print MAIL " $FORM{'sendfrom'}.\n";
print MAIL "\n$FORM{'note'}\n\n";
}
else {
$time=localtime(time);
print MAIL "This page from the Wellington Neighborhood web page has been sent to you by";
#print MAIL "The page below was sent on $time from $FORM{'sendfrom'}.\n\n";
print MAIL " $FORM{'sendfrom'}.\n";
print MAIL "\n$FORM{'note'}\n\n";
}

print MAIL "To visit page: click on the address below or copy and paste it into your browser.\n";
print MAIL "\n";
print MAIL "\t$FORM{'page'}\n\n\n";

print MAIL "$MAILTEXT\n";

close(MAIL);


if (($RETMESS eq "yes") && ($SSINC eq "yes")) {

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);

     open (IPDAT, ">$LOGPATH/aafip.dat") || &error("Didn't send. Couldn't open file.<br><br>possible chmod 777 of log .dat file.");
print IPDAT "$ENV{'REMOTE_ADDR'}$mday";
close (IPDAT);
}


if (($AUTORE eq "yes") && ($SSINC eq "yes")) {

if ($REFAIL eq "yes") {

     print "<html>\n";
     print "<head><META HTTP-EQUIV=\"Refresh\" CONTENT=\"$REFRTIME;URL=$ENV{'HTTP_REFERER'}\"></head>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>$RETTEXT<br><br>\n";
     print "<a href=\"$ENV{'HTTP_REFERER'}\">$ENV{'HTTP_REFERER'}</a>\n";
     print "</b></font></center>\n";
     print "</body></html>\n";
exit;
}
else {
     print "<html>\n";
     print "<head><META HTTP-EQUIV=\"Refresh\" CONTENT=\"$REFRTIME;URL=$ENV{'HTTP_REFERER'}\"></head>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "\n";
     print "</body></html>\n";
}
exit;
}

if (($AUTORE eq "yes") && ($SSINC eq "no")) {

if ($REFAIL eq "yes") {

     print "<html>\n";
     print "<head><META HTTP-EQUIV=\"Refresh\" CONTENT=\"$REFRTIME;URL=$FORM{'page'}\"></head>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>$RETTEXT<br><br>\n";
     print "<a href=\"$FORM{'page'}\">$FORM{'page'}</a>\n";
     print "</b></font></center>\n";
     print "</body></html>\n";
exit;
}
else {
     print "<html>\n";
     print "<head><META HTTP-EQUIV=\"Refresh\" CONTENT=\"$REFRTIME;URL=$FORM{'page'}\"></head>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "\n";
     print "</body></html>\n";
}
exit;
}

if ($SSINC eq "yes") {

     print "<html>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>$RETTEXT<br><br>\n";
     print "<a href=\"$ENV{'HTTP_REFERER'}\">$ENV{'HTTP_REFERER'}</a>\n";
     print "</b></font></center>\n";
     print "</body></html>\n";
exit;
}
else {
     print "<html>\n";
     print "<title>$TITLE</title>\n";
     print "<body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>$RETTEXT<br><br>\n";
     print "<a href=\"$FORM{'page'}\">$FORM{'page'}</a>\n";
     print "</b></font></center>\n";
     print "</body></html>\n";
}

exit;
}

##########parseform

sub parseform {
 
read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
@pairs = split(/&/, $buffer);
foreach $pair (@pairs) {
($key, $value) = split(/=/, $pair);
$key =~ tr/+/ /;
$key =~s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
$value =~ tr/+/ /;
$value =~s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
$value =~s/<!--(.|\n)*-->//g;
$FORM{$key} = $value;
}
}
1;

##########error

sub error {

     print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>Can't send.\n";
     print "<br><br>Report this error to <a href=\"mailto:$YOUREMAIL?subject=$THISSCRIPT - $time - $_[0]\">$YOUREMAIL</a>\n";
     print "<br><br>$_[0]</b></font></center>\n";
     print "</body></html>\n";

exit;
  }

##########errorref

sub errorref {

     print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>This script cannot be called from other sites.\n";
     print "<br><br>Invalid Referer.\n";
     print "</b></font></center>\n";
     print "</body></html>\n";

exit;
  }

##########errormail

sub errormail {

     print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>Can't send mail.\n";
     print "<br><br>$_[0]<br><br>\n";
     print "<form><INPUT TYPE=\"Button\" VALUE=\"Back\" onClick=\"history.back()\"></form>\n";
     print "</b></font></center>\n";
     print "</body></html>\n";

exit;
  }

##########errorload

sub errorload {

     print "<html><title>$TITLE</title><body bgcolor=\"$PAGECOLOR\" vlink=\"$VLINKC\">\n";
     print "<center><font face=\"$FONTFACE\" size=\"$FONTSIZE\" color=\"$FONTCOLOR\"><b>\n";
     print "<br><br>Invalid call to this script.\n";
     print "</b></font></center>\n";
     print "</body></html>\n";

exit;
  }

########## uactualtime start

##########getnewstamp

sub getnewstamp {


############################ SERVERTIME

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime (time);

$min=sprintf ("%02d", $min);
$sec=sprintf ("%02d", $sec);

$year2=$year + 1900;
$monp=$mon +1;


########## INCREMENT SERVERTIME

$hourmov=$hour + $timech;

############################ DAILY ROLLOVERS


if ($hourmov >= 24) {
$mdayp=$mday +1;
$moveplus="yes";
}
elsif ($hourmov < 0) {
$mdayp=$mday -1;
$moveminus="yes";
}
else {
$mdayp=$mday;
}


########## DEFINE LEAPYEARS


@feb=(2004, 2008, 2012, 2016, 2020, 2024, 2028, 2032, 2036, 2040, 2044, 2048, 2052, 2056, 2060, 2064, 2068, 2072, 2076, 2080, 2084, 2088, 2092, 2096);


########## MONTH/DAY/YEAR/WEEKDAY ROLLOVERS GET DEFINED


if ($moveminus eq "yes") {

 if ($wday eq "1") {
 $wday="Sunday"
 }
 if ($wday eq "2") {
 $wday="Monday"
 }
 if ($wday eq "3") {
 $wday="Tuesday"
 }
 if ($wday eq "4") {
 $wday="Wednesday"
 }
 if ($wday eq "5") {
 $wday="Thursday"
 }
 if ($wday eq "6") {
 $wday="Friday"
 }
 if ($wday eq "0") {
 $wday="Saturday"
 }

   if ($mdayp eq "0") {

     if ($monp eq "1") {
     $monp=12;
     $mdayp=31;
     $year2=$year2 -1;
     }
     elsif ($monp eq "2") {
     $monp=1;
     $mdayp=31;
     }
     elsif ($monp eq "3") {
          $monp=2;
          $mdayp=28;

          foreach $leapyear (@feb) {
          if ($year2 eq $leapyear) {
          $monp=2;
          $mdayp=29;
          }
         }
     }
     elsif ($monp eq "4") {
     $monp=3;
     $mdayp=31;
     }
     elsif ($monp eq "5") {
     $monp=4;
     $mdayp=30;
     }
     elsif ($monp eq "6") {
     $monp=5;
     $mdayp=31;
     }
     elsif ($monp eq "7") {
     $monp=6;
     $mdayp=30;
     }
     elsif ($monp eq "8") {
     $monp=7;
     $mdayp=31;
     }
     elsif ($monp eq "9") {
     $monp=8;
     $mdayp=31;
     }
     elsif ($monp eq "10") {
     $monp=9;
     $mdayp=30;
     }
     elsif ($monp eq "11") {
     $monp=10;
     $mdayp=31;
     }
     elsif ($monp eq "12") {
     $monp=11;
     $mdayp=30;
     }

 }
}

if ($moveplus eq "yes") {

 if ($wday eq "1") {
 $wday="Tuesday"
 }
 if ($wday eq "2") {
 $wday="Wednesday"
 }
 if ($wday eq "3") {
 $wday="Thursday"
 }
 if ($wday eq "4") {
 $wday="Friday"
 }
 if ($wday eq "5") {
 $wday="Saturday"
 }
 if ($wday eq "6") {
 $wday="Sunday"
 }
 if ($wday eq "0") {
 $wday="Monday"
 }

     if (($monp eq "1") && ($mdayp eq "32")) {
     $monp=2;
     $mdayp=1;
     }
     if (($monp eq "2") && ($mdayp eq "30")) {
     $monp=3;
     $mdayp=1;
     }
     if (($monp eq "2") && ($mdayp eq "29")) {
     $monp=3;
     $mdayp=1;

          foreach $leapyear (@feb) {
          if ($year2 eq $leapyear) {
          $monp=2;
          $mdayp=29;
          }
         }

     }
     if (($monp eq "3") && ($mdayp eq "32")) {
     $monp=4;
     $mdayp=1;
     }
     if (($monp eq "4") && ($mdayp eq "31")) {
     $monp=5;
     $mdayp=1;
     }
     if (($monp eq "5") && ($mdayp eq "32")) {
     $monp=6;
     $mdayp=1;
     }
     if (($monp eq "6") && ($mdayp eq "31")) {
     $monp=7;
     $mdayp=1;
     }
     if (($monp eq "7") && ($mdayp eq "32")) {
     $monp=8;
     $mdayp=1;
     }
     if (($monp eq "8") && ($mdayp eq "32")) {
     $monp=9;
     $mdayp=1;
     }
     if (($monp eq "9") && ($mdayp eq "31")) {
     $monp=10;
     $mdayp=1;
     }
     if (($monp eq "10") && ($mdayp eq "32")) {
     $monp=11;
     $mdayp=1;
     }
     if (($monp eq "11") && ($mdayp eq "31")) {
     $monp=12;
     $mdayp=1;
     }
     if (($monp eq "12") && ($mdayp eq "32")) {
     $monp=1;
     $mdayp=1;
     $year2=$year2 +1;
     }
 }

############################ INCREMENTED TIME DEFINED


if ($hour eq "0") {
$hourz=24;
}
else {
$hourz=$hour;
}

$houry=$hourz + $timech;


if ($houry eq "0") {
$hourp=12;
$houra="am";
}

elsif ($houry eq "24") {
$hourp=12;
$houra="am";
}

elsif ($houry eq "12") {
$hourp=12;
$houra="pm";
}

elsif ($houry < 0) {
$hourp=$houry + 24;
}

elsif (($houry > 0) && ($houry < 12)) {
$hourp=$houry;
$houra="am";
}

elsif (($houry > 12) && ($houry < 24)) {
$hourp=$houry;
}

elsif ($houry > 24) {
$hourp=$houry - 24;
$houra="am";
}

     if ($hourp eq "13") {
     $hourp=1;
     $houra="pm";
     }
     elsif ($hourp eq "14") {
     $hourp=2;
     $houra="pm";
     }
     elsif ($hourp eq "15") {
     $hourp=3;
     $houra="pm";
     }
     elsif ($hourp eq "16") {
     $hourp=4;
     $houra="pm";
     }
     elsif ($hourp eq "17") {
     $hourp=5;
     $houra="pm";
     }
     elsif ($hourp eq "18") {
     $hourp=6;
     $houra="pm";
     }
     elsif ($hourp eq "19") {
     $hourp=7;
     $houra="pm";
     }
     elsif ($hourp eq "20") {
     $hourp=8;
     $houra="pm";
     }
     elsif ($hourp eq "21") {
     $hourp=9;
     $houra="pm";
     }
     elsif ($hourp eq "22") {
     $hourp=10;
     $houra="pm";
     }
     elsif ($hourp eq "23") {
     $hourp=11;
     $houra="pm";
     }

############################ DEFINE DAY NAMES if UNCHANGED

if ($wday eq "1") {
$wday="Monday";
}
if ($wday eq "2") {
$wday="Tuesday";
}
if ($wday eq "3") {
$wday="Wednesday";
}
if ($wday eq "4") {
$wday="Thursday";
}
if ($wday eq "5") {
$wday="Friday";
}
if ($wday eq "6") {
$wday="Saturday";
}
if ($wday eq "0") {
$wday="Sunday";
}

############################ CONVERT MONTH NUMBERS to TEXT

if ($monp eq "1") {
$monpt="January";
}
if ($monp eq "2") {
$monpt="February";
}
if ($monp eq "3") {
$monpt="March";
}
if ($monp eq "4") {
$monpt="April";
}
if ($monp eq "5") {
$monpt="May";
}
if ($monp eq "6") {
$monpt="June";
}
if ($monp eq "7") {
$monpt="July";
}
if ($monp eq "8") {
$monpt="August";
}
if ($monp eq "9") {
$monpt="September";
}
if ($monp eq "10") {
$monpt="October";
}
if ($monp eq "11") {
$monpt="November";
}
if ($monp eq "12") {
$monpt="December";
}


$wdaybac=$wday;
$monpbac=$monp;
$monptbac=$monpt;
$mdaypbac=$mdayp;
$year2bac=$year2;
$hourpbac=$hourp;
$minbac=$min;
$hourabac=$houra;

}

##########uactualtime end