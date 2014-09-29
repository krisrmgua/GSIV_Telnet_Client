# play_gemstoneiv_data::Travel
package play_gemstoneiv_data::Travel;
use Data::Dumper;
use strict;

use vars qw/%TRAVEL %CURRENTLOC/;

%CURRENTLOC = (
        wl_tc => "This is the heart of the main square of Wehnimer's Landing.  The impromptu shops",
    );

%TRAVEL = (
        'bank' => {
            'wl_tc' => {
                'move' => [ "w", "go bank", "go arch", "deposit all", "check bal", "go arch", "out", "e" ], 
                'discription' => 'Go to bank and deposit all your coins', 
            },
        },
        'ice' => {
            'wl_tc' => {
                'move' => [ "nw","n","n","e","n","go gate","sw","s","s","s","s","s","sw","s","se","s","se","s","s","s","sw","s","s","se","se","se","se","se","e","e","ne","e","e","e","go trail","n","ne","e","se","e","ne","n","ne","n","n","n","go trunk","nw","ne","up","n","up","up","sleep 1","e","ne","ne","go glac","ne","n","e","ne","ne","e","ne","se","e","se","e","se","go chasm","down","e","d","n","n","ne","n","n","n","ne","sleep 8","ne","ne","sleep 8","n","n","ne","n","ne","n","go bridge","ne","e","sleep 8","e","sleep 8","se","sleep 8","se","e","e","e","ne","ne","e","e","sleep 8","e","sleep 8","ne","climb rock","e","sleep 8","ne","sleep 8","ne","ne","e","sleep 8","ne","n","sleep 8","n","ne","n","sleep 8","nw","w","go river","climb bank","ne","ne","go trail","sleep 8","n","climb tree","e","down","sleep 8","n","n","sleep 8","ne","ne","ne","sleep 8","w","ne","n","n","n","e","n","se","e","e","{give guard 5 silver}","go gate","n","n","n","n","n","n" ], 
                'discription' => 'Travel to Icemule', 
            },
        },
    );

## when you type .bank look if there is something in TRAVEL with that name if so  then DO a LOOK and grab the  output and then see if the OUTPUT matches anything in CURRENTLOC. If matches then get name of match like it would be wl_tc and look in .bank for movement for that match
### STILL ADD OVERRIDE IN play_gemstone.iv for player file to override
sub get_current_loc {
    my ($look_output,$CURRENTLOC_FUNC) = @_;
    my %CURRENTLOC_FUNC_HASH = %$CURRENTLOC_FUNC;
    my $cur_loc = "";
    for my $loc_name ( sort keys %CURRENTLOC_FUNC_HASH ){
        my $loc_disc = $CURRENTLOC_FUNC_HASH{$loc_name};
        if ($look_output =~ /$loc_disc/){
            $cur_loc = $loc_name;   
        }
    }
    return $cur_loc;
}

sub print_travel_list {
    my ($cur_loc,$TRAVEL_FUNC,$COLORS_FUNC) = @_;
    my %TRAVEL_FUNC_HASH = %$TRAVEL_FUNC;
    print $COLORS_FUNC->{'color_green'} . "################################## " . $COLORS_FUNC->{'color_gold'} . "TRAVEL" . $COLORS_FUNC->{'color_green'} . " ######################################\n" . $COLORS_FUNC->{'color_normal'};
    for my $script_name ( sort keys %TRAVEL_FUNC_HASH ){
        if($TRAVEL_FUNC_HASH{$script_name}{$cur_loc}{'discription'}){
            print "\t" . $COLORS_FUNC->{'color_gold'} . "." . $script_name . $COLORS_FUNC->{'color_normal'} . $COLORS_FUNC->{'color_bold'} . "\t-" . $TRAVEL_FUNC_HASH{$script_name}{$cur_loc}{'discription'} . "\n";
        }
    }
    print $COLORS_FUNC->{'color_green'} . "################################################################################\n" . $COLORS_FUNC->{'color_normal'};
}
1;
