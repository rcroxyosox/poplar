#!/usr/bin/perl5
print "Content-type: text/html","\n\n";

######################################
#                                    #
# CSVFormPlus v1.0                   #
# Copyright 2000 by Mutasem Abudahab #
# mutasem@abudahab.com               #
# http://ezscripting.com             #
#                                    #
# Last modified on August 13, 2000   #
#                                    #
######################################
#
# Copyright Notice:
# Copyright 2000 Mutasem R. Abudahab.  All Rights Reserved.
#
# This code may be used and modified by anyone so long as this header and
# copyright information remains intact.  By using this code you agree to 
# indemnify Mutasem R. Abudahab from any liability that might arise from its 
# use.  You must obtain written consent before selling or redistributing 
# this code.

#------------------- Start working on the script --------------------#

# Change the value of $html_path for the path to the HTML file that should
# serve as a response appearing after processing the addition operation.

	$html_path="/WWW/jewels/poplarhouse/survey_thankyou.html";
	#$pageowner = "sales\@sketch3d.com"; 
	#$order_number = "mac_poll.dat";


#----------------- This is enough to start working ------------------#

# Enter a value of either "+" or "-". This depends on whether your local time
# is after or before GMT.

	$time_transfare_direction="-";

# Enter the difference value of hours between your local time and GMT.

	$time_transfare_hours="7";

# Enter the difference value of minutes between your local time and GMT.

	$time_transfare_minutes="0";

# You can leave this value, but you can also enter a number of seconds to
# calebrate your time by the second.

	$time_transfare_seconds="";

# Enter field names you wish to make 'required'

	$require[0]="";
	$require[1]="";
	$require[2]="";
	$require[3]="";
	$require[4]="";
	$require[5]="";
	$require[6]="";
	$require[7]="";
	$require[8]="";
	$require[9]="";

# Enter field names that should contain valid email addresses

	$if_mail[0]="";
	$if_mail[1]="";
	$if_mail[2]="";
	$if_mail[3]="";
	$if_mail[4]="";
	$if_mail[5]="";
	$if_mail[6]="";
	$if_mail[7]="";
	$if_mail[8]="";
	$if_mail[9]="";

#---------- You should not change anything below this line ----------#


# reads content from demo order form & builds line for CSV file
# splits into $e_names[] and $e_values[]
read(STDIN,$query_string,$ENV{'CONTENT_LENGTH'});
$time_gap=$time_transfare_seconds+($time_transfare_minutes*60)+($time_transfare_hours*60*60);
if($query_string !~ /\S|=/){
        &produce_error(
                "You Did not access the script through an HTML form"
                );
        }
unless($csv_file=&pick_up("file",$query_string)){
        &produce_error(
                "You did not provide your HTML form with a CSV file path."
                );
        }
		
@pairs=split("&",$query_string);
$l=0;
foreach $pair (@pairs){
        if($pair=~/[;<>&\*`|]/){
                &produce_error(
                        "Using [;<>&\*`|] meta-characters is frobidden for security reasons." 
                        );
                }
        ($e_names[$l],$e_values[$l])=split("=",$pair);
        $e_names[$l]=~s/%([\dA-Fa-f][\dA-Fa-f])/pack("C",hex($1))/eg;
        $e_names[$l]=~tr/+/ /;
        $e_values[$l]=~s/%([\dA-Fa-f][\dA-Fa-f])/pack("C",hex($1))/eg;
        $e_values[$l]=~tr/+/ /;
        if($e_names[$l]=~/"|,/){
                $e_names[$l]=~s/"/""/g;
                $e_names[$l]="\"".$e_names[$l]."\"";
                }
        if($e_values[$l]=~/"|,/){
                $e_values[$l]=~s/"/""/g;
                $e_values[$l]="\"".$e_values[$l]."\"";
                }
        $l = $l + 1;
        }
$l_e_names=@e_names;
$l_e_values=@e_values;
$l_require=@require;
foreach $value (@e_names){
        if(($value eq "date_local")||($value eq "time_local")||($value eq "date_gmt")||($value eq "time_gmt")||($value eq "http_referer")||($value eq "remote_host")||($value eq "remote_user")||($value eq "remote_addr")||($value eq "document_name")||($value eq "document_url")||($value eq "http_user_agent")||($value eq "#_record")||($value eq "user_email")||($value eq "#_approved")){
                &produce_error(
                        "You cannot modify CSVform reserved variables through HTML form fields"
                        );
                }
        }
