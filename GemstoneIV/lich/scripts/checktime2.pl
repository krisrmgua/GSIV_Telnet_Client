#!/usr/bin/perl
use DateTime;

$tm_year += 1900;
my($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime(time());
$year += 1900;
$mon += 1;

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
      year       => $year,
      month      => $mon,
      day        => $mday,
      hour       => 23,
      minute     => 00,
      second     => 0,

      time_zone  => 'America/Boise',
  );
$answer_sec = $givenDate1->subtract_datetime_absolute($givenDate2)->seconds;
print "$answer_sec";
#$total = ($answer_sec / 60) / 60;
#print "\nTOTAL: $total";
