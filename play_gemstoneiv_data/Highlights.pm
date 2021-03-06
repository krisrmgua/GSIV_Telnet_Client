# play_gemstoneiv_data::Highlights
package play_gemstoneiv_data::Highlights;
use Data::Dumper;
use strict;

use vars qw/%GLOBALS %COLORS %HIGHLIGHT_NAMES %HIGHLIGHT_ITEMS %HIGHLIGHT_TEXT %HIGHLIGHT_TEXT0/;

%HIGHLIGHT_NAMES = (
    EMPATHS => {
        'Oguo' => "color_pink",
        'Silversoft' => "color_pink",
        'Chandrellia' => "color_pink",
        'Alosaka' => "color_pink",
        'Feldane' => "color_pink",
        'Erinaya' => "color_pink",
        'Mne' => "color_pink",
        'Gleda' => "color_pink",
        'Alisette' => "color_pink",
        'Ilande' => "color_pink",
        'Laeech' => "color_pink",
        'Baslim' => "color_pink",
        'Choss' => "color_pink",
        'Eryah' => "color_pink",
        'Nodr' => "color_pink",
        'Buskal' => "color_pink",
        'Deza' => "color_pink",
        'Zakoru' => "color_pink",
        'Jara' => "color_pink",
        'Missandai' => "color_pink",
        'Imagestar' => "color_pink",
        'Wimpen' => "color_pink",
        'Pixelia' => "color_pink",
        'Littlepuff' => "color_pink",
        'Marigold' => "color_pink",
        'Killerhealer' => "color_pink",
        'Jinbei' => "color_pink",
        'Jynai' => "color_pink",
        'Poggin' => "color_pink",
        'Sarayva' => "color_pink",
        'Hagren' => "color_pink",
        'Martyle' => "color_pink",
        'Tranquia' => "color_pink",
        'Vaelia' => "color_pink",
        'Adonal' => "color_pink",
        'Psyryn' => "color_pink",
        'Sareyna' => "color_pink",
        'Adynai' => "color_pink",
        'Failith' => "color_pink",
        'Illane' => "color_pink",
        'Chemaine' => "color_pink",
        'Kahlay' => "color_pink",
        'Ayi' => "color_pink",
        'Concise' => "color_pink",
        'Synz' => "color_pink",
        'Maylan' => "color_pink",
        'Brewbane' => "color_pink",
        'Skarrd' => "color_pink",
        'Rainwalker' => "color_pink",
        'Bloodbeerd' => "color_pink",
        'Mujtahid' => "color_pink",
        'Raxtin' => "color_pink",
        'Aleayah' => "color_pink",
        'Ketiosin' => "color_pink",
        'Dymonds' => "color_pink",
        'Traiva' => "color_pink",
        'Tanivar' => "color_pink",
        'Colomba' => "color_pink",
        'Awsibey' => "color_pink",
        'Kapera' => "color_pink",
        'Ufian' => "color_pink",
        'Blystar' => "color_pink",
        'Mystiq' => "color_pink",
        'Thorizain' => "color_pink",
        'Amaraline' => "color_pink",
        'Reginleit' => "color_pink",
        'Mitzeilendra' => "color_pink",
        'Featherstripe' => "color_pink",
        'Smilkee' => "color_pink",
        'Charmz' => "color_pink",
        'Zyv' => "color_pink",
        'Sidraa' => "color_pink",
        'Reagan' => "color_pink",
        'Wolfpath' => "color_pink",
        'Widzit' => "color_pink",
        'Taezel' => "color_pink",
        'Meryk' => "color_pink",
        'Bethlynne' => "color_pink",
        'Oscura' => "color_pink",
        'Alyssea' => "color_pink",
        'Patecatl' => "color_pink",
        'Bristles' => "color_pink",
        'Aeavenne' => "color_pink",
        'Scarletowl' => "color_pink",
        'Solstys' => "color_pink",
        'Tayre' => "color_pink",
        'Vujia' => "color_pink",
        'Velvette' => "color_pink",
        'Aiss' => "color_pink",
        'Empt' => "color_pink",
        },
    SORCERERS => {
        'Sazlo' => "color_sorc",
        'Sorci' => "color_sorc",
        },
    MONKS => {
        'NAMEHERE' => "color_monk",
        },
    PALADINS => {
        'Sluf' => "color_pal",
        },
    WARRIORS => {
        'Woory' => "color_warr",
        'Loads' => "color_warr",
        'Itiems' => "color_warr",
        'Itemim' => "color_warr",
        'Loads' => "color_warr",
        'Loods' => "color_warr",
        'Thub' => "color_warr",
        'Wardrob' => "color_warr",
        },
    CLERICS => {
        'Krisalan' => "color_dark_purple",
        'Clergi' => "color_dark_purple",
        'Asalie' => "color_dark_purple",
        'Kaedra' => "color_dark_purple",
        'Maerc' => "color_dark_purple",
        'Alditt' => "color_dark_purple",
        'Praytus' => "color_dark_purple",
        'Pristeen' => "color_dark_purple",
        },
    RANGERS => {
        'Seadoo' => "color_ranger",
        'Clu' => "color_ranger",
    },
    BARDS => {
        'Bardi' => "color_bard",
    },
    WIZARDS => {
        'Wiiz' => "color_wiz",
        'Trenus' => "color_wiz",
        'Zrik' => "color_wiz",
    },
    ROGUES => {
        'Svardin' => "color_dark_grey_on_white",
        'Popper' => "color_dark_grey",
        'Darkl' => "color_red",
        },
    MONSTERS => {
        'A fire salamander' => "color_red",
        'a fire salamander' => "color_red",
        'an arch wight' => "color_red",
        'An arch wight' => "color_red",
        'a wraith' => "color_red",
        'A wraith' => "color_red",
        'a cobra' => "color_red",
        'A cobra' => "color_red",
        'a greater ghoul' => "color_red",
        'A greater ghoul' => "color_red",
        'a hobgoblin' => "color_red",
        'A hobgoblin' => "color_red",
        'a death dirge' => "color_red",
        'A death dirge' => "color_red",
        'a revenant' => "color_red",
        'A revenant' => "color_red",
        'a phantom' => "color_red",
        'A phantom' => "color_red",
        'a skeleton' => "color_red",
        'A skeleton' => "color_red",
        'a lesser mummy' => "color_red",
        'A lesser mummy' => "color_red",
        'a goblin' => "color_red",
        'A goblin' => "color_red",
        'a lesser ghoul' => "color_red",
        'A lesser ghoul' => "color_red",
        'a greater spider' => "color_red",
        'A greater spider' => "color_red",
        'an arctic titan' => "color_red",
        'An arctic titan' => "color_red",
        'a frost giant' => "color_red",
        'A frost giant' => "color_red",
        'a ghost wolf' => "color_red",
        'A ghost wolf' => "color_red",
        'a rolton' => "color_red",
        'A rolton' => "color_red",
        'a rabid squirrel' => "color_red",
        'A rabid squirrel' => "color_red",
        'a kobold' => "color_red",
        'A kobold' => "color_red",
        'a cave gnome' => "color_red",
        'A cave gnome' => "color_red",
        'a giant ant' => "color_red",
        'A giant ant' => "color_red",
        },
    );

