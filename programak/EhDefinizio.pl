#!/usr/bin/perl
# Sarerra:bilaketa terminoa
# Irteera: bere defizioak
use strict;
use warnings;

my (@hiztegia, @eremuak, $lerro, $bilatu);

open(FI, "EH_hiztek.txt") || die ("Ezin EH_hiztek.txt fitxategia zabaldu!\n");
@hiztegia = <FI>;
close (FI);

print("Idatzi bilaketa terminoa. Amaitzeko sakatu 'q': ");
$bilatu = <STDIN>;
chomp($bilatu);

while ($bilatu ne 'q') {
  # Sarrerari dagozkion eremuak gorde array-an
	foreach my $sarrera (@hiztegia) {
		@eremuak = split(/\t/,$sarrera);
		if ($eremuak[0] =~ /^$bilatu$/) {
			# Bistaratu sarrera hitza eta bere definizioa
			print "$eremuak[0]:     ";
			print "$eremuak[3]\n";
		}
	}
	print("Idatzi bilaketa terminoa. Amaitzeko sakatu 'q': ");
	$bilatu = <STDIN>;
	chomp($bilatu);
}
