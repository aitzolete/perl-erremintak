#!/usr/local/bin/perl
use warnings;
use strict;

print("Idatzi esaldi bat eta amaitzeko sakatu return\n");
my $testua = <STDIN>;
chomp($testua);
my $kop = bokalKop($testua);
print("Esaldiak $kop bokal ditu\n");

sub bokalKop {
	my $esaldi = shift();
	my $bokalak = ($esaldi =~tr/aeiou//);
	return $bokalak;
}
