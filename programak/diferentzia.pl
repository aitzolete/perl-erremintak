#!/usr/bin/perl
use strict;
use warnings;

my ($lerro1, $lerro2, %hash1, %hash2, %hashOrok, @hitzak1, @hitzak2);

print ("Idatzi 1. lerroa:\n");
# Irakurri lehen lerroa
$lerro1 = <STDIN>;
chomp($lerro1);
# Lerroa hitzetan banatu
@hitzak1 = split (/[\s\.,;:\?!]+/, $lerro1);
# Hitz bakoitza prozesatu
foreach my $hitz (@hitzak1) {
	# Lehen lerroko hitzak biltzen dituen hash-a
	$hash1{$hitz} = 1;
	# Hitz guztiak biltzen dituen hash-a
	$hashOrok{$hitz} = 1;
}
# Prozesu bera bigarren lerroarekin
print ("Idatzi 2. lerroa:\n");
$lerro2 = <STDIN>;
chomp($lerro2);

@hitzak2 = split (/[\s\.,;:\?!]+/, $lerro2);
foreach my $hitz (@hitzak2) {
	# Bigarren lerroko hitzak dituen hash-a
	$hash2{$hitz} = 1;
	# Hitz guztiak biltzen dituen hash-a
	$hashOrok{$hitz} = 1;
}
# Hitz guztiak lortu eta alfabetikoki ordenatu
# banan-bana tratatzeko
print ("*****************\n");
foreach my $elem (sort(keys(%hashOrok))) {
	print ("$elem\t");
	# $elem agertu da lehen lerroan?
	if(exists($hash1{$elem})) {
		print("1");
	}
	#  $elem agertu da bigarren lerroan?
	if(exists($hash2{$elem})) {
		print("2");
	}
	print ("\n");
	
}
print ("*****************\n");
