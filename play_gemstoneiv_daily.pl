#!/usr/bin/perl
## cpan IO::Socket::SSL to fix ssl errors
use strict;
use warnings;
use lib '/home/kris/bin/';
use lib '/website/GSIV_Telnet_Client/';
use Data::Dumper;
use LWP::UserAgent;
use HTTP::Cookies;
use WWW::Mechanize;
use IO::Socket::INET;
use Time::HiRes qw(sleep);
use File::Basename;
use play_gemstoneiv_data::Main;
use play_gemstoneiv_data::Highlights;
use play_gemstoneiv_data::Scripts;
use play_gemstoneiv_data::Travel;
use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
$| = 1;
%COLORS = (%play_gemstoneiv_data::Main::COLORS);

my $charecter = "";
my $num_args = $#ARGV + 1;
if ($num_args != 1){
  $charecter = prompt_for_charecter();
}else{
  $charecter = $ARGV[0];
}
print $COLORS{'color_green'} . "Charecter selected is $charecter\n" . $COLORS{'color_normal'};
my $user_module = "play_gemstoneiv_data::Users::$charecter";
my $user_module_globals = "$user_module"."::GLOBALS";
my $user_module_highlight_names = "$user_module"."::HIGHLIGHT_NAMES";
my $user_module_highlight_items = "$user_module"."::HIGHLIGHT_ITEMS";
my $user_module_highlight_text = "$user_module"."::HIGHLIGHT_TEXT";
my $user_module_travel = "$user_module"."::TRAVEL";
my $user_module_currentloc = "$user_module"."::CURRENTLOC";
my $user_module_scripts = "$user_module"."::SCRIPTS";
eval "require $user_module";
if($charecter){
    no strict 'refs';
    %GLOBALS = (
        %play_gemstoneiv_data::Main::GLOBALS,
        %$user_module_globals,
        override      => 1,
        );
    %HIGHLIGHT_NAMES = (
        %play_gemstoneiv_data::Highlights::HIGHLIGHT_NAMES,
        %$user_module_highlight_names,
        );
    %HIGHLIGHT_ITEMS = (
        %play_gemstoneiv_data::Highlights::HIGHLIGHT_ITEMS,
        %$user_module_highlight_items,
        );
    %HIGHLIGHT_TEXT = (
        %play_gemstoneiv_data::Highlights::HIGHLIGHT_TEXT,
        %$user_module_highlight_text,
        );
    %HIGHLIGHT_TEXT0 = (
        %play_gemstoneiv_data::Highlights::HIGHLIGHT_TEXT0,
        );
    %SCRIPTS = (
        %play_gemstoneiv_data::Scripts::SCRIPTS,
        %$user_module_scripts,
        );
    %CURRENTLOC = (
        %play_gemstoneiv_data::Travel::CURRENTLOC,
        %$user_module_currentloc,
        );
    %TRAVEL = (
        %play_gemstoneiv_data::Travel::TRAVEL,
        %$user_module_travel,
        );
}
#print Dumper(%HIGHLIGHT_ITEMS);
$GLOBALS{'password'} = "kas\@072578";
my $session_key = play_gemstoneiv_data::Main::get_session_key(\%GLOBALS);
my $current_dir_name = dirname(__FILE__);
play_gemstoneiv_data::Main::save_command_file("",$current_dir_name,\%GLOBALS);
my $socket = new IO::Socket::INET ( PeerAddr => "$GLOBALS{'server_address'}:$GLOBALS{'server_port'}", Proto => "tcp" ) or die "ERROR in Socket Creation : $!\n";sleep 2;
$socket->send($session_key);sleep 2;
$socket->send("/FE:JAVA\n");
my $pid1 = fork();
if ($pid1){
    while (1){
        sleep(30);
        $socket->send("info" . "\n");
        sleep(5);
        $socket->send("quit" . "\n");
        exit(0);
        my $send_data = <STDIN>;
        if($send_data =~ "^\\.(.*)"){ 
            play_gemstoneiv_data::Main::save_command_file($send_data,$current_dir_name,\%GLOBALS);
            $socket->send("con\n");
        }else{
            $socket->send($send_data);
        }
    }
    exit;
}elsif ($pid1 == 0) {
    while (my $line = <$socket>) {
        my $command_file_input = play_gemstoneiv_data::Main::read_command_file($current_dir_name,\%GLOBALS);
        if($command_file_input) {
            my $look_output = "";
            if($command_file_input eq "dir"){
                $look_output = play_gemstoneiv_data::Main::run_command_grab_lines("look",3,$socket);
                $line .= $look_output;
            }
            play_gemstoneiv_data::Main::save_command_file("",$current_dir_name,\%GLOBALS);
            my $pid2 = fork();
            if($pid2){
                my @p_split = split(/ /, $command_file_input);
                if($SCRIPTS{$p_split[0]}){
                    foreach my $run_command (@{$SCRIPTS{$p_split[0]}} ){
                        if($run_command =~ /sleep (\d+)/i){
                            sleep($1);
                        }elsif ($run_command =~ /{print}(.*)/){
                            print "$1\n";
                        }else{
                            my $counter = 0;
                            while($counter <= $#p_split) {
                                $run_command =~ s/{pv$counter}/$p_split[$counter]/g;
                                $counter++;
                            }
                            $socket->send($run_command . "\n");
                            sleep(0.75);
                        }
                    }
                }elsif($TRAVEL{$command_file_input} ){
                    $look_output = play_gemstoneiv_data::Main::run_command_grab_lines("look",3,$socket);
                    $line .= $look_output;
                    my $cur_loc = play_gemstoneiv_data::Travel::get_current_loc($look_output,\%CURRENTLOC);
                    foreach my $run_command (@{$TRAVEL{$command_file_input}{$cur_loc}{'move'}}){
                        if($run_command =~ /sleep (\d+)/i){
                            sleep($1);
                        }else{
                            $socket->send($run_command . "\n");
                            sleep(0.75);
                        }
                    }
                }elsif($command_file_input eq "dir"){
                    my $cur_loc = play_gemstoneiv_data::Travel::get_current_loc($look_output,\%CURRENTLOC);
                    if($cur_loc){
                        play_gemstoneiv_data::Travel::print_travel_list($cur_loc,\%TRAVEL,\%COLORS);
                    }else{
                        print $COLORS{'color_red'} . "Not a Hot Spot!" . $COLORS{'color_normal'};
                    }
                }
                exit;
            }
        }
        my $line_unprocessed = $line;
        ($line) = play_gemstoneiv_data::Main::process_line($line);
        ($line) = play_gemstoneiv_data::Highlights::color_names($line,\%HIGHLIGHT_NAMES,\%COLORS);
        ($line) = play_gemstoneiv_data::Highlights::color_items($line,\%HIGHLIGHT_ITEMS,\%COLORS);
        ($line) = play_gemstoneiv_data::Highlights::color_text_pre($line,\%HIGHLIGHT_TEXT0,\%COLORS);
        ($line) = play_gemstoneiv_data::Highlights::color_text($line,\%HIGHLIGHT_TEXT,\%COLORS);
        #$line = color_text($line);
        print "$line";
    }
}else{
    die "could not fork: $!\n";
}
$socket->close();
exit;


