#!/usr/bin/perl
use strict;
use warnings;
#Zenbakia asmatu jokoa. Zenbaki sekretua 5 da
my $sekretua = 5;
print ("Idatzi ezazu zenbaki bat teklatu bidez: ");
my $zenb = <STDIN>;
chomp($zenb);
if ($zenb == $sekretua) {
	print("Asmatu duzu, zorionak!\n");
}