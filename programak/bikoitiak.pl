#!/usr/bin/perl
use strict;
use warnings;
#1 eta 100 arteko zenb. bikoitiak
for (my $i = 1; $i <= 100; $i++) {
	# $i zati 2 egin eta hondarra zero da?
	print ("Bikoitia: $i\n") if (($i % 2) == 0);
}