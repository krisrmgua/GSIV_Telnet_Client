#!/usr/bin/perl
use warnings;
use strict;
use Data::Dumper;

my $warriors = "";
my $filename = 'warrior.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %warrior_hash;
   foreach (@list) {
     $warrior_hash{"$_"} = "1";
   }
   #print Dumper(\%warrior_hash);
   for(keys %warrior_hash){
     $warriors = $warriors . "		<h color=\"\@104\" text=\"$_\"/>\n";
   }
}
close(FH);

my $rogues = "";
$filename = 'rogue.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %rogues_hash;
   foreach (@list) {
     $rogues_hash{"$_"} = "1";
   }
   #print Dumper(\%rogues_hash);
   for(keys %rogues_hash){
     $rogues = $rogues . "		<h color=\"\@87\" text=\"$_\"/>\n";
   }
}
close(FH);

my $wizard = "";
$filename = 'wizard.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %wizard_hash;
   foreach (@list) {
     $wizard_hash{"$_"} = "1";
   }
   #print Dumper(\%wizard_hash);
   for(keys %wizard_hash){
     $wizard = $wizard . "		<h color=\"\@64\" text=\"$_\"/>\n";
   }
}
close(FH);

my $cleric = "";
$filename = 'cleric.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %cleric_hash;
   foreach (@list) {
     $cleric_hash{"$_"} = "1";
   }
   #print Dumper(\%cleric_hash);
   for(keys %cleric_hash){
     $cleric = $cleric . "		<h color=\"\@73\" text=\"$_\"/>\n";
   }
}
close(FH);

my $empath = "";
$filename = 'empath.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %empath_hash;
   foreach (@list) {
     $empath_hash{"$_"} = "1";
   }
   #print Dumper(\%empath_hash);
   for(keys %empath_hash){
     $empath = $empath . "		<h color=\"\@49\" text=\"$_\"/>\n";
   }
}
close(FH);

my $sorcerer = "";
$filename = 'sorcerer.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %sorcerer_hash;
   foreach (@list) {
     $sorcerer_hash{"$_"} = "1";
   }
   #print Dumper(\%sorcerer_hash);
   for(keys %sorcerer_hash){
     $sorcerer = $sorcerer . "		<h color=\"\@56\" text=\"$_\"/>\n";
   }
}
close(FH);

my $ranger = "";
$filename = 'ranger.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %ranger_hash;
   foreach (@list) {
     $ranger_hash{"$_"} = "1";
   }
   #print Dumper(\%ranger_hash);
   for(keys %ranger_hash){
     $ranger = $ranger . "		<h color=\"\@37\" text=\"$_\"/>\n";
   }
}
close(FH);

my $bard = "";
$filename = 'bard.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %bard_hash;
   foreach (@list) {
     $bard_hash{"$_"} = "1";
   }
   #print Dumper(\%bard_hash);
   for(keys %bard_hash){
     $bard = $bard . "		<h color=\"\@35\" text=\"$_\"/>\n";
   }
}
close(FH);

my $monk = "";
$filename = 'monk.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %monk_hash;
   foreach (@list) {
     $monk_hash{"$_"} = "1";
   }
   #print Dumper(\%monk_hash);
   for(keys %monk_hash){
     $monk = $monk . "		<h color=\"\@33\" text=\"$_\"/>\n";
   }
}
close(FH);

my $paladin = "";
$filename = 'paladin.txt';
open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   my %paladin_hash;
   foreach (@list) {
     $paladin_hash{"$_"} = "1";
   }
   #print Dumper(\%paladin_hash);
   for(keys %paladin_hash){
     $paladin = $paladin . "		<h color=\"\@70\" text=\"$_\"/>\n";
   }
}
close(FH);


