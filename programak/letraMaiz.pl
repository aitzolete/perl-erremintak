#!/usr/bin/perl
use strict;
use warnings;

my ($fitxIn, $fitxOut, $lerro, $kar, %frek, $gako, $balio);

$fitxIn = $ARGV[0];
$fitxOut = $ARGV[1];

# Iturburu fitxategia irakurketarako ireki
open(FITXIN, $fitxIn) || die ("Ezin $fitxIn fitxategia zabaldu\n");
# Helburu fitxategia idazketarako ireki
open(FITXOUT,">$fitxOut") || die("Ezin $fitxOut fitxategia zabaldu\n");

while ($lerro = <FITXIN>) {
	chomp($lerro);
	# Letra larriak xehe bihurtu
	$lerro =~ tr/A-Z/a-z/;
	while ($lerro =~ /(\w)/gi) { # Espresio erregularraren opzioak:
								# g globala
								# i maiuskula/minuskula ez bereizi
		$kar = $1; # parekatu-berria den karakterea
		$frek{$kar}++;
	}
}
# Iturburu fitxategia itxi
close(FITXIN); 

print (FITXOUT "---------------------------------------\n");
print (FITXOUT "Alfabetikoki ordenatuta:\n");
print (FITXOUT "---------------------------------------\n");
foreach $kar (sort (keys(%frek))) {
	print (FITXOUT "$kar $frek{$kar} \n");
}

print (FITXOUT "---------------------------------------\n");
print (FITXOUT "Orain maiztasunaren arabera ordenatuta:\n");
print (FITXOUT "---------------------------------------\n");
# Hurrengo agindua konplexu-samarra da.
# Hash baten gakoak atxikitua duten balioen arabera ordenatu,
# handienetik txikienera
foreach $kar (sort ({$frek{$b} <=> $frek{$a}} (keys %frek))) {
	print (FITXOUT "$kar\t$frek{$kar}\n");
}
close(FITXOUT); 