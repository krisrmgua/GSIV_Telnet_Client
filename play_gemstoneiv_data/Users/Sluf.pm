# play_gemstoneiv_data::Users::Sluf
package play_gemstoneiv_data::Users::Sluf;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
%COLORS = (
    %play_gemstoneiv_data::Main::COLORS,
);
%GLOBALS = (
    charecter			=> 'Sluf',
    account_username		=> 'KRISRMGUA5',
    player_id			=> 'W_KRISRMGUA5_000',
    player_weapon1		=> 'sword',
    player_skin_knife1		=> 'knife',
    player_skin_sheath1		=> 'shirt',
    player_sheath		=> 'trimmed sheath',
    player_shield		=> 'shield',
    player_cloak		=> 'cloak',
    player_backpack1		=> 'backpack',
    player_backpack2		=> 'cloak',
    );

%HIGHLIGHT_ITEMS = (
        'my_weapons' => { '(an ash vultite-capped runestaff)' => "color_gold" },
    );

%SCRIPTS = (
        'rem' => [ "open my $GLOBALS{'player_sheath'}", "get my $GLOBALS{'player_weapon1'}", "remove my $GLOBALS{'player_shield'}" ],
        'wear' => [ "wear my $GLOBALS{'player_shield'}", "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath'}" ],
        'get' => [ "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath'}", "open my $GLOBALS{'player_backpack1'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack1'}", "get my $GLOBALS{'player_weapon1'}", "close my $GLOBALS{'player_backpack1'}"  ],
        'get2' => [ "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath'}", "open my $GLOBALS{'player_backpack2'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack2'}", "get my $GLOBALS{'player_weapon1'}", "close my $GLOBALS{'player_backpack2'}"  ],
        's' => [ "put my $GLOBALS{'player_weapon1'} in my $GLOBALS{'player_sheath'}", "get my $GLOBALS{'player_skin_knife1'} from my $GLOBALS{'player_skin_sheath1'}", "kneel", "skin {pv1} with my $GLOBALS{'player_skin_knife1'}", "stand", "put my $GLOBALS{'player_skin_knife1'} in my $GLOBALS{'player_skin_sheath1'}", "get my $GLOBALS{'player_weapon1'}", "loot" ],
        'c' => [ "INCANT 302" ],
        'buff' => [ "prepare 101", "cast", "sleep 5", "prepare 1601", "cast" ],
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
                'move' => [ "sw", "s", "s", "s", "e", "go shop", "remove $GLOBALS{'player_backpack1'}", "sell $GLOBALS{'player_backpack1'}", "o", "w", "n", "n", "n", "n", "n", "n", "n", "e", "go shop", "sell $GLOBALS{'player_backpack1'}", "wear my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}", "o", "w", "s", "s", "se" ],
                'discription' => "Sell Everything in $GLOBALS{'player_backpack1'}",
            },
        },
 );

1;