my $file_top = '<settings client="1.0.1.26">
	<palette>
		<i id="0" color="#FFFF90"/>
		<i id="1" color="#FFD2A1"/>
		<i id="2" color="#FF9099"/>
		<i id="3" color="#FF6699"/>
		<i id="4" color="#FF3399"/>
		<i id="5" color="#FF00A1"/>
		<i id="6" color="#FF0000"/>
		<i id="7" color="#FF3300"/>
		<i id="8" color="#FF6600"/>
		<i id="9" color="#FF9000"/>
		<i id="10" color="#FFD200"/>
		<i id="11" color="#FFFF00"/>
		<i id="12" color="#33FF08"/>
		<i id="13" color="#39CC00"/>
		<i id="14" color="#399900"/>
		<i id="15" color="#296B00"/>
		<i id="16" color="#293900"/>
		<i id="17" color="#291808"/>
		<i id="18" color="#08007B"/>
		<i id="19" color="#333399"/>
		<i id="20" color="#336699"/>
		<i id="21" color="#2999A1"/>
		<i id="22" color="#4AE3B9"/>
		<i id="23" color="#33F390"/>
		<i id="24" color="#FFFFDE"/>
		<i id="25" color="#FFD6CE"/>
		<i id="26" color="#FFA0E6"/>
		<i id="27" color="#FF6BD2"/>
		<i id="28" color="#E916B3"/>
		<i id="29" color="#EA0ECC"/>
		<i id="30" color="#E70000"/>
		<i id="31" color="#AD0000"/>
		<i id="32" color="#E87400"/>
		<i id="33" color="#F89439"/>
		<i id="34" color="#E7BD18"/>
		<i id="35" color="#FFF793"/>
		<i id="36" color="#31E739"/>
		<i id="37" color="#39CE43"/>
		<i id="38" color="#298C31"/>
		<i id="39" color="#316339"/>
		<i id="40" color="#312931"/>
		<i id="41" color="#291831"/>
		<i id="42" color="#2108E7"/>
		<i id="43" color="#3129CE"/>
		<i id="44" color="#184AAD"/>
		<i id="45" color="#319CCE"/>
		<i id="46" color="#29D6CE"/>
		<i id="47" color="#29F7CE"/>
		<i id="48" color="#FFFFFF"/>
		<i id="49" color="#FFCEFB"/>
		<i id="50" color="#FF94F7"/>
		<i id="51" color="#E67BF7"/>
		<i id="52" color="#FB31FF"/>
		<i id="53" color="#FF00FB"/>
		<i id="54" color="#FF5E5E"/>
		<i id="55" color="#FF1717"/>
		<i id="56" color="#FF6B73"/>
		<i id="57" color="#FFA077"/>
		<i id="58" color="#E2CB6D"/>
		<i id="59" color="#949B0F"/>
		<i id="60" color="#00B529"/>
		<i id="61" color="#93FFB0"/>
		<i id="62" color="#005218"/>
		<i id="63" color="#104A39"/>
		<i id="64" color="#6262BD"/>
		<i id="65" color="#441477"/>
		<i id="66" color="#0000FF"/>
		<i id="67" color="#2108D6"/>
		<i id="68" color="#3163F7"/>
		<i id="69" color="#2994F7"/>
		<i id="70" color="#29CEFF"/>
		<i id="71" color="#65F9E9"/>
		<i id="72" color="#FFEFFF"/>
		<i id="73" color="#C698F7"/>
		<i id="74" color="#A008D6"/>
		<i id="75" color="#470062"/>
		<i id="76" color="#390852"/>
		<i id="77" color="#50185A"/>
		<i id="78" color="#4A2142"/>
		<i id="79" color="#4A1818"/>
		<i id="80" color="#523131"/>
		<i id="81" color="#7B3900"/>
		<i id="82" color="#5A4A31"/>
		<i id="83" color="#304000"/>
		<i id="84" color="#292129"/>
		<i id="85" color="#393939"/>
		<i id="86" color="#52525A"/>
		<i id="87" color="#73736B"/>
		<i id="88" color="#B5B5B5"/>
		<i id="89" color="#000000"/>
		<i id="90" color="#FFFFFF"/>
		<i id="91" color="#FFFFFF"/>
		<i id="92" color="#FFFFFF"/>
		<i id="93" color="#FFFFFF"/>
		<i id="94" color="#FFFFFF"/>
		<i id="95" color="#FFFFFF"/>
		<i id="96" color="#FFFFFF"/>
		<i id="97" color="#FFFFFF"/>
		<i id="98" color="#FFFFFF"/>
		<i id="99" color="#FFFFFF"/>
		<i id="100" color="#FFFFFF"/>
		<i id="101" color="#FFFFFF"/>
		<i id="102" color="#FFFFFF"/>
		<i id="103" color="#FFFFFF"/>
		<i id="104" color="#7C5843"/>
		<i id="105" color="#D39114"/>
		<i id="106" color="#404040"/>
		<i id="107" color="#FFFFFF"/>
		<i id="108" color="#FFFFFF"/>
		<i id="109" color="#FFFFFF"/>
	</palette>
	<presets>
		<p id="roomName" color="skin" bgcolor="skin" line="y"/>
		<p id="bold" color="@11" bgcolor=""/>
		<p id="speech" color="skin" bgcolor="skin"/>
		<p id="whisper" color="skin" bgcolor="skin"/>
		<p id="thought" color="skin" bgcolor="skin"/>
		<p id="watching" color="skin" bgcolor="skin"/>
		<p id="link" color="skin" bgcolor="skin" ulcolor="skin"/>
		<p id="selectedLink" color="skin" bgcolor="skin"/>
		<p id="command" color="skin" bgcolor="skin"/>
	</presets>
	<names>
		<h color="@0" text="Oguo" bgcolor="@14"/>
		<h color="@49" text="Tranquia"/>
		<h color="@49" text="Ellianna"/>
		<h color="@49" text="Traiva"/>
		<h color="@49" text="Servena"/>
		<h color="@49" text="Chandrellia"/>
		<h color="@49" text="Nykus"/>
		<h color="@49" text="Brianyel"/>
		<h color="@49" text="Raeggnar"/>
		<h text="Sluf" color="@89" bgcolor="@57"/>
		<h text="Clu" color="@89" bgcolor="@57"/>
		<h text="Loads" color="@89" bgcolor="@57"/>
		<h text="Woory" color="@89" bgcolor="@57"/>
		<h text="Trenus" color="@89" bgcolor="@57"/>
		<h text="Aiss" color="@89" bgcolor="@57"/>
		<h text="Sorci" color="@89" bgcolor="@57"/>
		<h text="Pristeen" color="@89" bgcolor="@57"/>
';

my $file_bottom = '	</names>

</settings>';


print $file_top;
print $warriors;
print $rogues;
print $wizard;
print $cleric;
print $empath;
print $sorcerer;
print $ranger;
print $bard;
print $monk;
print $paladin;
print $file_bottom;
