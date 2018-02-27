#!/usr/bin/perl 
use warnings;
use strict;
use Text::LevenshteinXS;

my ($xuxen, $hitza, $ondo, @aukerak);

print("Idatzi hitza:\n");
$hitza = <STDIN>;
chomp($hitza);
$ondo = 0;

open(FITX, $ARGV[0])  or die("Ezin fitxategia zabaldu!");

while (($ondo != 1) && ($xuxen = <FITX>)) {
	chomp($xuxen);
	if (distance($hitza, $xuxen) == 0) {
		$ondo = 1;
	}
	elsif (distance($hitza, $xuxen) <= 1) {
		push(@aukerak, $xuxen);
	}
}
print("*****************\n");
print("Aukerak\n");
print("*****************\n");

if ($ondo) {
	print("hitza zuzena\n");
}
else {
	for (my $i=0; $i<=$#aukerak; $i++) {
		print("$i $aukerak[$i]\n");
	}
	
}
close(FITX);