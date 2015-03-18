# play_gemstoneiv_data::Users::Oguo
package play_gemstoneiv_data::Users::Oguo;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;

%GLOBALS = (
    charecter			=> 'Oguo',
    account_username		=> 'KRISRMGUA',
    player_id			=> 'W_KRISRMGUA_W000',
    player_weapon1		=> 'runestaff',
    player_weapon2		=> 'rune wristlet',
    player_cloak		=> 'cloak',
    player_backpack1		=> 'backpack',
    player_backpack2		=> 'cloak',
    );

%HIGHLIGHT_ITEMS = (
        'my_weapons' => { '(a tanik vultite-capped runestaff)' => "color_gold" },
    );

%SCRIPTS = (
        'rem' => [ "tap my $GLOBALS{'player_weapon2'}" ],
        'wear' => [ "clench my $GLOBALS{'player_weapon1'}" ],
        'trolls' => [ "incant 1125" ],
    );

%CURRENTLOC = (
        ice_emp_gld => "Intricate marquetry of naturally hued woods, incorporating palest pine",
    );

%TRAVEL = (
        'empath' => {
            'ice_tc' => {
                'move' => [ "n", "e", "ne", "se", "e", "go guild", "go iron door", "go glass door", "go arch", "ask henna about checkin", "go arch", "n", "n", "e", "go annex" ],
                'discription' => 'Go to Empath Guild',
            },
        },
        'tc' => {
            'ice_emp_gld' => {
                'move' => [ "out", "w", "s", "s", "go glass door", "go iron door", "go street", "w", "nw", "sw", "w", "s" ],
                'discription' => 'Go to TC',
            },
        },
 );

1;
