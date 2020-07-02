# play_gemstoneiv_data::Main
package play_gemstoneiv_data::Main;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %TRAVEL %CURRENTLOC/;

%GLOBALS = (
    server_address => 'prime.gs4.game.play.net',
    server_port => '4900',
    sign_in_url => 'https://www.play.net/gs4/signin_needed.asp',
    sign_in_url_home => 'https://www.play.net/gs4/play/home.asp',
    sign_in_url_playing_wiz => 'https://www.play.net/gs4/play/playing_wiz.asp',
    sign_in_url_goplay_wiz => 'http://www.play.net/includes/common/play/goplay_wiz.asp',
    return_ok_page => '/gs4/account/account_info.asp',
    return_error_page => '/gs4/login_error.asp',
    sign_in_game => 'GS4',
    send_command => '',
    );

%COLORS = (
    color_gold => "\033[1;33m",
    color_black_on_light_blue => "\033[30m\033[46m",
    color_pink_on_yellow => "\033[1;35m\033[43m",
    color_yellow => "\033[33m",
    color_black_on_yellow => "\033[30m\033[43m",
    color_black_on_white => "\033[30m\033[47m",
    color_green => "\033[1;32m",
    color_dark_grey => "\033[1;30m",
    color_dark_grey_on_white => "\033[1;30m\033[47m",
    color_dark_green => "\033[32m",
    color_red => "\033[1;31m",
    color_blue => "\033[1;36m",
    color_purple => "\033[1;34m",
    color_pink => "\033[1;35m",
    color_dark_purple => "\033[35m",
    color_white_on_blue => "\033[1m\033[44m",
    color_white_on_red => "\033[1m\033[41m",
    color_bold => "\033[1m",
    color_normal => "\033[0m",
    color_sorc => "\033[38;5;162m",
    color_warr => "\033[38;5;94m",
    color_pal => "\033[38;5;81m",
    color_monk => "\033[38;5;214m",
    color_other => "\033[38;5;139m",
    color_ranger => "\033[38;5;106m",
    color_bard => "\033[38;5;226m",
    color_wiz => "\033[38;5;12m",
    color_light_grey => "\033[38;5;249m",
    color_dark_red => "\033[38;5;160m",
    );

sub get_session_key {
    my ($GLOBALS_FUNC) = @_;
    my %GLOBALS_FUNC_HASH = %$GLOBALS_FUNC;
    my $cj = HTTP::Cookies->new( autosave => 1, ignore_discard => 1 );
    my $mech = WWW::Mechanize->new( cookie_jar => $cj,  ssl_opts => { verify_hostname => 0 });
    $mech->get( $GLOBALS_FUNC_HASH{'sign_in_url'} );
    $mech->submit_form( form_name => 'signin', fields => {
        return_okay_page => $GLOBALS_FUNC_HASH{'return_ok_page'},
        return_error_page => $GLOBALS_FUNC_HASH{'return_error_page'},
        remember_account => '1',
        remember_password => '1',
        account_name => $GLOBALS_FUNC_HASH{'account_username'},
        account_password => $GLOBALS_FUNC_HASH{'password'},
        submit => 'CONTINUE',
    });
    #print $mech->content();
    $mech->get( $GLOBALS_FUNC_HASH{'sign_in_url_home'} );
    $mech->submit_form( form_name => 'form1', fields => {
        managesub => '0',
        gameName => '0',
        instanceID => '0',
        game => $GLOBALS_FUNC_HASH{'sign_in_game'},
        charID => $GLOBALS_FUNC_HASH{'player_id'},
        frontend => 'wizard',
        goplaybutton => 'GO PLAY!',
    });
    #print $mech->content();
    $mech->get( $GLOBALS_FUNC_HASH{'sign_in_url_playing_wiz'} );
    $mech->get( $GLOBALS_FUNC_HASH{'sign_in_url_goplay_wiz'} );
    my $key = $mech->content();
    $key =~ m/KEY=(.*)/;
    my $rec_key = $1;
    return $rec_key;
}

sub process_line {
    my $line = shift;
    chomp($line);
    if($line =~ /(^>\s*$)/){
        return "";
    }elsif($line =~ /^(\w)>\s*$/){
        return $1 . ">";
    }elsif($line =~ /^>/){
        substr($line, 0, 1) = "";
        return $line . "\n";
    }else{
        return $line . "\n";
    }
}

sub save_command_file {
    my ($command,$path,$GLOBALS_FUNC) = @_;
    my %GLOBALS_FUNC_HASH = %$GLOBALS_FUNC;
    chomp($command);
    my $filename = $path . "/play_gemstoneiv_data/input_" . $GLOBALS_FUNC_HASH{'charecter'} . ".dat";
    open(my $fh,'>'.$filename) or die "Could not open file '$filename' $!";
    print $fh "$command";
    close $fh;
}

sub read_command_file {
    my ($path,$GLOBALS_FUNC) = @_;
    my %GLOBALS_FUNC_HASH = %$GLOBALS_FUNC;
    my $filename = $path . "/play_gemstoneiv_data/input_" . $GLOBALS_FUNC_HASH{'charecter'} . ".dat";
    open (my $fh, $filename) or die "Could not open file '$filename' $!";
    my $command = <$fh>;
    close $fh;
    chomp($command);
    if($command =~ /^\./){substr($command, 0, 1) = "";}
    return $command;
}

sub run_command_grab_lines {
    my ($command,$passes,$socket) = @_;
    my $output_data = "";
    $socket->send("$command\n");
    my $pass = 0;
    while ($pass < $passes){
        $output_data .= $socket->getline();
        $pass++;
    }
    return $output_data;
}

1;
