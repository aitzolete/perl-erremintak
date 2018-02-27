#!/usr/bin/perl 
use strict;
use warnings;

# Fitxategia zabaldu
open (FI, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu!\n");
# Bilaketa karaktereak jaso
my $karBat = $ARGV[1];
my $karBi = $ARGV[2];
my $agerpenBat = 0;
my $agerpenBi = 0;
my $lerro;
# Fitxategia lerroz-lerro irakurri
while ($lerro = <FI>){
	chomp($lerro);
	# Lerroa karakterez-karaktere irakurri
	while ($lerro =~ /($karBat|$karBi)/gi) { # Adierazpen erregularraren aukerak:
								# g globala (agerpen guztiak)
								# i letra larri/xeheak ez bereizi		
		# Bategitea $karBat edo $karBi-k eragin du?
		if ($1 eq $karBat) {
			$agerpenBat++;
		}
		if ($1 eq $karBi) {
			$agerpenBi++;
		}
	}
}
if ($agerpenBat > $agerpenBi) {
	print("$karBat ($agerpenBat) karakterea $karBi ($agerpenBi) baino gehiagotan azaltzen da\n"); 
}
elsif ($agerpenBat < $agerpenBi) {
	print("$karBi ($agerpenBi) karakterea $karBat ($agerpenBat) baino gehiagotan azaltzen da\n"); 
}
else {
	print("$karBat eta $karBi karaktereen agerpen kopurua berbera da fitxategian: $agerpenBat\n");
}
close (FI);