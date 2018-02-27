#!/usr/bin/perl 
use warnings;
use strict;

open(FITX, $ARGV[0]) or die("Ezin $ARGV[0] fitxategia zabaldu!\n");
my $testua = "";
my $lerro;
while ($lerro = <FITX>) {
	# Ordezkatu lerro jauziak zuriuneengatik
	$lerro =~s/\n$/ /g;
	# Kateatu lerroa $testua aldagaiari
	$testua.= $lerro;
}
# $testua string-a esalditan banatu
my @esaldiak = split(/([\.\?!]+)\s+/, $testua);
# Esaldiak banan-bana bistaratu
foreach my $esaldi (@esaldiak) {
	print ("$esaldi");
	if ($esaldi =~ /[\.\?!]+/) {
		print ("\n\n");
	}
}
	
close(FITX);