%HIGHLIGHT_ITEMS = (
        ##NPCs
        'NPCs' => { '(a \w+ Gate guard|a Silvermule courier|a dwarven recruiter)' => "color_yellow" },
        ##Valuable Items
        'white flasks' => { '(a white flask|a white lily-etched flask)' => "color_gold" },
        'gems' => { '(a piece of \w+ jasper|a \w*\s*\w*\s*\w+ amber|an \w+ garnet|a \w+ \w+ morganite stone|a \w+ topaz|an? \w+ crystal|a \w+ \w+\-\w+ bloodstone|a \w+ agate|a \w+ tourmaline|a \w+ zircon|a \w+ spinel|a \w+ sapphire|some \w+ \w+ coral|a \w*\s*\w+ wand|an \w+ wand|a \w+ amulet|ayanad crystal|a \w+ opal|a \w+ lockpick|a heavy quartz orb|a small statue|a white flask|a \w*\s*\w+ stone|an? \w*\s*\w+ gem|a \w*\s*\w*\s*\w*\s*\w+ quartz|a \w*\s*\w*\s*\w*\s*\w+ stickpin|a\s*\w*\s*\w+ cube|a piece of \w+ paper|a \w+ scroll|a \w*\s*\w*\s*\w+ talisman|a \w*\s*\w+ amethyst|a \w+ garnet|a \w*\s*\w*\s*\w+ earring|a \w*\s*\w*\s*\w*\s*\w+ statuette|a \w*\s*\w+ pendant|some \w+ lapis lazuli|a \w+ cordierite|a \w+ \w+ pitcher|a star ruby|a rough slab of silver|a drake greatsword|iridescent labradorite stone|a \w+ \w+ pearl|a \w+ \w+ essence shard)' => "color_gold" },
        'gems2' => { '(an uncut diamond|an uncut emerald|an uncut ruby)' => "color_pink_on_yellow" },
        'gold rings' => { '(a \w+ gold ring|gold ring)' => "color_red" },
        'coins' => { '(some silver coins)' => "color_gold" },
        'boxes' => { '(an?\s\w*-?\s*\w+\s\w+\sbox|an?\s\w*\s*\w+\s\w+\schest|an?\s\w*\s*\w+\s\w+\strunk|an?\s\w*\s*\w+\s\w+\scoffer|an?\s\w*\s*\w+\s\w+\sstrongbox)' => "color_red" },
        ##Skins
        'skins' => { '(a spider leg|a cobra skin|an ant larva|an ant pincer|a squirrel tail|a rolton pelt)' => "color_gold" },
        ##Herbs
        'herb_heal_1' => { '(acantha leaf)' => "color_green" },
        'herb_wound_1' => { '(ambrominas leaf|basal moss|wolifrew lichen)' => "color_blue" },
        'herb_wound_1b' => { '(rose\-marrow potion)' => "color_blue" },
        'herb_wound_2' => { '(ephlox moss|aloeas stem|pothinir grass)' => "color_black_on_light_blue" },
        'herb_scar_1' => { '(torban leaf|cactacae spine|haphip root|woth flower)' => "color_yellow" },
        'herb_scar_2' => { '(sovyn clove|calamia fruit)' => "color_black_on_yellow" },
    );

