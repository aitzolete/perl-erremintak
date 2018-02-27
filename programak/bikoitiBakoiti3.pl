#!/usr/bin/perl
use strict;
use warnings;

print("Idatzi zenbaki bat: \n");
my $zenbaki = <STDIN>;
chomp($zenbaki);
my $bikoiti = 0;
my $bakoiti = 0;

my $kont = 1;
while ($kont <= $zenbaki) {
	if (($kont % 2) == 0) {
		$bikoiti = $bikoiti + $kont;
	}
	else {
		$bakoiti = $bakoiti + $kont;
	}
	$kont++;
}

print("bakoitien batura: $bakoiti\n");
print("bikoitien batura: $bikoiti\n");