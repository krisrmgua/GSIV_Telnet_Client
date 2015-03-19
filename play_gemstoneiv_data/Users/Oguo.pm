# play_gemstoneiv_data::Users::Oguo
package play_gemstoneiv_data::Users::Oguo;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0 %SCRIPTS %TRAVEL %CURRENTLOC/;
%COLORS = (
    %play_gemstoneiv_data::Main::COLORS,
);
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
        'buff' => [ "prepare 1130", "cast", "sleep 5", "prepare 1125", "cast", "sleep 20", "prepare 120", "cast", "sleep 5", "prepare 1119", "cast", "sleep 20", "prepare 219", "cast", "sleep 5", "prepare 218", "cast", "sleep 20", "prepare 115", "cast", "sleep 5", "prepare 215", "cast", "sleep 20", "prepare 211", "cast", "sleep 5", "prepare 1109", "cast", "sleep 20", "prepare 107", "cast", "sleep 5", "prepare 103", "cast", "sleep 5", "prepare 202", "cast", "sleep 5", "prepare 102", "cast", "sleep 5", "prepare 101" ],
    );

%TRAVEL = (
        'empath' => {
            'ice_tc' => {
                'move' => [ "n", "e", "ne", "se", "e", "go guild", "go iron door", "go glass door", "go arch", "ask henna about checkin", "go arch", "n", "n", "e", "go annex" ],
                'discription' => 'Go to Empath Guild',
            },
        },
 );

1;
