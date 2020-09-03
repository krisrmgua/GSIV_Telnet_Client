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
 
$mail->send(-to=>'8013185504@tmomail.net', -subject=>"$ARGV[0] is now level $ARGV[1]", -body=>"$ARGV[0] is now level $ARGV[1]");
 
$mail->bye;
