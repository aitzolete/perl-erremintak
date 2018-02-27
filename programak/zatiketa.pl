#!/usr/bin/perl
use strict;
use warnings;
print ("Idatzi zatikizuna:\n");
my $zenb1 = <>;
chomp ($zenb1);
print ("Idatzi zatitzailea:\n");
my $zenb2 = <>;
chomp ($zenb2);
die("Bigarren zenbakiak positiboa izan behar du!\n") if($zenb2 <= 0);
my $zatiketa = $zenb1 / $zenb2;
print ("Zatiketaren emaitza: $zatiketa\n");
