#!/usr/bin/perl 
use warnings;
use strict;

my $fitx = $ARGV[0];
my $patroi = $ARGV[1];
my $zenb = $ARGV[2];
my $kop = 0;
my $lerro,
open(FITX, "$fitx") || die("Ezin $fitx fitxategia zabaldu!\n");
while ($lerro = <FITX>) {
	while ($lerro =~/$patroi/gi) {
		$kop++;
		if ($kop == $zenb) {
			print ("topatu dut!\n");
			print ($lerro);
		}
	}
}
