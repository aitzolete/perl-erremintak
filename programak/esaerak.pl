#!/usr/bin/perl 
use strict;
use warnings;
open(FITX,"esaeraZaharrak.txt") or die("Errorea! Ezin fitxategia zabaldu\n");
my @lerroak = <FITX>;
print ("Idatzi 0 eta $#lerroak arteko zenbaki bat: ");
my $zenb = <STDIN>;
print $lerroak[$zenb];
close(FITX);