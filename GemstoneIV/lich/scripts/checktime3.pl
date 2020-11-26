#!/usr/bin/perl
use DateTime;

my($tm_sec,$tm_min,$tm_hour,$tm_mday,$tm_mon,$tm_year,$tm_wday,$tm_yday,$tm_isdst)=localtime(time()+(1*24*60*60));
$tm_year += 1900;
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time());
$year += 1900;

#print "$year $mon $mday $hour $min $sec";

my $givenDate1 =  DateTime->new(
      year       => $year,
      month      => $mon,
      day        => $mday,
      hour       => $hour,
      minute     => $min,
      second     => $sec,

      time_zone  => 'America/Boise',
  );
my $givenDate2 =  DateTime->new(
      year       => $tm_year,
      month      => $tm_mon,
      day        => $tm_mday,
      hour       => 3,
      minute     => 0,
      second     => 0,

      time_zone  => 'America/Boise',
  );
$answer_sec = $givenDate1->subtract_datetime_absolute($givenDate2)->seconds;
print "$answer_sec";
#$total = ($answer_sec / 60) / 60;
#print "\nTOTAL: $total";
