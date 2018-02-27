#!/usr/bin/perl
use strict;
use warnings;
#string-ak eta zenbakiak baldintza berean
print ("Nola duzu izena? ");
my $izena = <STDIN>;
chomp($izena);
print("Zenbat urte dituzu? ");
my $adina = <STDIN>;
chomp($adina);
if ($izena eq "Perl" && $adina > 20) {
	#Egiazkoa baldin Perl izena eta 20 urte baino gehiago
	print("Ni baino zaharragoa zara tokaio!\n");
}
