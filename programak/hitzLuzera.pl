#!/usr/bin/perl
use strict;
use warnings;
my ($hitza, @guztiak, $karaktereak, $handiena, $txikiena, $indHandi, $indTxiki, $karakGuzti);
print("Idatzi 5 hitz banan-bana. Bakoitza idatzi ostean sakatu return\n");

foreach my $i (1..5) {
	$hitza = <STDIN>;
	chomp($hitza);
	$karaktereak = length($hitza);
	$guztiak[$i] = $hitza;			# edo push(@guztiak, $hitza);
	$karakGuzti += $karaktereak;	# eragile berria: gehitu eta esleitu
	if ($i == 1) {
		$handiena = $karaktereak;
		$txikiena = $karaktereak;
		$indHandi = $i;
		$indTxiki = $i;
	}
	if ($karaktereak > $handiena) {
		$handiena = $karaktereak;
		$indHandi = $i;
	}
	if ($karaktereak < $txikiena) {
		$txikiena = $karaktereak;
		$indTxiki = $i;
	}
}
print("Hitzik luzeena: $guztiak[$indHandi]\tKaraktere kopurua: $handiena\n");
print("Hitzik laburrena: $guztiak[$indTxiki]\tKaraktere kopurua: $txikiena\n");
print("Karaktere kopurua guztira: $karakGuzti\n");
print("Batazbesteko karaktere kopurua hitzeko: ");
print($karakGuzti/5);

		