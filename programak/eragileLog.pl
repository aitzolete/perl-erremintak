#!/usr/bin/perl
use strict;
use warnings;
#&& eragile logikoa
print ("Idatzi zenbaki bat: ");
my $zenb = <STDIN>;
chomp($zenb);
if ($zenb > 10 && $zenb < 20) {
	#Bi baldintza: $zenb >10  eta $zenb < 20
	print("zenbakia 10 eta 20 artean dago\n");
}