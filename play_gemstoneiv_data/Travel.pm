# play_gemstoneiv_data::Travel
package play_gemstoneiv_data::Travel;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %TRAVEL %CURRENTLOC/;

%CURRENTLOC = (
        wl_tc => "This is the heart of the main square of Wehnimer's Landing.  The impromptu shops",
        wl_gem => "Inside the Gemcutter's shop, you see two glass showcases holding jewelry",
        wl_fur => "This is the large front room of the furrier's shop.  Roughly hewn planks",
        wl_glacier => "The ice field is almost big enough to be called a glacier, except that the conditions",
        wl_locksmith => "The backroom of the locksmith's shop is stark, and lit by a single tallow candle.",
        wl_alchemist => "Blackened from a previous mishap with fire, the wooden table in one corner of",
        wl_pawn => "This little pawnshop is somewhat cheerier than you would expect, presided over by",
        wl_ants => "There is barely room to walk between the walls of solid stone that narrow to a crack",
        wl_grave_ice_room => "This room is dominated by a giant slab of ice.  There is a chill",
        wl_silvergate_locker => "Silvergate, Member's Lockers",
        wl_grave_outside_gate => "A massive bronze gate spans the path, blocking the way north.",
        wl_grave_crypt => "The entry foyer to this enormous granite crypt is stark, adorned only",
        wl_voln => "A well maintained and healthy garden occupies the entirety of the courtyard.  The air here is cool and crisp",
        wl_war_guild => "This appealing rest spot sits directly before the steps leading to the Guild Hall door.",
        ice_tc => "The bustling town comes together in this square.  Halflings dressed in varying fashions stand about, some chattering happily",
        ice_gem => "Apprentices, all lined up in a row at a short steel counter, work",
        ice_locker1 => "are standing in a cramped room",
        ice_locker2 => "A small oil lamp provides a bright light as it reflects from the walls.",
        ice_voln => "Alpine flowerbeds ring this tucked-away courtyard, their bright colors a feast",
        ice_pawn => "Stark wooden floorboards creak under the weight of stacks of bundled weapons and leather.  Perched",
        ice_fur => "Stacks of hides and pelts cover the floor in this cramped shop, leaving a narrow trail to the counter.",
        ice_lock => "The walls of this small room are lined with small, gold-framed cases holding some of Blackfinger's finer wares.  Ranging",
        ice_emp_gld => "Intricate marquetry of naturally hued woods, incorporating palest pine",
    );

