#!/usr/bin/perl
use strict;
use warnings;
my @konts_zerrenda = ('b','c','d','f','g','h','j','k','l','m',
				  'n','ñ','p','q','r','s','t','v','w','x','y','z');
my @bok_zerrenda = ('a','e','i','o','u');
my $kont = 0;
foreach my $konts1 (@konts_zerrenda) {
	foreach my $bok1 (@bok_zerrenda) {
		foreach my $konts2 (@konts_zerrenda) {
			if ($konts1 ne $konts2){
				foreach my $bok2 (@bok_zerrenda) {
					if ($bok1 ne $bok2){
						$kont++;
						print("$konts1$bok1$konts2$bok2\n");
					}
				}
			}
		}
	}
}
print("$kont konbinazio ezberdin!\n");