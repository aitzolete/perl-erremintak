#!/usr/local/bin/perl
use warnings;
use strict;

my %urtebetetze;
my $data;
my $izena;
print("Idatzi lagunaren izena(amaitzeko sakatu 'q'): ");
$izena = <STDIN>;
chomp($izena);
while ($izena ne 'q') {
	print("$izena, urtebetetze data? HH-EE formatuan: ");
	$data = <STDIN>;
	chomp($data);
	$urtebetetze{$izena} = $data;
	print("Izena: $izena\tUrtebetetzea: $urtebetetze{$izena}\n");
	print("Idatzi lagunaren izena. Amaitzeko sakatu 'q'\n");
	$izena = <STDIN>;
	chomp($izena);
}
