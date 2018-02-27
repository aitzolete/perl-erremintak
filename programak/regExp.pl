#!/usr/bin/perl 
use warnings;
use strict;

my $testua = "Besteen faltak aurreko aldean, geureak bizkarrean";
print ("Idatzi bilaketa patroia: ");
my $patroia = <STDIN>;
chomp($patroia);

if ($testua=~m/$patroia/) {
	print ("$patroia agertzen da testuan\n");
}
else {
	print ("$patroia ez da agertzen testuan\n");
}