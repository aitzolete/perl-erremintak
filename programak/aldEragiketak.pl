#!/usr/bin/perl
use warnings;
use strict;
#eragiketak aldagaiekin
my $adina = 12;
my $izena = "Xabat";
my $abizena = "Urreisti";
my $izen_abizenak = $izena . " " . $abizena;		#string-en kateaketa
$adina = $adina * 3;								#zenbakien biderketa
print ("Izen-abizenak: $izen_abizenak \tAdina: $adina\n");
