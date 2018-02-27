#!/usr/bin/perl -w
use warnings;
use strict;

my ($luzera,$patroia,$lerroa,$i);
$luzera = $ARGV[1];
open(FITX, $ARGV[0]) or die("Ezin fitxategia zabaldu!\n");
$patroia = '\b';				#hitz muga hasieran
for ($i=0; $i<$luzera; $i++) {
	
		$patroia.='\w';			
	}
$patroia.= '\b';				#hitz muga bukaeran

while ($lerroa = <FITX>) {
	if ($lerroa=~m/$patroia/g) {	
	 print("$&\n");					# bat egiten duen string-a bistaratu
	 }
}
close(FITX);