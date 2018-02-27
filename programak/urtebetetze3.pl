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
	if (exists($urtebetetze{$izena})) {
		print("Ez da sarrera berria!\n");
	}
	else {
		print("$izena, urtebetetze data? HH-EE formatuan: ");
		$data = <STDIN>;
		chomp($data);
		$urtebetetze{$izena} = $data;		
	}
	print("Idatzi lagunaren izena. Amaitzeko sakatu 'q'\n");
	$izena = <STDIN>;
	chomp($izena);
}

foreach my $gako (sort(keys(%urtebetetze))) {
	print("Izena: $gako\tUrtebetetzea: $urtebetetze{$gako}\n");
}