if($l_require != 0){
        NEXT_REQ:
        foreach $req (@require){
                for($l=0;$l<=($l_e_names-1);$l=$l+1){
                        if($req eq ""){
                                next NEXT_REQ;
                                }
                        if($req=~/^$e_names[$l]$/){
                                $got_it="yes";
                                if($e_values[$l] !~ /\S/){
                                        &produce_error(
                                                "field \"$req\" is a required field and should not be left blank."
                                                );
                                        }
                                }
                        }
                if($got_it ne "yes"){
                        &produce_error(
                                "required field(s) is missing" 
                                );
                        }
                $got_it="";
                }
        }
$l_if_mail=@if_mail;
if($l_if_mail != 0){
        NEXT_IF_M:
        foreach $if_m (@if_mail){
                for($l=0;$l<=($l_e_names-1);$l=$l+1){
                        if($if_m eq ""){
                                next NEXT_IF_M;
                                }
                        if($if_m=~/^$e_names[$l]$/){
                                if(&check_if_mail($e_values[$l]) ==0){
                                        &produce_error(
                                               "field \"$e_names[$l]\" should contain a valid e-mail address"
                                               );
                                        }
                                }
                        }
                }
        }
		
## SW ADDED		
## modify_Data() gets number of lines in number.dat
#@dat_lines=&modify_DATA($order_number);		
@csv_lines=&modify_CSV($csv_file);
## saves number of lines in DAT file to l_dat_lines (used later in print)
#$l_dat_lines = @dat_lines;
$l_csv_lines=@csv_lines;
@headers=split(",",$csv_lines[0]);
$l_headers=@headers;
foreach $header (@headers){
        $header=&search_prepare($header);
        }
