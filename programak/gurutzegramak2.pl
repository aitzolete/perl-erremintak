#!/usr/bin/perl
use warnings;
use strict;
print("Idatzi bilaketarako terminoa. Amaitzeko, idatzi q\n");
my $bilaketa = <STDIN>;
chomp($bilaketa);
open(FITX, $ARGV[0]) or die("Ezin $ARGV[0] fitxategia ireki!\n");
my $lerro;
while ($bilaketa ne 'q') {
	while ($lerro = <FITX>) {
		#patroiak osorik bat egin behar du $lerro-ko edukiarekin
		if ($lerro=~/^$bilaketa$/i) {
			print("$lerro");
		}
	}
	#fitxategiaren hasierara mugitu
	seek FITX, 0, 0;
	print("\n\nIdatzi bilaketarako terminoa. Amaitzeko, idatzi q\n");
	$bilaketa = <STDIN>;
	chomp($bilaketa);
}
close(FITX);
