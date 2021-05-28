# play_gemstoneiv_data::Users::Curii
package play_gemstoneiv_data::Users::Curii;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
%COLORS = (
    %play_gemstoneiv_data::Main::COLORS,
);
%GLOBALS = (
    charecter			=> 'Curii',
    account_username		=> 'KRISRMGUA',
    player_id			=> 'W_KRISRMGUA_019',
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
        'get' => [ "open my $GLOBALS{'player_backpack1'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack1'}", "close my $GLOBALS{'player_backpack1'}"  ],
        'get2' => [ "open my $GLOBALS{'player_backpack2'}", "get {pv1}", "put my {pv1} in my $GLOBALS{'player_backpack2'}", "close my $GLOBALS{'player_backpack2'}"  ],
        'trolls' => [ "incant 1125" ],
        's' => [ "clench my $GLOBALS{'player_weapon1'}", "get my knife from my shirt", "kneel", "skin {pv1} with my knife", "stand", "put my knife in my shirt", "tap my $GLOBALS{'player_weapon2'}", "loot" ],
        'look' => [ "prepare 116", "cast {pv1}" ],
        'tran' => [ "prepare 225", "cast {pv1}" ],
        'sanc' => [ "prepare 213", "cast" ],
        'fog' => [ "prepare 130", "cast" ],
        'herbs' => [ "{print}$COLORS{'color_green'}##################### $COLORS{'color_gold'}HERBS$COLORS{'color_green'} ######################$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb1 \t -- $COLORS{'color_green'}Acantha Leaf$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb2 \t -- $COLORS{'color_blue'}Ambrominas Leaf$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb3 \t -- $COLORS{'color_blue'}Wolifrew Lichen$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb4 \t -- $COLORS{'color_blue'}Basal Moss$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb5 \t -- $COLORS{'color_black_on_light_blue'}Ephlox Moss$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb6 \t -- $COLORS{'color_black_on_light_blue'}Aloeas Stem$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb7 \t -- $COLORS{'color_black_on_light_blue'}Pothinir Grass$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb8 \t -- $COLORS{'color_yellow'}Cactacae Spine$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb9 \t -- $COLORS{'color_yellow'}Torban Leaf$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb10\t -- $COLORS{'color_yellow'}Haphip Root$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb11\t -- $COLORS{'color_black_on_yellow'}Calamia Fruit$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb12\t -- $COLORS{'color_black_on_yellow'}Woth Flower$COLORS{'color_normal'}","{print}$COLORS{'color_gold'}\t.cherb13\t -- $COLORS{'color_black_on_yellow'}Sovyn Clove$COLORS{'color_normal'}","{print}$COLORS{'color_green'}##################################################$COLORS{'color_normal'}" ],
        'cherb1' => [ "prepare 1118", "summon acantha leaf" ],
        'cherb2' => [ "prepare 1118", "summon ambrominas leaf" ],
        'cherb3' => [ "prepare 1118", "summon wolifrew lichen" ],
        'cherb4' => [ "prepare 1118", "summon basal moss" ],
        'cherb5' => [ "prepare 1118", "summon ephlox moss" ],
        'cherb6' => [ "prepare 1118", "summon aloeas stem" ],
        'cherb7' => [ "prepare 1118", "summon pothinir grass" ],
        'cherb8' => [ "prepare 1118", "summon cactacae spine" ],
        'cherb9' => [ "prepare 1118", "summon torban leaf" ],
        'cherb10' => [ "prepare 1118", "summon haphip root" ],
        'cherb11' => [ "prepare 1118", "summon calamia fruit" ],
        'cherb12' => [ "prepare 1118", "summon woth flower" ],
        'cherb13' => [ "prepare 1118", "summon sovyn clove" ],
        'c' => [ "incant 1106 channel" ],
        'c2' => [ "prepare 1106", "channel {pv1}" ],
        'v' => [ "incant 1101" ],
        'x' => [ "incant 1700" ],
        'buff' => [ "prepare 401", "cast", "sleep 5", "prepare 406", "cast", "sleep 5", "prepare 414", "cast", "sleep 5", "prepare 503", "cast", "sleep 5", "prepare 509", "cast" ],
        'ubuff' => [ "prepare 401", "cast {pv1}", "sleep 5", "prepare 406", "cast {pv1}", "sleep 5", "prepare 414", "cast {pv1}", "sleep 5", "prepare 503", "cast {pv1}", "sleep 5", "prepare 509", "cast {pv1}" ],
        'blurs' => [ "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast", "sleep 5", "prepare 911", "cast" ],
        'disk' => [ "prepare 511", "cast {pv1}" ],
        '1' => [ "prepare 401", "cast {pv1}" ],
        '2' => [ "prepare 406", "cast {pv1}" ],
        '3' => [ "prepare 414", "cast {pv1}" ],
        '4' => [ "prepare 503", "cast {pv1}" ],
        '5' => [ "prepare 509", "cast {pv1}" ],
        '6' => [ "prepare 911", "cast {pv1}" ],
    );

%TRAVEL = (
        'empath' => {
            'ice_tc' => {
                'move' => [ "n", "e", "ne", "se", "e", "go guild", "go iron door", "go glass door", "go arch", "ask henna about checkin", "go arch", "n", "n", "e", "go annex" ],
                'discription' => 'Go to Empath Guild',
            },
        },
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
