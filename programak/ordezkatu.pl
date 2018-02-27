#!/usr/bin/perl 
use warnings;
use strict;
# Egiaztatu argumentu kopurua egokia dela
die("programak hiru argumentu behar ditu!\n") if ($#ARGV != 2);

open (FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu\n");
my $lerro;
my $agerpenak;
while ($lerro = <FITX>) {
	$agerpenak += ($lerro =~ s/$ARGV[1]/$ARGV[2]/ig);
	print $lerro;
}
print ("\n\nOrdezkapen kopurua: $agerpenak\n");