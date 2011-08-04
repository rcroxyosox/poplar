#!/usr/bin/perl5
# A PERL SCRIPT written by Sam Matson
#	to calculate the monthly payment and
#	total mortgage loan amount, given
#	Yearly Income ($)
#	Interest rate (% by year)
#	Loan Duration (years)
require("auxiliary-2.pl");

$status=1;
&getData;
&Calculate;
&Output;


sub getData {
# Read Form Data, Exit with diagnostic if data is missing

  $buffer = "";
  read(STDIN, $buffer, $ENV{'CONTENT_LENGTH'});
  @pairs=split(/&/,$buffer);
  foreach $pair (@pairs)
  {
    @a = split(/=/,$pair);
    $name=$a[0];
    $value=$a[1];
    push (@data,$name);
    push (@data, $value);
  }
  %formdata=@data;
  %formdata;

  if (!$formdata{'salary'}) {$status=0;}



  $income=$formdata{'salary'};
  $interest=$formdata{'interest'};
  $duration=$formdata{'amortization'};
  $fees=200;
  $downpayment=$formdata{'downpayment'};
}

sub Calculate {
# convert data to monthly income, interest, duration
  $income/=12;
  $interest/=1200;
  $duration*=12;

# calculate available money for payment
  $payment = $income*0.35-$fees;

# calculate total loan amount
#  Po = (M*SUM_{i=0}^{N-1}(1+J)^i)/(1+J)^N
#	Po = Loan Amount
#	M = monthly payment
#	N = number of monthly payments
#	J = monthly interest rate
  $sum=0;
  for ($i=0;$i<=$duration-1;$i++) {
    $sum+=(1+$interest)**$i;
  }
  $Po = $payment*$sum/(1+$interest)**$duration;

# Calculate Home Value Based upon down payment amount
  $value = $Po/(1-$downpayment/100);

# Change some data back to yearly for output
  $income*=12;
  $interest*=1200;
  $duration/=12;
  $totalpay=$payment+$fees;
}

sub Output {
  print "Content-type: text/html\n\n";
# print "Content-type: text/html\nPragma: no-cache\n\n";
# Check Status then act accordingly	  
#  $#="%.2g";
  &PrintPageHeader;
}

sub commify {
# This puts commas into numbers that are greater than 999
# Call it by commify($variable)
        local $_  = shift;
        1 while s/^(-?\d+)(\d{3})/$1,$2/;
        return $_;
    }
