#!/usr/bin/perl 
#sarrera: teklatu bidez idatzitako lerroa
#irteera: ezkerreko eskuaz, eskubikoaz edo biak erabilita idatzitakoa den
use warnings;
use strict;
print("Idatzi hitz bat eta ondoren sakatu return\n");
my $lerro = <STDIN>;
chomp($lerro);
my $luzera = length($lerro);
#ezkerreko eskuarekin soilik?
if ($lerro =~/^[qwertasdfgzxcvb]+$/i) {
	print("Ezkerraz idatzitakoa. Luzera: $luzera\n");
}
#eskubiko eskuarekin soilik?
elsif ($lerro =~/^[yuiophjklñnm]+$/i) {
	print("Eskubiaz idatzitakoa. Luzera: $luzera\n");
}
else {
	print("Bi eskuak erabili dituzu!");		
}



