# play_gemstoneiv_data::Users::Oguo
package play_gemstoneiv_data::Users::Fettle;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
%COLORS = (
    %play_gemstoneiv_data::Main::COLORS,
);
%GLOBALS = (
    charecter			=> 'Fettle',
    account_username		=> 'KRISRMGUA',
    player_id			=> 'W_KRISRMGUA_004',
    player_weapon1		=> 'maul',
    player_weapon2		=> 'dagger',
    player_sheath1		=> 'sheath',
    player_sheath2		=> 'harness',
    player_cloak		=> 'cloak',
    player_backpack1		=> 'pack',
    player_backpack2		=> 'cloak',
    );

%HIGHLIGHT_ITEMS = (
        'my_weapons' => { '(a tanik vultite-capped runestaff)' => "color_gold" },
    );

%SCRIPTS = (
        'rem' => [ "open my $GLOBALS{'player_sheath1'}", "get my $GLOBALS{'player_weapon1'} from my $GLOBALS{'player_sheath1'}", "close my $GLOBALS{'player_sheath1'}" ],
        'wear' => [ "open my $GLOBALS{'player_sheath1'}", "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath1'}", "close my $GLOBALS{'player_sheath1'}" ],
        'get' => [ "open my $GLOBALS{'player_backpack1'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}"  ],
        'get2' => [ "open my $GLOBALS{'player_backpack2'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack2'}", "close my $GLOBALS{'player_backpack2'}"  ],
        's' => [ "open my $GLOBALS{'player_sheath1'}", "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath1'}", "get my $GLOBALS{'player_weapon2'} from my $GLOBALS{'player_sheath2'}", "kneel", "skin {pv1} with my $GLOBALS{'player_weapon2'}", "stand", "put my $GLOBALS{'player_weapon2'} in my $GLOBALS{'player_sheath2'}", "get my $GLOBALS{'player_weapon1'} from my $GLOBALS{'player_sheath1'}", "close my $GLOBALS{'player_sheath1'}", "loot" ],
    );

%TRAVEL = (
        'guild' => {
            'wl_tc' => {
                'move' => [ "nw", "n", "n", "e", "e", "e", "e", "e", "e", "go fort", "go port", "nw", "ne", "go door", "n", "e", "go door", "ask bert about checkin", "go door", "w", "s", "go door" ],
                'discription' => 'Go to Warrior Guild',
            },
        },
        'locker' => {
            'wl_tc' => {
                #'move' => [ "e", "e", "s", "go hall", "e", "e", "e", "go cur", "open locker" ],
                #'move' => [ "s", "s", "s", "s", "go path", "go gate", "go ent", "go arch", "go mural", "go open", "open locker" ],
                'move' => [ "sw", "w", "w", "go path", "go door", "go oak door", "go boar", "d", "go cur", "open locker" ],
                'discription' => 'Go to Locker',
            },
        },
        'sell' => {
            'ice_tc' => {
                'move' => [ "e", "s", "s", "go gem", "remove $GLOBALS{'player_backpack1'}", "sell $GLOBALS{'player_backpack1'}", "o", "n", "n", "e", "e", "e", "s", "w", "sw", "se", "go fur", "sell $GLOBALS{'player_backpack1'}", "wear my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}", "o", "nw", "ne", "e", "n", "w", "w", "w", "w" ], 
                'discription' => "Sell Everything in $GLOBALS{'player_backpack1'}", 
            },
            'wl_tc' => {
                'move' => [ "sw", "s", "s", "s", "e", "go shop", "remove $GLOBALS{'player_backpack1'}", "sell $GLOBALS{'player_backpack1'}", "o", "w", "n", "n", "n", "n", "n", "n", "n", "e", "go shop", "sell $GLOBALS{'player_backpack1'}", "o", "e", "e", "e", "e", "e", "e", "e", "s", "s", "e", "s", "s", "s", "s", "e", "e", "e", "e", "e", "e", "n", "n", "n", "go alc", "e", "sell $GLOBALS{'player_backpack1'}", "wear my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}", "w", "o", "s", "s", "s", "w", "w", "w", "w", "w", "w", "n", "n", "n", "n", "w", "n", "n", "w", "w", "w", "w", "w", "w", "w", "w", "s", "s", "se" ], 
                'discription' => "Sell Everything in $GLOBALS{'player_backpack1'}", 
            },
        },
 );

1;
