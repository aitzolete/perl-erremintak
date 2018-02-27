#!/usr/bin/perl 
use warnings;
use strict;

open(FITX, $ARGV[0]) or die("Ezin $ARGV[0] fitxategia ireki\n");
my $patroia = $ARGV[1];
my $lerroa;
while ($lerroa = <FITX>) {
	print ("$&\n") if ($lerroa=~m/$patroia/i); 
}
close(FITX);

