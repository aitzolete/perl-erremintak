#!/usr/bin/perl
use strict;
use warnings;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia ireki\n");

my $lerro;
my $lerroZenb = 0;

while ($lerro = <FITX>) {
	$lerroZenb++;
	print("$lerroZenb $lerro");
} 
close(FITX);
