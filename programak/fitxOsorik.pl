#!/usr/bin/perl 
use strict;
use warnings;
open(FITX,$ARGV[0]) or die("Errorea! Ezin $ARGV[0] fitxategia zabaldu\n");
#edukia lerroz-lerro @lerroak array-an gorde
my @lerroak = <FITX>;
#array osoa pantailaratu
print @lerroak;
close(FITX);