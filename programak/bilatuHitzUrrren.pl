#!/usr/bin/perl 
use strict;
use warnings;
# Fitxategia eta hitz bat irakurri, eta hitza eta bere hurrengoaren 
# agerpen guztiak bistaratu

# Fitxategia zabaldu
open (FI, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu!\n");
# Bilaketa hitza jaso
my $hitza = $ARGV[1];
my $zenbat = 0;
my $lerro;
while ($lerro = <FI>){
	chomp($lerro);
	# $hitza-ren eta bere hurrengoaren agerpenak bilatu lerroan
	while ($lerro =~ /\s+$hitza\s+(\w+)/gi) { # Adierazpen erregularraren aukerak:
												# g globala (agerpen guztiak)
												# i letra larri/xeheak ez bereizi											
		# $1 aldagaia $hitza-ren hurrengoa
		print "$hitza $1\n";
		$zenbat++;				# $zenbat = $zenbat + 1;
	}
}
print("Guztira $zenbat agerpen\n");
close FI;

