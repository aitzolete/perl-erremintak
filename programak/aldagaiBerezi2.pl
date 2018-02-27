#!/usr/bin/perl
use strict;
use warnings;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia ireki\n");

while (<FITX>) {
	print ("$. $_");
} 
close(FITX);