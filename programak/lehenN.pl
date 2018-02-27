#!/usr/bin/perl 
use strict;
use warnings;
my $n = $ARGV[1];
my $lerroa;
my $lerroKop = 0;
# argumentu bezala jasotako fitxategia ireki
open(FITX,$ARGV[0]) or die("Errorea! Ezin $ARGV[0] fitxategia zabaldu\n");
# baldintza: jarraitu begiztan n. lerrora iritsi bitartean eta
# fitxategiak irakurtzeko lerrorik duen artean
while (($lerroKop < $n) && ($lerroa = <FITX>)) {
	$lerroKop++;
	print ("$lerroKop: $lerroa");
}
#fitxategia itxi
close(FITX);