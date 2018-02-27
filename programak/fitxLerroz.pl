#!/usr/bin/perl 
use strict;
use warnings;
my $lerroa;
my $lerro_zenb = 0;
#argumentu bezala jasotako fitxategia ireki
open(FITX,$ARGV[0]) or die("Errorea! Ezin $ARGV[0] fitxategia zabaldu\n");
#fitxategia lerroz-lerro irakurri
while ($lerroa=<FITX>) {
	#lerro zenbakia eta $lerroa pantailaratu
	$lerro_zenb++;
	print ("$lerro_zenb: $lerroa");
}
#fitxategia itxi
close(FITX);