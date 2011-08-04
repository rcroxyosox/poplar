#!/usr/bin/perl5
# Location of perl on your server.

# Root path to aaflogit.dat and aafip.dat - no trailing slash.
$DATAPATH="/WWW/jewels/poplarhouse/cgi-bin";

# Root path to the password file (aafpass.txt). - no trailing slash.
# NOTE: This file is encrypted, but for highest security, place it in a
# password protected directory.
$check_pass="/WWW/jewels/poplarhouse/cgi-bin";

# The URL of this Admin Script, including the script name itself.
# NOTE: For highest security, place this Admin Script in a
# password protected directory.
$script_url="http://www.poplarhouse.com/poplar-cgi-bin/aafadmin.pl";

# Valid Referer - for security, it is recommended that you leave this
# yes, meaning ON.
# If yes, Admin Script can only be called from the domain in the
# variable below. Change to no if you would like this feature ignored.
$vref="no";

# Valid Referer Address (if yes to above) - your domain.
# Don't forget the .com, .net, etc.
# And don't include a trailing slash following .com
$vrefcom="poplarhouse.com";

##########
#
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

if (!$ENV{'QUERY_STRING'}) {
     &getpass2;
}

elsif ($ENV{'QUERY_STRING'} eq 'setup') {
     &getpass;
}

elsif ($ENV{'QUERY_STRING'} eq 'changepass') {
     &checkreferer;
     &changepass;
}