%HIGHLIGHT_TEXT = (
#You gather the remaining {name} coins.||{bold}You gather the remaining{normal}{gold} {name} {normal}{bold}coins{normal}.
#Also here:||{bold}Also here:{normal}
#The ghostly voice of {all}||{bold}The ghostly voice of {name}{normal}
#The monk approaches you and smirks slightly.  "{all}"||{yellow}The monk approaches you and smirks slightly.  "{name}"{normal}
#The monk puts a hand on your shoulder.  "{all}"||{yellow}The monk puts a hand on your shoulder.  "{name}"{normal}
#You feel recovered from your whirlwind flurry of strikes.||{whiteonblue}You feel recovered from your whirlwind flurry of strikes.{normal}
#You feel fully energetic again.||{whiteonblue}You feel fully energetic again.{normal}
#With a deep shudder and a shrieking scrape, the gate slowly opens wide enough to allow passage.||{whiteonblue}With a deep shudder and a shrieking scrape, the gate slowly opens wide enough to allow passage.{normal}
#The crystal amulet suddenly shatters!||{whiteonred}The crystal amulet suddenly shatters!{normal}
#gestures at you||{bold}gestures at you{normal}
        ##SYSTEM
        'room name' => { '^\!bb!(.*?)\]' => "color_bold" },
        'also_here' => { 'Also here:' => "color_other" },
        'just_arrived' => { 'just arrived' => "color_other" },
        'emplink' => { 'You sense a successful' => "color_white_on_red" },
        'emplink2' => { 'link has been forged between you' => "color_white_on_red" },
        'you_whisper' => { 'You quietly whisper to' => "color_white_on_blue" },
        'heads_ne' => { 'heads northeast' => "color_yellow" },
        'heads_nw' => { 'heads northwest' => "color_yellow" },
        'heads_sw' => { 'heads southwest' => "color_yellow" },
        'heads_se' => { 'heads southeast' => "color_yellow" },
        'heads_n' => { 'heads north' => "color_yellow" },
        'heads_s' => { 'heads south' => "color_yellow" },
        'heads_e' => { 'heads east' => "color_yellow" },
        'heads_w' => { 'heads west' => "color_yellow" },
        'moves' => { '(A .* scampers \w+!|A .* trots \w+!)' => "color_yellow" },
        'death' => { '(.*just bit the dust!|The death cry of \w+ echoes in your mind!)' => "color_bold" },
        'accept' => { 'Type ACCEPT to accept the offer or DECLINE to decline it.' => "color_white_on_red" },
        'coin' => { '(.*coins which you quickly pocket\.)' => "color_red" },
        'weapon_falls' => { '(The death dirge focuses its voice on your .* falls to the ground\.|\w+ falls to the ground\.)' => "color_white_on_red" },
        'weapon_unbless' => { '(Your \w*\s*\w*\s*\w*\s*\w+ returns to normal\.)' => "color_white_on_blue" },
        'weapon_bless' => { '(A searing white light enfolds your.*)' => "color_white_on_blue" },
        'monster_moves' => { '(An \w*\s*\w*\s*\w+ just arrived\.|An \w*\s*\w*\s*\w+ \w+ north\.|An \w*\s*\w*\s*\w+ \w+ northeast\.|An \w*\s*\w*\s*\w+ \w+ northwest\.|An \w*\s*\w*\s*\w+ \w+ south\.|An \w*\s*\w*\s*\w+ \w+ southeast\.|An \w*\s*\w*\s*\w+ \w+ southwest\.|An \w*\s*\w*\s*\w+ \w+ east\.|An \w*\s*\w*\s*\w+ \w+ west\.|An \w*\s*\w*\s*\w+ \w+ up\.|An \w*\s*\w*\s*\w+ \w+ down\.)' => "color_red" },
        ##Dies
        'dead_dies' => { '(body as it rises, disappearing into the heavens.|falls to the ground motionless|.*to the ground and dies|lets out a final scream and goes still.|screams evilly one last time and goes still.)' => "color_yellow" },
        ##SPEACH
        'nods' => { '^(.* nods .*)$' => "color_gold" },
        'says' => { '(.* says, \".*\"|.* say, \".*\")' => "color_yellow" },
        'asks' => { '(.* asks, \".*\"|.* ask, \".*\")' => "color_yellow" },
        'whispers' => { '(.* whispers, ".*")' => "color_white_on_blue" },
        'exclaims' => { '(.* exclaims, \".*\"|.* exclaim, \".*\")' => "color_yellow" },
        'thoughts' => { '(^\w+ !bb!\w+\]: \".*\"|.*The Symbol of Thought begins to burn in your mind and you hear.*)' => "color_yellow" },
        #HEALING
        'heals_you' => { '(\w+ meditates over you)' => "color_bold" },
        'goodshape' => { '(is in good shape|.* and find that .* has no apparent wounds\.|.* find that .* has no apparent injuries\.)' => "color_green" },
        'trollheal' => { '(.* your .*close and the bruises fade.|You begin to feel better as the bruises around your .* fade.|The bruises around your .* fade.|The twitching of your muscles seem once more under your control)' => "color_green" },
        'trollhealscar' => { '(.* your .*glows faintly white before fading altogether\.)' => "color_green" },
        'badcut' => { '(deep lacerations across \w+ back|deep lacerations across \w+ chest|fractured and bleeding \w+ \w+|deep lacerations across \w+ abdominal area|serious bleeding from \w+ abdominal area)' => "color_red" },
        'littlecut' => { '(minor cuts and bruises on \w+ back|minor cuts and bruises on \w+ \w+ \w+|minor bruises about the \w+|minor cuts and bruises on \w+ chest|strange case of muscle twitching|minor cuts and bruises on \s+ back)' => "color_yellow" },
         ##Waiting for Gate to Open or Boat ect
        'gate_opens' => { '(.*The bronze gate pops open, leaving.*|The gate shudders violently, and then, with a protesting screech.*|The huge gate shudders violently!  Dark red flakes.*|The ancient hinges of the gate creak loudly as they give way.  A chain halts.*)' => "color_white_on_blue" },
        'gate_budge' => { '(The gate budges a little more\.)' => "color_bold" },
        'gate_budge2' => { '(It might give any minute now!)' => "color_black_on_white" },
        ##Room Hidden Move To Locations
        'highlight_hid_loc1' => { 'willow trees\.\s*You also see a wooden sign and (a sturdy bridge)\.' => "color_bold" },
        'highlight_hid_loc2' => { 'gather new cargo\.\s*You also see (a sturdy bridge)'  => "color_bold" },
        'glacier' => { 'The ice field is almost big enough to be called (a glacier)'  => "color_bold" },
    );

