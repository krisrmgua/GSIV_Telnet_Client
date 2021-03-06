#!/usr/bin/perl
use warnings;
use strict;

my $filename = "/root/GSIV_Telnet_Client/GemstoneIV/buildXMLstorm/names.txt";
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
my $enemiess = "";
my $kris = "";
my $fam = "";

open(FH, '<', $filename) or die $!;
while(<FH>){
   chomp;
   my $line = $_;
   my @list = ($line =~ m/\s?(\w+)\s?/g);
   if ($list[1] eq "warrior") {
      if ($warriors eq ""){
          $warriors = "$list[0]";
      }else{
          $warriors = $warriors . "|$list[0]";
      }
   }elsif ($list[1] eq "rogue") {
      if ($rogues eq ""){
          $rogues = "$list[0]";
      }else{
          $rogues = $rogues . "|$list[0]";
      }
   }elsif ($list[1] eq "wizard") {
      if ($wizards eq ""){
          $wizards = "$list[0]";
      }else{
          $wizards = $wizards . "|$list[0]";
      }
   }elsif ($list[1] eq "cleric") {
      if ($clerics eq ""){
          $clerics = "$list[0]";
      }else{
          $clerics = $clerics . "|$list[0]";
      }
   }elsif ($list[1] eq "empath") {
      if ($empaths eq ""){
          $empaths = "$list[0]";
      }else{
          $empaths = $empaths . "|$list[0]";
      }
   }elsif ($list[1] eq "sorcerer") {
      if ($sorcerers eq ""){
          $sorcerers = "$list[0]";
      }else{
          $sorcerers = $sorcerers . "|$list[0]";
      }
   }elsif ($list[1] eq "ranger") {
      if ($rangers eq ""){
          $rangers = "$list[0]";
      }else{
          $rangers = $rangers . "|$list[0]";
      }
   }elsif ($list[1] eq "bard") {
      if ($bards eq ""){
          $bards = "$list[0]";
      }else{
          $bards = $bards . "|$list[0]";
      }
   }elsif ($list[1] eq "monk") {
      if ($monks eq ""){
          $monks = "$list[0]";
      }else{
          $monks = $monks . "|$list[0]";
      }
   }elsif ($list[1] eq "paladin") {
      if ($paladins eq ""){
          $paladins = "$list[0]";
      }else{
          $paladins = $paladins . "|$list[0]";
      }
   }elsif ($list[1] eq "enemy") {
      if ($enemiess eq ""){
          $enemiess = "$list[0]";
      }else{
          $enemiess = $enemiess . "|$list[0]";
      }
   }elsif ($list[1] eq "kris") {
      if ($kris eq ""){
          $kris = "$list[0]";
      }else{
          $kris = $kris . "|$list[0]";
      }
   }elsif ($list[1] eq "fam") {
      if ($fam eq ""){
          $fam = "$list[0]";
      }else{
          $fam = $fam . "|$list[0]";
      }
   } 
   #print Dumper(\%warrior_hash);
}
close(FH);

