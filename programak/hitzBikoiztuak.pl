#!/usr/bin/perl 
use strict;
use warnings;

open (FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu\n");
my @hitzak;
my $lerro;
while ($lerro = <FITX>) {
	chomp($lerro);
	while ($lerro =~/\b(\w)+\b\s+\b\1\b/g) {
		print ("Bikoiztutako hitza: $1\n");
		print ("$lerro\n");
	}
} 
close(FITX);