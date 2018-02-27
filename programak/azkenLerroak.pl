#!/usr/bin/perl 
use strict;
use warnings;
open(FITX,$ARGV[0]) or die("Errorea! Ezin $ARGV[0] fitxategia ireki\n");
my @lerroak = <FITX>;
print ("Azken $ARGV[1] lerroak:\n");
print @lerroak[-$ARGV[1]..-1];
close(FITX);