my $warrior_file_top = '        <!--Warrior Characters-->
        <highlight fg=\'A08231\' bg=\'000000\'>
                \b(?:';
my $rogue_file_top = '        <!--Rogue Characters-->
        <highlight fg=\'7A7A7A\' bg=\'000000\'>
                \b(?:';
my $wizard_file_top = '        <!--Wizard Characters-->
        <highlight fg=\'88aaff\' bg=\'000000\'>
                \b(?:';
my $cleric_file_top = '        <!--Cleric Characters-->
        <highlight fg=\'B76DE1\' bg=\'000000\'>
                \b(?:';
my $empath_file_top = '        <!--Empath Characters-->
        <highlight fg=\'FFA6D9\' bg=\'000000\'>
                \b(?:';
my $sorcerer_file_top = '        <!--Sorcerer Characters-->
        <highlight fg=\'DF655B\' bg=\'000000\'>
                \b(?:';
my $ranger_file_top = '        <!--Ranger Characters-->
        <highlight fg=\'6BC662\' bg=\'000000\'>
                \b(?:';
my $bard_file_top = '        <!--Bard Characters-->
        <highlight fg=\'FFF58F\' bg=\'000000\'>
                \b(?:';
my $monk_file_top = '        <!--Monk Characters-->
        <highlight fg=\'F0922D\' bg=\'000000\'>
                \b(?:';
my $paladin_file_top = '        <!--Paladin Characters-->
        <highlight fg=\'80FFFB\' bg=\'000000\'>
                \b(?:';
my $enemy_file_top = '        <!--Enemy Characters-->
        <highlight fg=\'000000\' bg=\'FF0303\'>
                \b(?:';
my $kris_file_top = '        <!--My Characters-->
        <highlight fg=\'000000\' bg=\'D2E329\'>
                \b(?:';
my $fam_file_top = '        <!--Fam Characters-->
        <highlight fg=\'000000\' bg=\'0091C2\'>
                \b(?:';
my $file_end = ')\b
        </highlight>
';

my $comb_warrior_file = $warrior_file_top . $warriors . $file_end;
my $comb_rogue_file = $rogue_file_top . $rogues . $file_end;
my $comb_wizard_file = $wizard_file_top . $wizards . $file_end;
my $comb_cleric_file = $cleric_file_top . $clerics . $file_end;
my $comb_empath_file = $empath_file_top . $empaths . $file_end;
my $comb_sorcerer_file = $sorcerer_file_top . $sorcerers . $file_end;
my $comb_ranger_file = $ranger_file_top . $rangers . $file_end;
my $comb_bard_file = $bard_file_top . $bards . $file_end;
my $comb_monk_file = $monk_file_top . $monks . $file_end;
my $comb_paladin_file = $paladin_file_top . $paladins . $file_end;
my $comb_enemy_file = $enemy_file_top . $enemiess . $file_end;
my $comb_kris_file = $kris_file_top . $kris . $file_end;
my $comb_fam_file = $fam_file_top . $fam . $file_end;


my $war_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/warrior.xml';
open(FH, '>', $war_file) or die $!;
print FH $comb_warrior_file;
close(FH);

my $rog_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/rogue.xml';
open(FH, '>', $rog_file) or die $!;
print FH $comb_rogue_file;
close(FH);

my $wiz_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/wizard.xml';
open(FH, '>', $wiz_file) or die $!;
print FH $comb_wizard_file;
close(FH);

my $cle_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/cleric.xml';
open(FH, '>', $cle_file) or die $!;
print FH $comb_cleric_file;
close(FH);

my $emp_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/empath.xml';
open(FH, '>', $emp_file) or die $!;
print FH $comb_empath_file;
close(FH);

my $sor_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/sorcerer.xml';
open(FH, '>', $sor_file) or die $!;
print FH $comb_sorcerer_file;
close(FH);

my $ran_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/ranger.xml';
open(FH, '>', $ran_file) or die $!;
print FH $comb_ranger_file;
close(FH);

my $bard_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/bard.xml';
open(FH, '>', $bard_file) or die $!;
print FH $comb_bard_file;
close(FH);

my $monk_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/monk.xml';
open(FH, '>', $monk_file) or die $!;
print FH $comb_monk_file;
close(FH);

my $pal_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/paladin.xml';
open(FH, '>', $pal_file) or die $!;
print FH $comb_paladin_file;
close(FH);

my $ene_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/enemy.xml';
open(FH, '>', $ene_file) or die $!;
print FH $comb_enemy_file;
close(FH);

my $kris_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/mycharecters.xml';
open(FH, '>', $kris_file) or die $!;
print FH $comb_kris_file;
close(FH);

my $fam_file = '/root/GSIV_Telnet_Client/GemstoneIV/buildxmlfile/fam.xml';
open(FH, '>', $fam_file) or die $!;
print FH $comb_fam_file;
close(FH);
