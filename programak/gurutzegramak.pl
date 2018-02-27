#!/usr/bin/perl
use warnings;
use strict;
print("Idatzi bilaketarako terminoa: ");
my $bilaketa = <STDIN>;
chomp($bilaketa);
open(FITX, $ARGV[0]) or die("Ezin $ARGV[0] fitxategia ireki!\n");
my $lerro;
while ($lerro = <FITX>) {
	#patroiak osorik bat egin behar du $lerro-ko edukiarekin
	if ($lerro=~/^$bilaketa$/i) {
		print("$lerro");
	}
}
close(FITX);
