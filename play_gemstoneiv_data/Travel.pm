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
                'move' => [ "w", "go bank", "go arch", "deposit all", "go arch", "out", "e" ], 
                'discription' => 'Go to bank and deposit all your coins', 
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
