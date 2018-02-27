#!/usr/local/bin/perl
use warnings;
use strict;

#funtzio deiak
handiena(3, 7);
handiena(13, 5);
handiena(12, 12);
#definizioa
sub handiena {
	my ($zenb1, $zenb2) = @_;
	if ($zenb1 > $zenb2) {
		print("$zenb1 handiagoa $zenb2 baino\n");
	}
	elsif ($zenb2 > $zenb1) {
		print("$zenb2 handiagoa $zenb1 baino\n");
	}
	else {
		print("Biak berdinak dira!\n");
	}
}