NEXT_HEADER:
for($b=0;$b<=($l_headers-1);$b=$b+1){
        for($c=0;$c<=($l_e_names-1);$c=$c+1){
                if($headers[$b] eq "date_gmt"){
                        ($secs,$mins,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=gmtime(time);
                        $b_date="\"".($mon+1)." - "."$mday"." - ".(1900+$year)."\"";
                        $new_line[$b]=$b_date;
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "date_local"){
                        $local_time=time;
                        if(($time_transfare_direction eq "")||($time_transfare_direction eq "+")){
                                $local_time=$local_time+$time_gap;
                                }
                        elsif($time_transfare_direction eq "-"){
                                $local_time=$local_time-$time_gap;
                                }
                                else{
                                        &produce_error(
                                                "You can only use \"+\" or \"-\" as value to variable \$time_transfare_direction"
                                                );
                                        }
                        ($secs,$mins,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=gmtime($local_time);
                        $c_date="\"".($mon+1)." - "."$mday"." - ".(1900+$year)."\"";
                        $new_line[$b]=$c_date;
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "time_local"){
                        $local_time=time;
                        if(($time_transfare_direction eq "")||($time_transfare_direction eq "+")){
                                $local_time=$local_time+$time_gap;
                                }
                        elsif($time_transfare_direction eq "-"){
                                $local_time=$local_time-$time_gap;
                                }
                                else{
                                        &produce_error(
                                                "You can only use \"+\" or \"-\" as value to variable \$time_transfare_direction"
                                                );
                                        }
                        ($secs,$mins,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=gmtime($local_time);
                        $c_time="$hour".":"."$mins".":"."$secs";
                        $new_line[$b]=$c_time;
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "time_gmt"){
                        ($secs,$mins,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=gmtime(time);
                        $b_time="$hour".":"."$mins".":"."$secs"." GMT";
                        $new_line[$b]=$b_time;
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "http_referer"){
                        $new_line[$b]=$ENV{'HTTP_REFERER'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "remote_host"){
                        $new_line[$b]=$ENV{'REMOTE_HOST'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "remote_addr"){
                        $new_line[$b]=$ENV{'REMOTE_ADDR'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "remote_user"){
                        $new_line[$b]=$ENV{'REMOTE_USER'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "document_name"){
                        $new_line[$b]=$ENV{'SCRIPT_NAME'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "document_url"){
                        $new_line[$b]=$ENV{'PATH_TRANSLATED'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "http_user_agent"){
                        $new_line[$b]=$ENV{'HTTP_USER_AGENT'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "#_record"){
                        $new_line[$b]=$l_csv_lines;
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "user_email"){
                        $new_line[$b]=$ENV{'HTTP_FROM'};
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq "#_approved"){
                        $new_line[$b]="N";
                        next NEXT_HEADER;
                        }
                if($headers[$b] eq $e_names[$c]){
                        $new_line[$b]=$e_values[$c];
                        next NEXT_HEADER;
                        }
                }
        }
$l_new_line=@new_line;
if($l_new_line < 1){
        &produce_error(
                "Could not build a CSV database line.",
                "Please check that fields' names included in HTML form are identical to some",
                " headers in CSV file."
                );
        }
$produced_line=join(",",@new_line);
$produced_line .="\n";


## open the numbers.dat file
#if(open(DATA,">>$order_number"))
#		{
			#&modify_DATA($order_number);
#			$l_dat_lines .= "\n";
#			print DATA $l_dat_lines;
		
			# close the numbers.dat file
#        	close(DATA);
			## send mail
#        }
#        else
#		{
#        	&produce_error("Could not modify DAT file.");
#        }
		
if(open(CSV,">>$csv_file")){
        print CSV $produced_line;
        close(CSV);
		## send mail--add back when done testing
		#sendEmail();
		#sendEmailResponse();
        }
        else
		{
        	&produce_error("Could not modify CSV file.");
        }
if(open(HTML,$html_path)){
        @html_data=<HTML>;
        print "@html_data";
        }
close(CSV);
close(HTML);
exit(1);


sub sendEmail{
	
## SUSAN ADD ##################

open (MESSAGE,"| /usr/sbin/sendmail   $pageowner");
##############################################################
# Format and write the email message.
print MESSAGE "From: Mac Poll <sales\@sketch3d.com>\n";
print MESSAGE "Subject: Mac Poll\n";
print MESSAGE "To: $pageowner\n\n";

print MESSAGE "\n$e_values[0]";

close (MESSAGE);
## END SUSAN ADD ##################
} # sendEmail

sub sendEmailResponse{
	
## SUSAN ADD ##################

open (MESSAGE,"| /usr/sbin/sendmail   $e_values[11]");
##############################################################
# Format and write the email message.
print MESSAGE "From: SketchUp <sales\@sketch3d.com>\n";
print MESSAGE "Subject: Thank You for Downloading the SketchUp Demo!\n";
print MESSAGE "To: $e_values[11]\n\n";

print MESSAGE "$e_values[1],\n";
print MESSAGE "\nThank You for Downloading SketchUp!  Your fully functional demo copy will ";
print MESSAGE "run for 20 Hours.  To help you get up to speed quickly with ";
print MESSAGE "SketchUp, we strongly suggest watching the SketchUp demos accessed ";
print MESSAGE "in the start menu under programs/\@Lastsoftware/SketchUp demos or ";
print MESSAGE "have a look at the Tutorials located in Help.";
print MESSAGE "\n\nIf you have questions or problems installing or using SketchUp ";
print MESSAGE "please email us at support\@sketch3d.com.";
print MESSAGE "\n\nSketchUp can be purchased for only \$475 at: https://www.sketch3d.com/order_form.html. ";
print MESSAGE "Please use our secure online order form to complete your transaction.";
print MESSAGE "\n\nFor general information, order questions, suggestions or concerns ";
print MESSAGE "email us at sales\@sketch3d.com. ";
print MESSAGE "Thanks again for downloading SketchUp and we hope you love it as much as we ";
print MESSAGE "do.\n\n    Sincerely,\n    Everyone at \@Last Software";

close (MESSAGE);
## END SUSAN ADD ##################
} # sendEmail


sub check_if_mail{
        if(($_[0]=~/(@.*@)|(\.\.)|(@\.)|(\.@)|(^\.)/)||($_[0]!~/^.+\@(\[?)[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,3}|[0-9]{1,3})(\]?)$/)){
                return 0;                
                }
                else{
                        return 1;
                        }
        }
sub modify_CSV
{
if(open(CSV,$_[0])){
	}
	else{
                &produce_error(
                        "Can't open CSV file.",
                        "Please, check that you have provided the cgi script with correct CSV file path.",
                        ); 
	}
$ccc=0;
while($in_lin=<CSV>){
        if($in_lin!~/\S/){
                next;
                }
        $lines[$ccc]=$in_lin;
        $ccc = $ccc + 1;
        }
$lines_length = @lines;
$lines_length = $lines_length-1;
for($l=0;$l<=$lines_length;$l=$l+1){
        $lines[$l]=~s/""/%01/g;
        while($lines[$l]=~/("[^"]+")/){
                $match=$1;
                $match=~s/"//g;
                $match=~s/,/%02/g;
                $lines[$l]=~s/("[^"]+")/$match/;
                }
        }
close(CSV);
chomp(@lines);
return @lines;
}  

sub modify_DATA
{
if(open(DATA,$_[0])){
	}
	else{
                &produce_error(
                        "Can't open DATA file.",
                        "Please, check that you have provided the cgi script with correct DATA file path.",
                        ); 
	}
$ccc=0;
while($in_lin=<DATA>){
        if($in_lin!~/\S/){
                next;
                }
        $lines[$ccc]=$in_lin;
        $ccc=$ccc+1;
        }
$lines_length=@lines;
$lines_length=$lines_length-1;
for($l=0;$l<=$lines_length;$l=$l+1){
        $lines[$l]=~s/""/%01/g;
        while($lines[$l]=~/("[^"]+")/){
                $match=$1;
                $match=~s/"//g;
                $match=~s/,/%02/g;
                $lines[$l]=~s/("[^"]+")/$match/;
                }
        }
close(DATA);
chomp(@lines);
return @lines;
}  

sub search_prepare{
        $_[0]=~s/%01/"/g;
        $_[0]=~s/%02/,/g;
        return $_[0];
        }
sub produce_error
{
print "<HTML><HEAD><TITLE>Error message</TITLE><BODY>\n";
print "<img border=\"0\" src=\"http://www.ezscripting.com/images/title01.gif\"><HR>";
print "<CENTER><IFRAME SRC=\"http://www.ezscripting.com/banners/ads.pl?iframe\" MARGINWIDTH=0 MARGINHEIGHT=0 HSPACE=0 VSPACE=0 FRAMEBORDER=0 SCROLLING=NO WIDTH=468 HEIGHT=60></IFRAME></CENTER>";
print "<BR><font face=\"Arial\"><B>ERROR MESSAGE:</B></FONT><BR><BR>";
print "<font face=\"Arial\">";
foreach $line (@_){
        print "$line<BR>\n";
        }

print "<BR>For more information go to <a href=\"http://www.ezscripting.com\">WWW.EZSCRIPTING.COM</a>";
print "</FONT>";
print "<p align=\"center\"><font size=\"1\" face=\"Arial\"><a href=\"http://www.ezscripting.com/admin/add_bug.shtml\">Report Bug</a> - <a href=\"http://www.ezscripting.com/faq.shtml\">FAQ</a> - <a href=\"http://www.ezscripting.com/forums.shtml\">Discussion Forums</a></font></p><hr>";
print "<p align=\"right\"><b><font size=\"2\" face=\"Arial\">ReadCSV<font color=\"#FF0000\">Plus </font></font></b><font face=\"Arial\" size=\"1\">by <a href=\"mailto:mutasem\@abudahab.com\">Mutasem Abudahab</a>, <a href=\"http://www.ezscripting.com\">EZScripting.com</a></font></p>";
print "</BODY></HTML>";
exit(0);
return (1);
}
sub error_if_nonnumiric
{
if($val =~ /\D/){
        &produce_error(
                "Cannot use non-numiric values as right arguments of:",
                "1- Greater than.",
                "2- Less than.",
                "3- Equal or greater than.",
                "4- Equal or less than.",
                "Operators."
                );
        }
return (1);
}
sub sweep_spaces{
        $val=~s/^ +//;
        $val=~s/ +$//;
        $var=~s/^ +//;
        $var=~s/ +$//;
        }
sub translate_special_variables{
        ($secs,$mins,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=gmtime(time);
        $b_time="$secs".":"."$mins".":"."$hour"." GMT";
        $b_date="$mday".",".($mon+1).",".(1900+$year);
        $_[0]=~s/<<#_matches>>/$_[1]/isg;
        $_[0]=~s/<<#_total>>/$_[2]/isg;
        $_[0]=~s/<<#_date>>/$b_date/isg;
        $_[0]=~s/<<#_time>>/$b_time/isg;
        return $_[0];
        }
sub pick_up{
        if(($_[1]=~/^$_[0]=([^&\b]+)/i)||($_[1]=~/&$_[0]=([^&\b]+)/i)){
                $pick=$+;
                $pick=~s/%([\dA-Fa-f][\dA-Fa-f])/pack("C",hex($1))/eg;
                $pick=~tr/+/ /;
                $_[1]=~s/$_[0]=[^&\b]+//i;
                $_[1]=~s/&&/&/g;
                $_[1]=~s/^&//g;
                $_[1]=~s/&$//g;
                }
                else{
                        return 0;
                        }
        return $pick;
        }
