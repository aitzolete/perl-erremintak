#!/usr/bin/perl
use strict;
use warnings;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia ireki\n");

my $lerroZenb = 0;

while (<FITX>) {
	$lerroZenb++;
	print("$lerroZenb ");
	print("$_");
} 
close(FITX);