###################################################################
############################## SUBS ###############################
###################################################################

sub prompt_for_charecter {
    print $COLORS{'color_gold'} . "What charecter would you like to play: "  . $COLORS{color_normal} . "\n";
    print $COLORS{'color_red'} . "|-------------------------------------------" . $COLORS{color_normal}. "\n";
    my $current_dir_name = dirname(__FILE__);
    opendir (DIR, "$current_dir_name/play_gemstoneiv_data/Users/") or die $!;
    my %list_users = ();
    my $counter_x = 1;
    while (my $file = readdir(DIR)) {
        if($file =~ /(.*?)\.pm/){
            $list_users{$counter_x} = $1;
            print $COLORS{'color_red'} . "|\t$counter_x" . $COLORS{'color_normal'} . ":" . $COLORS{'color_green'} . " $1 " . $COLORS{'color_normal'} . "\n";
            $counter_x++;
        }
    }
    closedir(DIR);
    print $COLORS{'color_red'} . "|-------------------------------------------" . $COLORS{color_normal}. "\n";
    my $selection_number = &promptUser($COLORS{'color_gold'} . "Enter number of Charecter to Play: " . $COLORS{'color_normal'},1);
    return $list_users{$selection_number};
}

sub prompt_for_password {
    print $COLORS{'color_red'} . "Login to account: " . $GLOBALS{'account_username'} . $COLORS{color_normal} . "\n";
    my $entered_pass = &promptUser($COLORS{'color_red'} . "Enter Password: " . $COLORS{'color_normal'});
    return $entered_pass;
}

sub promptUser {
    my($promptString,$defaultValue) = @_;
    my $passwordprompt = 0;
    if ($defaultValue) {
        print "$promptString [", $defaultValue, "]: ";
    } else {
        print $promptString, ": ";
    }
    $| = 1;               # force a flush after our print
    if (!$defaultValue){
        system('stty','-echo');
    }
    chomp($_ = <STDIN>);         # get the input from STDIN (presumably the keyboard)
    if (!$defaultValue){
        system('stty','echo');
        print "\n";
    }
    if (!$defaultValue) {
        return $_ ? $_ : $defaultValue;    # return $_ if it has a value
    } else {
        if(!$_){ 
            return $defaultValue;
        }else{
            return $_;
        }
    }
}
