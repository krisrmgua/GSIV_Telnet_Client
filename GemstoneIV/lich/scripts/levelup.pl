#!/usr/bin/perl
use strict;
use warnings;
use Email::Send::SMTP::Gmail;
 
my ($mail,$error)=Email::Send::SMTP::Gmail->new( -smtp=>'smtp.gmail.com',
                                                 -login=>'krisrmgua@gmail.com',
                                                 -pass=>'ysbkeylgvfpzuqmq',
                                                 -port=>587);
                                                # -verbose=>1,
                                                # -debug=>1);
 
print "session error: $error" unless ($mail!=-1);

if ("$ARGV[0]" eq "STATUS") {
  $mail->send(-to=>'8013185504@tmomail.net', -subject=>"$ARGV[1]", -body=>"$ARGV[1]");
}elsif ("$ARGV[0]" eq "WHISPER"){
  $mail->send(-to=>'8013185504@tmomail.net', -subject=>"WHISPER", -body=>"$ARGV[1]");
}else{
  $mail->send(-to=>'8013185504@tmomail.net', -subject=>"$ARGV[0] is now level $ARGV[1]", -body=>"$ARGV[0] is now level $ARGV[1]");
}
$mail->bye;
