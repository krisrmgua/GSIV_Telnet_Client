#!/usr/bin/perl
use warnings;
use strict;

my $filename = "/root/GSIV_Telnet_Client/GemstoneIV/buildXMLstorm/names.txt";
my $outfile = "/root/GSIV_Telnet_Client/GemstoneIV/SMB/names.xml";
my $warriors = "";
my $rogues = "";
my $wizards = "";
my $clerics = "";
my $empaths = "";
my $sorcerers = "";
my $rangers = "";
my $bards = "";
my $monks = "";
my $paladins = "";
my $kris = "";
my $fam = "";
my $enemy = "";

open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   if ($list[1] eq "warrior") {
      if ($warriors eq ""){
          $warriors =  "          <h color=\"\@80\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $warriors = $warriors . "          <h color=\"\@80\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "rogue") {
      if ($rogues eq ""){
          $rogues = "          <h color=\"\@87\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $rogues = $rogues . "          <h color=\"\@87\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "wizard") {
      if ($wizards eq ""){
          $wizards = "          <h color=\"\@64\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $wizards = $wizards . "          <h color=\"\@64\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "cleric") {
      if ($clerics eq ""){
          $clerics = "          <h color=\"\@73\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $clerics = $clerics . "          <h color=\"\@73\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "empath") {
      if ($empaths eq ""){
          $empaths = "          <h color=\"\@49\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $empaths = $empaths . "          <h color=\"\@49\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "sorcerer") {
      if ($sorcerers eq ""){
          $sorcerers = "          <h color=\"\@56\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $sorcerers = $sorcerers . "          <h color=\"\@56\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "ranger") {
      if ($rangers eq ""){
          $rangers = "          <h color=\"\@37\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $rangers = $rangers . "          <h color=\"\@37\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "bard") {
      if ($bards eq ""){
          $bards = "          <h color=\"\@35\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $bards = $bards . "          <h color=\"\@35\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "monk") {
      if ($monks eq ""){
          $monks = "          <h color=\"\@33\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $monks = $monks . "          <h color=\"\@33\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "paladin") {
      if ($paladins eq ""){
          $paladins = "          <h color=\"\@70\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $paladins = $paladins . "          <h color=\"\@70\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "enemy") {
      if ($enemy eq ""){
          $enemy = "          <h color=\"\@89\" bgcolor=\"\@30\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $enemy = $enemy . "          <h color=\"\@89\" bgcolor=\"\@30\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "kris") {
      if ($kris eq ""){
          $kris = "          <h color=\"\@89\" bgcolor=\"\@35\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $kris = $kris . "          <h color=\"\@89\" bgcolor=\"\@35\" text=\"" . $list[0] . "\"/>\n";
      }
   }elsif ($list[1] eq "fam") {
      if ($fam eq ""){
          $fam = "          <h color=\"\@89\" bgcolor=\"\@25\" text=\"" . $list[0] . "\"/>\n";
      }else{
          $fam = $fam . "          <h color=\"\@89\" bgcolor=\"\@25\" text=\"" . $list[0] . "\"/>\n";
      }
   } 
   #print Dumper(\%warrior_hash);
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
                <i id="33" color="#FBBD86"/>
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
                <i id="80" color="#794848"/>
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
';

my $file_bottom = '     </names>

</settings>';

my $complete = $file_top . $kris . $fam . $warriors . $rogues . $wizards . $clerics . $empaths . $sorcerers . $rangers . $bards . $monks . $paladins . $enemy . $file_bottom;

open(FH, '>', $outfile) or die $!;
print FH $complete;
close(FH);