%HIGHLIGHT_TEXT0 = (
        'heal' => { '(healing|Healing|healers|healer|Healers|Healer|heal|empaths|empath)' => "color_blue" },
        'body' => { '(the body of)' => "color_red" },
        'speaking' => { '(Speaking to you,)' => "color_black_on_yellow" },
    );

sub color_names {
    my ($line,$HIGHLIGHT_NAMES_FUNC,$COLORS_FUNC) = @_;
    my %HIGHLIGHT_NAMES_FUNC_HASH = %$HIGHLIGHT_NAMES_FUNC;
    for my $player_type_key ( sort keys %HIGHLIGHT_NAMES_FUNC_HASH ) {
        for my $player_name_key ( keys %{ $HIGHLIGHT_NAMES_FUNC_HASH{$player_type_key} } ) {
            if($line =~ /$player_name_key/){
                my $highlight_line = $COLORS_FUNC->{$HIGHLIGHT_NAMES_FUNC_HASH{$player_type_key}{$player_name_key}} . $player_name_key . $COLORS_FUNC->{'color_normal'};
                my $tmp_norm = $COLORS_FUNC->{'color_normal'};
                if($player_type_key eq "MONSTERS"){
                    $line =~ s/$player_name_key/$highlight_line!!NORMAL!!/g;
                }else{
                    $line =~ s/$player_name_key\'s/$highlight_line\'s/g;
                    $line =~ s/$player_name_key/$highlight_line/g;
                }
                $line =~ s/!!NORMAL!!/$tmp_norm/gi;
            }
        }
    }
    return $line;
}