%TRAVEL = (
        'tc' => {
            'wl_grave_outside_gate' => {
                'move' => [ "go path", "go trail", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "sw", "s", "w", "go trail", "s", "sw", "w", "go bridge", "w", "w", "nw", "n", "n", "n", "n", "n", "ne", "go gate", "s", "w", "s", "s", "se" ],
                'discription' => 'Go to WL TC', 
            },
            'wl_alchemist' => {
                'move' => [ "w", "o", "s", "s", "s", "w", "w", "w", "w", "w", "w", "n", "n", "n", "n", "w", "n", "n", "w", "w", "w", "w", "w", "w", "w", "w", "s", "s", "se" ],
                'discription' => 'Go to WL TC', 
            },
            'wl_locksmith' => {
                'move' => [ "go door", "o", "n", "n", "w", "w", "w", "w", "w", "w", "s", "s", "se" ],
                'discription' => 'Go to WL TC', 
            },
            'wl_silvergate_locker' => {
                'move' => [ "close locker", "go cur", "go stair", "o", "go door", "go arch door", "go gate", "e", "e", "ne" ],
                'discription' => 'Go to WL TC', 
            },
            'wl_ants' => {
                'move' => [ "go crack","n","w","climb rubble","n","climb rope","s" ],
                'discription' => 'Go to WL TC',
            },
            'ice_locker1' => {
                'move' => [ "close locker", "go cur", "w", "w", "w", "o", "n", "w", "w" ],
                'discription' => 'Go to Icemule TC', 
            },
            'ice_locker2' => {
                'move' => [ "close locker", "go open", "go mural", "o", "o", "o", "go path", "n", "n", "n", "n" ],
                'discription' => 'Go to Icemule TC', 
            },
            'wl_gem' => {
                'move' => [ "o", "w", "n", "n", "n", "ne" ], 
                'discription' => 'Go to WL TC', 
            },
            'ice_gem' => {
                'move' => [ "o", "n", "n", "w" ], 
                'discription' => 'Go to Icemule TC', 
            },
            'wl_pawn' => {
                'move' => [ "o", "n", "n", "w", "w", "w", "w", "w", "w", "w", "w", "s", "s", "se" ], 
                'discription' => 'Go to Icemule TC', 
            },
            'ice_pawn' => {
                'move' => [ "o", "go stairs", "w", "nw", "ne", "e", "n", "w", "w", "w", "w" ], 
                'discription' => 'Go to Icemule TC', 
            },
            'wl_glacier' => {
                'move' => [ "sw","sw","w","down","down","s","down","sw","se","go trunk","s","s","s","sw","s","sw","w","nw","w","sw","s","go trail","w","w","w","sw","w","w","nw","nw","nw","nw","nw","n","go path","ne","n","n","n","nw","n","nw","n","ne","n","n","n","n","n","ne","go gate","s","w","s","s","se" ], 
                'discription' => 'Go to WL TC', 
            },
            'wl_fur' => {
                'move' => [ "o", "w", "s", "s", "se" ], 
                'discription' => 'Go to WL TC', 
            },
            'ice_fur' => {
                'move' => [ "o", "nw", "ne", "e", "n", "w", "w", "w", "w" ], 
                'discription' => 'Go to Icemule TC', 
            },
            'ice_lock' => {
                'move' => [ "go door", "out", "n", "w" ], 
                'discription' => 'Go to Icemule TC', 
            },
            'ice_emp_gld' => {
                'move' => [ "out", "w", "s", "s", "go glass door", "go iron door", "go street", "w", "nw", "sw", "w", "s" ],
                'discription' => 'Go to Icemule TC',
            },
            'wl_voln' => {
                'move' => [ "w", "w", "w", "go trail", "s", "s", "sw", "w", "go bridge", "w", "w", "nw", "n", "n", "n", "n", "n", "ne", "go gate", "s", "w", "s", "s", "se" ],
                'discription' => 'Go to Wehnimer\'s Landing TC',
            },
            'ice_voln' => {
                'move' => [ "go gate", "sw", "w", "s" ],
                'discription' => 'Go to Icemule TC',
            },
            'wl_war_guild' => {
                'move' => [ "sw", "se", "go port", "s", "w", "w", "w", "w", "w", "w", "s", "s", "se" ], 
                'discription' => 'Go to WL TC', 
            },
        },
        'iceroom' => {
            'wl_grave_crypt' => {
                'move' => [ "go arch", "e", "say 'shadow bind my soul'", "s", "go ramp", "n", "d", "n", "go corridor", "ne", "ne", "go pile", "d", "d", "e", "n", "n", "go grating", "d", "d", "n", "n", "ne", "go stair" ], 
                'discription' => 'Go to ice room ( an arch wight 20U )', 
            },
        },
        'alch' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "e", "e", "e", "e", "e", "e", "e", "s", "s", "e", "s", "s", "s", "s", "e", "e", "e", "e", "e", "e", "n", "n", "n", "go alc", "e" ],
                'discription' => 'Go to Alchemist', 
            },
        },
        'grave' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "n", "go gate", "sw", "s", "s", "s", "s", "s", "se", "e", "e", "go bridge", "e", "ne", "n", "go trail", "e", "e", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "ne", "n", "go trail", "go path", "go gate", "climb gate", "jump", "go crypt" ], 
                'discription' => 'Go to Graveyard Crypt', 
            },
            'wl_grave_ice_room' => {
                'move' => [ "go stair", "sw", "s", "s", "u", "u", "go grating", "o", "s", "w", "u", "u", "u", "sw", "sw", "go corridor", "s", "u", "s", "go ramp", "n", "go portal", "w", "go arch" ], 
                'discription' => 'Go to Graveyard Crypt', 
            },
        },
        'voln' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "n", "go gate", "sw", "s", "s", "s", "s", "s", "se", "e", "e", "go bridge", "e", "ne", "n", "n", "go trail", "e", "e", "e" ], 
                'discription' => 'Go to Voln', 
            },
            'ice_tc' => {
                'move' => [ "n", "e", "ne", "go gate" ], 
                'discription' => 'Go to Voln', 
            },
        },        
        'lock' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "e", "e", "e", "e", "e", "s", "s", "go door", "go door" ], 
                'discription' => 'Go to Town Locksmith', 
            },
            'ice_tc' => {
                'move' => [ "e", "s", "go store", "go door" ], 
                'discription' => 'Go to Town Locksmith', 
            },
        },
        'pawn' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "e", "e", "e", "e", "e", "e", "e", "s", "s", "go shop" ], 
                'discription' => 'Go to Pawnshop', 
            },
            'ice_tc' => {
                'move' => [ "e", "e", "e", "e", "s", "w", "sw", "se", "e", "climb stairs", "go door" ], 
                'discription' => 'Go to Pawnshop', 
            },
        },
        'fur' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "go fur shop" ], 
                'discription' => 'Go to Furrier', 
            },
            'ice_tc' => {
                'move' => [ "e", "e", "e", "e", "s", "w", "sw", "se", "go fur" ], 
                'discription' => 'Go to Furrier', 
            },
        },
        'gem' => {
            'wl_tc' => {
                'move' => [ "sw", "s", "s", "s", "e", "go shop" ], 
                'discription' => 'Go to Gemshop', 
            },
            'ice_tc' => {
                'move' => [ "e", "s", "s", "go gem" ], 
                'discription' => 'Go to Gemshop', 
            },
        },
        'bank' => {
            'wl_tc' => {
                'move' => [ "w", "go bank", "go arch", "deposit all", "check bal", "go arch", "out", "e" ], 
                'discription' => 'Go to bank and deposit all your coins', 
            },
            'ice_tc' => {
                'move' => [ "e", "go bank", "deposit all", "check bal", "out", "w" ], 
                'discription' => 'Go to bank and deposit all your coins', 
            },
        },
        'ants' => {
            'wl_tc' => {
                'move' => [ "go well","climb rope","s","climb rubble","e","s","go crack" ],
                'discription' => 'Go to Ants',
            },
        },
        'glac' => {
            'wl_tc' => {
                'move' => [ "nw","n","n","e","n","go gate","sw","s","s","s","s","s","sw","s","se","s","se","s","s","s","sw","s","s","se","se","se","se","se","e","e","ne","e","e","e","go trail","n","ne","e","se","e","ne","n","ne","n","n","n","go trunk","nw","ne","up","n","up","up","sleep 1","e","ne","ne","go glac" ], 
                'discription' => 'Go to Glacier', 
            },
        },
        'ice' => {
            'wl_tc' => {
                'move' => [ "nw","n","n","e","n","go gate","sw","s","s","s","s","s","sw","s","se","s","se","s","s","s","sw","s","s","se","se","se","se","se","e","e","ne","e","e","e","go trail","n","ne","e","se","e","ne","n","ne","n","n","n","go trunk","nw","ne","up","n","up","up","sleep 1","e","ne","ne","go glac","ne","n","e","ne","ne","e","ne","se","e","se","e","se","go chasm","down","e","d","n","n","ne","n","n","n","ne","sleep 8","ne","ne","sleep 8","n","n","ne","n","ne","n","go bridge","ne","e","sleep 8","e","sleep 8","se","sleep 8","se","e","e","e","ne","ne","e","e","sleep 8","e","sleep 8","ne","climb rock","e","sleep 8","ne","sleep 8","ne","ne","e","sleep 8","ne","n","sleep 8","n","ne","n","sleep 8","nw","w","go river","climb bank","ne","ne","go trail","sleep 8","n","climb tree","e","down","sleep 8","n","n","sleep 8","ne","ne","ne","sleep 8","w","ne","n","n","n","e","n","se","e","e","{give guard 5 silver}","go gate","n","n","n","n","n","n" ], 
                'discription' => 'Travel to Icemule', 
            },
        },
        'wl' => {
            'ice_tc' => {
                'move' => [ "s","s","s","s","s","go gate","s","w","w","nw","s","w","s","s","s","sw","e","sleep 8","sw","sw","sw","sleep 8","s","s","climb branch","w","down","s","go trail","sleep 8","sw","sw","climb bank","s","e","se","sleep 8","s","sw","s","sleep 8","s","sw","sleep 8","w","sleep 8","sw","sw","sleep 8","sw","sleep 8","w","climb rockslide","sleep 8","sw","sleep 8","w","sleep 8","w","w","sw","sw","w","w","w","nw","sleep 8","nw","sleep 8","w","sleep 8","w","sw","go bridge","s","sw","s","sw","s","s","sleep 8","sw","sw","sleep 8","sw","s","s","s","sw","s","s","up","w","up","up","sw","w","n","nw","w","n","w","sw","sw","w","s","sw","sw","sw","sw","w","down","down","s","down","sw","se","go trunk","s","s","s","sw","s","sw","w","nw","w","sw","s","go trail","w","w","w","sw","w","w","nw","nw","nw","nw","nw","n","go path","ne","n","n","n","nw","n","nw","n","ne","n","n","n","n","n","ne","go gate","s","w","s","s","se" ], 
                'discription' => 'Travel to Wehnimer\'s Landing', 
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
            print "\t" . $COLORS_FUNC->{'color_gold'} . "." . $script_name . $COLORS_FUNC->{'color_normal'} . $COLORS_FUNC->{'color_bold'} . "\t\t-" . $TRAVEL_FUNC_HASH{$script_name}{$cur_loc}{'discription'} . "\n";
        }
    }
    print $COLORS_FUNC->{'color_green'} . "################################################################################\n" . $COLORS_FUNC->{'color_normal'};
}
1;
