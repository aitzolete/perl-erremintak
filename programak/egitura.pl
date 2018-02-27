#!/usr/bin/perl 
use warnings;
use strict;

my $konts = "[bcdfghjklmnñpqrstvwxz]";		#kontsonanteak
my $bok = "[aeiou]";						#bokalak
my $patroia = '\b';					#hasieratu patroia hitz-mugarekin	
foreach my $arg (@ARGV) {
	if ($arg eq 'B') {
		$patroia = $patroia.$bok;		#kateatu bokala patroiari
	}
	elsif ($arg eq 'K') {
		$patroia = $patroia.$konts;		#kateatu kontsonantea patroiari
	}
	else {
		die("Patroi egitura okerra\n");
	}
}
$patroia = $patroia.'\b';			#hitz muga kateatu bukaeran
print("Zein fitxategitan egingo dut bilaketa?\n");
my $fitx = <STDIN>;
open(FITX, $fitx) or die("Ezin $fitx fitxategia zabaldu!\n");
my $lerroa;
while ($lerroa = <FITX>) {
	# i modifikatzailea letra larri/xehe arteko bereizketarik egon ez dadin
	if ($lerroa =~ /$patroia/i) {	
	 print("$&\n");					# bat egiten duen string-a soilik bistaratu
	 }
}
close(FITX);