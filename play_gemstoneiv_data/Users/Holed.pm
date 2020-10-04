# play_gemstoneiv_data::Users::Holed
package play_gemstoneiv_data::Users::Holed;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
%COLORS = (
    %play_gemstoneiv_data::Main::COLORS,
);
%GLOBALS = (
    charecter			=> 'Holed',
    account_username		=> 'KRISRMGUA18',
    player_id			=> 'W_KRISRMGUA18_000',
    player_weapon1		=> 'runestaff',
    player_weapon2		=> 'rune belt',
    player_cloak		=> 'cloak',
    player_backpack1		=> 'pack',
    player_backpack2		=> 'cloak',
    );

%HIGHLIGHT_ITEMS = (
        'my_weapons' => { '(an ash vultite-capped runestaff)' => "color_gold" },
    );

%SCRIPTS = (
        'rem' => [ "tap my $GLOBALS{'player_weapon2'}" ],
        'wear' => [ "clench my $GLOBALS{'player_weapon1'}" ],
        'get' => [ "open my $GLOBALS{'player_backpack1'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}"  ],
        'get2' => [ "open my $GLOBALS{'player_backpack2'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack2'}", "close my $GLOBALS{'player_backpack2'}"  ],
        's' => [ "clench my $GLOBALS{'player_weapon1'}", "get my knife from my shirt", "kneel", "skin {pv1} with my knife", "stand", "put my knife in my shirt", "tap my $GLOBALS{'player_weapon2'}", "loot" ],
        'look' => [ "prepare 116", "cast {pv1}" ],
        'tran' => [ "prepare 225", "cast {pv1}" ],
        'c' => [ "INCANT 302" ],
        'sanc' => [ "prepare 213", "cast" ],
        'msanc' => [ "prepare 220", "cast" ],
        'bread' => [ "prepare 203", "summon peppercorn flatbread", "give flatbread to {pv1}" ],
        'buff' => [ "prepare 219", "cast", "sleep 5", "prepare 218", "cast", "sleep 20", "prepare 215", "cast", "sleep 20", "prepare 211", "cast", "sleep 5", "prepare 107", "cast", "sleep 5", "prepare 103", "cast", "sleep 5", "prepare 202", "cast", "sleep 5", "prepare 102", "cast", "sleep 5", "prepare 101", "cast", "sleep 5", "prepare 303", "cast", "sleep 20", "prepare 307", "cast", "sleep 5", "prepare 310", "cast", "sleep 20", "prepare 313", "cast" ],
    );

%TRAVEL = (
        'locker' => {
            'ice_tc' => {
                #'move' => [ "e", "e", "s", "go hall", "e", "e", "e", "go cur", "open locker" ],
                'move' => [ "s", "s", "s", "s", "go path", "go gate", "go ent", "go arch", "go mural", "go open", "open locker" ],
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
