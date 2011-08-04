#!/usr/bin/perl


$searchroot = "/WWW/jewels/poplarhouse/";			# Thr directory of where to start search. You have to set "chmod 777" for it.

$searchrooturl = "http://www.poplarhouse.com/	";	# The URL of where to start search.

@searchfiletype = ("*.htm","*.html");				# Define which kind of file you are going to search.

$unix=1;											# If your server is UNIX, please set$unix=1. otherwise set to $unix=0, sucj as NT server.

$resultpage = "/WWW/jewels/poplarhouse/search.htm";	# The HTML of result screen.

###############
@querys=split(/&/,$ENV{'QUERY_STRING'});
foreach (@querys) {&setv($_);}

read(STDIN,$buffer,$ENV{'CONTENT_LENGTH'});
@pairs=split(/&/,$buffer);
foreach (@pairs) {&setv($_);}

if ($unix==1) {
   @dir=($searchroot);

   @temp1=@dir; 
   $redo=1;
   while ($redo==1) {
      $redo=0;
      @temp2=();
      foreach (@temp1) {
         chdir($_);
         $temp3 = `ls -l $_`;
         @temp3 = split(/\n/, $temp3);
         @temp4 = ();
         for ($i=0;$i<=$#temp3;$i++) {
             $temp3[$i] =~ s/\s+/ /g;
             ($chkchmod,$chkno,$chkway,$chkowner,$chksize,$chkmonth,$chkday,$chktime,$chkname)=split(/ /,$temp3[$i]);
             if (($chkname) && ($chkchmod =~ /^d/)) {
                push(@temp4,"$_/$chkname");
             }
         } 
         if ($#temp4>=0) {$redo=1;}
         @temp2 = (@temp2,@temp4);
      }   
      @temp1=@temp2;
      @dir=(@dir,@temp2);      
   }

   @files=();
   foreach (@dir) {
      foreach $searchfiletype (@searchfiletype) {
         chdir($_);
         $temp=`ls -l $_/$searchfiletype`;   
         @temp=split(/\n/, $temp);
         for ($i=0;$i<=$#temp;$i++) {
             $temp[$i] =~ s/\s+/ /g;
             ($chkchmod,$chkno,$chkway,$chkowner,$chksize,$chkmonth,$chkday,$chktime,$chkname)=split(/ /,$temp[$i]);
             if (($chkname) && ($chkchmod =~ /^-/)) {
                push(@files,"$chkname");
             }
         }
      }
   }
} else {
   chdir($searchroot);
   $temp = `dir /b/S $searchfiletype[0]`;
   for ($i=1;$i<=$#searchfiletype;$i++) {
       $temp .= `dir /b/S $searchfiletype[$i]`;
   }
   @files = split(/\s+/, $temp);

   foreach (@files) {
      $_ =~ s/\\/\//g;
   } 
}


print "Content-type: text/html\n\n";

@find=();
foreach $file (@files) {
   open(FILE,"$file");
   @lines = <FILE>;
   close(FILE);

   $datas = join(' ',@lines);
   $datas =~ s/\n//g;
   
   if ($datas =~ /$V{'searchword'}/i) {
      push(@find,$file);
   }
}

open(RESULT,"$resultpage");
@result = <RESULT>;
close(RESULT);

foreach (@result) {
   if ($_ =~ /<!--resulthere-->/) {
      if ($#find>=0) {
         print "<b>\n";
         foreach $find (@find) {
            $find =~ s/$searchroot//gi;            
            print "<p><a href=$searchrooturl$find>$searchrooturl$find</a>\n";
         }
         print "</b>\n";
         $match=$#find+1;
         print "<p><i>Found $match pages matching '<font color=ff0000>$V{'searchword'}</font>' on PoplarHouse.com</i>\n";
      } else {
         print "<p><i>No successful matches found.  Attempting to match '<font color=ff0000>$V{'searchword'}</font>' on PoplarHouse.com</i>\n";
      }
   }
   else {
      print;
   }
}
exit 0;
##########
sub setv {
($name,$value)=split(/=/,$_[0]);
$value =~ tr/+/ /;
$value =~ s/%([a-fA-F0-9][a-fA-F0-9])/pack("C", hex($1))/eg;
$value =~ s/<!--(.|\n)*-->//g;
$value =~ s/\n|\'//g;
if ($V{$name}) {$V{$name}="$V{$name}¡±$value";} else {$V{$name}=$value;}
}