sub color_items {
    my ($line,$HIGHLIGHT_ITEMS_FUNC,$COLORS_FUNC) = @_;
    my %HIGHLIGHT_ITEMS_FUNC_HASH = %$HIGHLIGHT_ITEMS_FUNC;
    for my $item_name_key ( sort keys %HIGHLIGHT_ITEMS_FUNC_HASH ) {
        for my $item_regex_key ( keys %{ $HIGHLIGHT_ITEMS_FUNC_HASH{$item_name_key} } ) {
            my @matches = $line =~ m/$item_regex_key/g;
            foreach my $match (@matches){
                my $highlight_line = $COLORS_FUNC->{$HIGHLIGHT_ITEMS_FUNC_HASH{$item_name_key}{$item_regex_key}} . $match . $COLORS_FUNC->{'color_normal'};
                $line =~ s/$match/$highlight_line/gi;
            }
        }
    }
    return $line;
}

sub color_text {
    my ($line,$HIGHLIGHT_TEXT_FUNC,$COLORS_FUNC) = @_;
    my %HIGHLIGHT_TEXT_FUNC_HASH = %$HIGHLIGHT_TEXT_FUNC;
    $line =~ s/\?/!qq!/gi;
    $line =~ s/\[/!bb!/gi;
    for my $item_name_key ( sort keys %HIGHLIGHT_TEXT_FUNC_HASH ) {
        for my $item_regex_key ( keys %{ $HIGHLIGHT_TEXT_FUNC_HASH{$item_name_key} } ) {
            my @matches = $line =~ m/$item_regex_key/g;
            foreach my $match (@matches){
                my $tmp_color1 = $COLORS_FUNC->{$HIGHLIGHT_TEXT_FUNC_HASH{$item_name_key}{$item_regex_key}};
                $tmp_color1 =~ s/\[/!bb!/gi;
                my $tmp_color2 = $COLORS_FUNC->{'color_normal'} ;
                $tmp_color2 =~ s/\[/!bb!/gi;
                my $highlight_line = $tmp_color1 . $match . $tmp_color2;
                $line =~ s/$match/$highlight_line/gi;
                #$line .= $tmp_color2;
            }
        }
    }
    $line =~ s/!qq!/\?/gi;
    $line =~ s/!bb!/\[/gi;
    return $line;
}

sub color_text_pre {
    my ($line,$HIGHLIGHT_TEXT0_FUNC,$COLORS_FUNC) = @_;
    my %HIGHLIGHT_TEXT0_FUNC_HASH = %$HIGHLIGHT_TEXT0_FUNC;
    $line =~ s/\?/!qq!/gi;
    $line =~ s/\[/!bb!/gi;
    for my $item_name_key ( sort keys %HIGHLIGHT_TEXT0_FUNC_HASH ) {
        for my $item_regex_key ( keys %{ $HIGHLIGHT_TEXT0_FUNC_HASH{$item_name_key} } ) {
            my @matches = $line =~ m/$item_regex_key/g;
            foreach my $match (@matches){
                my $tmp_color1 = $COLORS_FUNC->{$HIGHLIGHT_TEXT0_FUNC_HASH{$item_name_key}{$item_regex_key}};
                $tmp_color1 =~ s/\[/!bb!/gi;
                my $tmp_color2 = $COLORS_FUNC->{'color_normal'} ;
                $tmp_color2 =~ s/\[/!bb!/gi;
                my $highlight_line = $tmp_color1 . $match . $tmp_color2;
                $line =~ s/$match/$highlight_line/gi;
                $line .= $tmp_color2;
            }
        }
    }
    $line =~ s/!qq!/\?/gi;
    $line =~ s/!bb!/\[/gi;
    return $line;
}

1;
