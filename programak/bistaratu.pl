#!/usr/local/bin/perl
use warnings;
use strict;

# Funtzio deia. Argumentua komando-lerrotik jasotako datuak
grafikoa(@ARGV);

# Funtzioaren definizioa
sub grafikoa {
	# Datuen array-a jaso argumentu gisa
	my @datuak = @_;
	my $batura = 0;
	my $portzentaia;
	my $zenbatIzar;
	# %100 kalkulatu: balio guztien batura
	foreach my $balio (@ARGV) {
		$batura = $batura + $balio;
	}
	# Grafikoaren goiburukoa
	print ("DATUAK\tPORTZENTAIA\tGRAFIKOA\n");
	print ("$batura \t %100\t\t");
	# Datuen %100 adierazteko 50 izartxo
	print ("*" x50);
	print ("\n\n");

	# Datuak ordenatu eta grafikoki bistaratu
	foreach my $balio (sort ({$a <=> $b} @datuak)) {
		# Datu bakoitzaren portzentaia
		$portzentaia = ($balio/$batura)*100;
		# Bistaratzeko formatua
		printf("%s \t %4.2f \t\t", $balio, $portzentaia);
		# Portzentaiari dagozkion izartxoak
		$zenbatIzar = int($portzentaia * 0.5);
		print ("*" x$zenbatIzar);
		print("\n");
	}
}


