#!/usr/bin/perl 
use warnings;
use strict;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu!\n");
my $lerro;
my $hitzKop = 0;
my @hitzLerro;
my @hitzak;

while ($lerro = <FITX>) {
	chomp($lerro);
	$lerro =~tr/\.\?!;:,-//d;	#ikurrak ezabatu
	@hitzLerro = split(/\s+/, $lerro);
	push(@hitzak, @hitzLerro);
}

foreach my $hitz(@hitzak) {
	$hitzKop++;
	print("$hitz\n");
}
			
print("Hitz kopurua: $hitzKop\n");
			