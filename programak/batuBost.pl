#!/usr/bin/perl
use warnings;
use strict;
my $kont = 5;	#kontagailua
my $zenb = 0;
my $batura = 0;
while ($kont > 0) {
	print ("Idatzi zenbaki bat:\n");
	$zenb = <STDIN>;			#teklatutik zenbakia jaso
	chomp ($zenb);
	$batura = $batura + $zenb;	#gehitu uneko zenbakia aurrekoei
	$kont = $kont - 1;			#kontagailua eguneratu
}
print ("Zenbaki guztien batura: $batura\n");

	