elsif ($ENV{'QUERY_STRING'} eq 'unamepword2') {
     &checkreferer;
     &checkpass;
     &getlogit;
}
else {
&errorfile;
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

##########getpass

sub getpass {

opendir (DIRP, "$check_pass") || &errorfile;
@dirp = readdir (DIRP);
closedir (DIRP);

$checker="aafpass.txt";

foreach $dirp (@dirp) {

     if ($dirp eq $checker) {

    
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?changepass\" method=POST><font face=\"verdana\" size=\"3\" color=\"#000000\"><b>\n";
     print "Alert-A-Friend Admin<br><br>\n";
     print "To Setup or Change your username and/or password, complete the form below.</b></font>\n";
     print "<font face=\"verdana\" size=\"2\" color=\"#000000\"><b><br><br>\n";
     print "If you do not want to Setup or Change your username and/or password, ignore the form below and re-enter the script.<br><br><font color=\"red\">$script_url</font><br><br><br>\n";

     print "<font face=\"verdana\" size=\"2\" color=\"red\"><b>Username and Password are case sensitive.</b></font><br><br><br>\n";

     print "</b></font><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>CURRENT username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"cuname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"cpword\" size=\"10\"><br><br><br>\n";

     print "Please enter NEW username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br>\n";

     print "<input type=\"submit\" value=\"Submit Change\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
 }
}

     
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><font face=\"verdana\" size=\"2\" color=\"#000000\"><b><br><br>Cannot find password file\n";
     print " <font color=\"red\">(aafpass.txt)</font> in the directory <font color=\"red\">$check_pass</font><br><br><br>\n";
     print "Make sure <font color=\"red\">\$check_pass</font> variable in <font color=\"red\">sadmin.pl</font> is correct.<br><br>Make sure the <font color=\"red\">aafpass.txt</font> is properly chmoded.</b></font></center>\n";
     print "</body></html>\n";

exit;

}

##########getpass2

sub getpass2 {

opendir (DIRP, "$check_pass") || &errorfile;
@dirp = readdir (DIRP);
closedir (DIRP);

$checker="aafpass.txt";

foreach $dirp (@dirp) {

     if ($dirp eq $checker) {

     
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?unamepword2\" method=POST><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>\n";
     print "Alert-A-Friend<br>\n";

     print "<br><br>Enter username and password.<br><br>\n";
     print "Username and Password are case sensitive.<br><br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br><input type=\"submit\" value=\"Submit\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
 }
}
     
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><font face=\"verdana\" size=\"2\" color=\"#000000\"><b><br><br>Cannot find password file <font color=\"red\">(aafpass.txt)</font> in the directory <font color=\"red\">$check_pass</font><br><br><br>\n";
     print "Make sure <font color=\"red\">\$check_pass</font> variable in <font color=\"red\">sadmin.pl</font> is correct.<br><br>Make sure the <font color=\"red\">aafpass.txt</font> is properly chmoded.</b></font></center>\n";
     print "</body></html>\n";
exit;

}
##########checkreferer

sub checkreferer {

if (($vref eq "yes") && ($ENV{'HTTP_REFERER'} =~m|https?://([^/]*)$vrefcom|i)) {
     $checkref=1;
  }
elsif ($vref eq "no") {
     $checkref=1;
  }
else {
     
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?unamepword2\" method=POST><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>Username and/or Password are incorrect or need to be re-entered.\n";
     print "<br><br>Possible bad referer info in sadmin.pl\n";
     print "<br><br>\n";
     print "Username and Password are case sensitive.<br><br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br><input type=\"submit\" value=\"Submit\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
  }
}


##########changepass

sub changepass {

     &parseform;

if (!$FORM{'uname'}) {

    
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?changepass\" method=POST><font face=\"verdana\" size=\"2\" color=\"red\"><b>Username cannot be blank.<br><br>\n";
     print "<font color=\"#000000\">If you would like to change your username and/or password, complete the form below.<br><br>\n";
     print "If not, re-enter the script by typing the URL to the sadmin.pl in your browser's location box.</font><br><br>$script_url<br><br><br>\n";
     print "<font face=\"verdana\" size=\"2\" color=\"red\"><b>Username and Password are case sensitive.</b></font><br><br><br>\n";
     print "</b></font><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>CURRENT username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"cuname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"cpword\" size=\"10\"><br><br><br>\n";

     print "Please enter NEW username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br>\n";

     print "<input type=\"submit\" value=\"Submit Change\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
 }

if (!$FORM{'pword'}) {

    
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?changepass\" method=POST><font face=\"verdana\" size=\"2\" color=\"red\"><b>Password cannot be blank.<br><br>\n";
     print "<font color=\"#000000\">If you would like to change your username and/or password, complete the form below.<br><br>\n";
     print "If not, re-enter the script by typing the URL to the sadmin.pl in your browser's location box.</font><br><br>$script_url<br><br><br>\n";
     print "<font face=\"verdana\" size=\"2\" color=\"red\"><b>Username and Password are case sensitive.</b></font><br><br><br>\n";
     print "</b></font><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>CURRENT username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"cuname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"cpword\" size=\"10\"><br><br><br>\n";

     print "Please enter NEW username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br>\n";

     print "<input type=\"submit\" value=\"Submit Change\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
 }


     open (DATAP, "<$check_pass/aafpass.txt") || &errorfile;
@datap=split(';', <DATAP>);
close (DATAP);

$datana="$datap[0]";
$datapa="$datap[1]";
$cename = "$FORM{'cpword'}";
$cencname = crypt $cename, "SW";

if (($FORM{'cuname'} eq $datana) && ($cencname eq $datapa)) {

     open (DATAP, ">$check_pass/aafpass.txt") || &errorfile;

$ename = "$FORM{'pword'}";
$encname = crypt $ename, "SW";

print DATAP "$FORM{'uname'};$encname";

close (DATAP);

&getlogit;
}

else {

    
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?changepass\" method=POST><font face=\"verdana\" size=\"2\" color=\"red\"><b><br><br>CURRENT username and password are incorrect.<br><br>\n";
     print "<font color=\"#000000\">If this is not the page you wanted to be on</font> (like via a reload)<font color=\"#000000\">, ignore the form below and re-enter the script.</font><br><br>$script_url<br><br>\n";
     print "<font face=\"verdana\" size=\"2\" color=\"red\"><b>Username and Password are case sensitive.</b></font><br><br><br>\n";
     print "</b></font><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>Username: <input type=\"text\" name=\"cuname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"cpword\" size=\"10\"><br><br><br>\n";

     print "Please enter NEW username and password.<br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br>\n";

     print "<input type=\"submit\" value=\"Submit Change\"></b></font></form></center>\n";
     print "</body></html>\n";
}

exit;
}


##########checkpass

sub checkpass {

&parseform;

     open (DATAP, "<$check_pass/aafpass.txt") || &errorfile;
@datap=split(';', <DATAP>);
close (DATAP);

$ename = "$FORM{'pword'}";
$encname = crypt $ename, "SW";

if (($FORM{'uname'} eq $datap[0]) && ($encname eq $datap[1])) {
$checkit=1;
}
else {

opendir (DIRP, "$check_pass") || &errorfile;
@dirp = readdir (DIRP);
closedir (DIRP);

$checker="aafpass.txt";

foreach $dirp (@dirp) {

     if ($dirp eq $checker) {

     
     print "<html><head><title>Alert-A-Friend Admin</title><META HTTP-EQUIV=\"no-cache\"></head><body bgcolor=\"#FFFFCC\">\n";
     print "<center><form action=\"$script_url?unamepword2\" method=POST><font face=\"verdana\" size=\"2\" color=\"#000000\"><b>Username and/or Password are incorrect or need to be re-entered.\n";
     print "<br><br>\n";
     print "Username and Password are case sensitive.<br><br><br>\n";
     print "Username: <input type=\"text\" name=\"uname\" size=\"10\"><br><br>\n";
     print "Password: <input type=\"text\" name=\"pword\" size=\"10\"><br><br><input type=\"submit\" value=\"Submit\"></b></font></form></center>\n";
     print "</body></html>\n";
exit;
 }
}

 }
}


##########getlogit

sub getlogit {

print "<html><title>Alert-A-Friend Admin</title><body bgcolor=\"#FFFFCC\" link=\"black\" alink=\"black\" vlink=\"black\">\n";
print "<center><font face=\"verdana\" size=\"3\" color=\"#0000CC\"><b>Bandley3's Alert-A-Friend&nbsp;&nbsp;|&nbsp;&nbsp;List of Sent Pages</b></font><br><br>\n";
print "<table width=\"75%\" cellpadding=\"3\" cellspacing=\"0\" border=\"0\"><tr>";
print "<td align=\"left\" bgcolor=\"black\" nowrap><font face=\"verdana\" size=\"2\" color=\"white\"><b>&nbsp;URL of Pages Sent</b></font></td>\n";
print "<td align=\"center\" bgcolor=\"black\" nowrap><font face=\"verdana\" size=\"2\" color=\"white\"><b>Number of Sends</b></font></td></tr>\n";

     open (DATA, "<$DATAPATH/aaflogit.dat") || &errorfile;
@data=<DATA>;
close (DATA);

foreach $data (@data) {

$gover=$i++;
$crapper=$gover / 2;
@dat= split('\|\|', $data);

if ($crapper =~ m/\.\d/) {
print "<tr><td bgcolor=\"#FFCCFF\"><font face=\"verdana\" size=\"2\" nowrap>&nbsp;<a href=\"$dat[0]\" target=\"_blank\">$dat[0]</a>&nbsp;</font></td>\n";
print "<td bgcolor=\"#FFCCFF\" align=\"center\"><font face=\"verdana\" size=\"2\" nowrap>$dat[1]</b></font></td></tr>\n";
}
else {
print "<tr><td bgcolor=\"#CCFFCC\"><font face=\"verdana\" size=\"2\" nowrap>&nbsp;<a href=\"$dat[0]\" target=\"_blank\">$dat[0]</a>&nbsp;</font></td>\n";
print "<td bgcolor=\"#CCFFCC\" align=\"center\"><font face=\"verdana\" size=\"2\" nowrap>$dat[1]</font></td></tr>\n";
}
}
print "</table>\n";

print "<br><br><font face=\"verdana\" size=\"2\">\n";
print "<a href=\"http://bandley3.com/\" target=\"_blank\">&copy; 2000 Bandley3 Software</a></font><br><br>\n";

print "</center></body></html>\n";

exit;
}

##########errorfile

sub errorfile {

     print "<html><body bgcolor=\"#FFFFCC\">\n";
     print "<center><table>\n";
     print "<td align=\"center\"><font face=\"verdana\" size=\"3\" color=\"black\"><b>File or Directory cannot be opened.<br><br>Default error message.</b></font></td></table></center>\n";
     print "</body></html>\n";

exit;
  }
