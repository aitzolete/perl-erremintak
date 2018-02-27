#!/usr/bin/perl
use warnings;
use strict;
my $batura = 0;
my $zenbaki;
foreach $zenbaki (@ARGV) {
	$batura = $batura + $zenbaki;
}
print ("Batura: $batura\n");
