#!/usr/bin/perl 
use strict;
use warnings;

my $hitza = $ARGV[1];
my $zenb = $ARGV[2];
open(FITX,$ARGV[0]) || die("Errorea! Ezin $ARGV[0] fitxategia ireki\n");
# Fitxategia array-an gorde
my @lerroak = <FITX>;
# Array-a lerroz-lerro zeharkatu
for ( my $i = 0; $i <= $#lerroak; $i++) {
	# Lerroak badu $hitza?
	if ($lerroak[$i] =~ /\b$hitza\b/) {
		# Bistaratu aurreko eta hurrengo $zenb lerroekin batera
		print @lerroak[($i-$zenb)..($i+$zenb)];
		print("\n\n");
	}
}
close(FITX);