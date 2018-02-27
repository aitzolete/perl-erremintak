#!/usr/bin/perl
use strict;
use warnings;

print("Idatzi zenbaki bat: \n");
# Teklatu bidez idatzitakoa jaso
my $zenbaki = <STDIN>;
# Bukaerako lerro jauzia kendu
chomp($zenbaki);
# Aldagaiak hasieratu
my $bikoiti = 0;
my $bakoiti = 0;
# Kontagailua hasieratu
my $kont = 1;
# Begizta. $kont aldagaiak 1 eta $zenbaki
# arteko balioak hartuko ditu
while ($kont <= $zenbaki) {
	# Bikoitia da?
	if (($kont % 2) == 0) {
		# Gehitu zenbakia bikoitien sakuan
		$bikoiti = $bikoiti + $kont;
	}
	else {	# Bakoitia da
		# Gehitu zenbakia bakoitien sakuan
		$bakoiti = $bakoiti + $kont;
	}
	# Eguneratu kontagailua
	$kont++;
}
# Bistaratu emaitzak
print("bakoitien batura: $bakoiti\n");
print("bikoitien batura: $bikoiti\n");