#!/usr/bin/perl 
use warnings;
use strict;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia ireki\n");
my $lerro;
my $kont = 0;
while ($lerro = <FITX>) {
	while ($lerro =~m/[aeiou]/i) {
		$lerro = $';
		$kont++;
	}
}
print $kont;