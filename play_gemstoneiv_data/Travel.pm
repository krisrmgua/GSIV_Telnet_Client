# play_gemstoneiv_data::Travel
package play_gemstoneiv_data::Travel;
use Data::Dumper;
use strict;

use vars qw/%TRAVEL %CURRENTLOC/;

%CURRENTLOC = (
        wl_tc => 'This is the heart of the main square of Wehnimer\'s Landing.  The impromptu shops',
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

1;
