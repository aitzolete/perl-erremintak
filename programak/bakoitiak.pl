#!/usr/bin/perl
use strict;
use warnings;
#1-100 arteko bakoitiak
foreach my $zenb (1..100) {
	if ($zenb%2 != 0) {
		print("$zenb\n");
	}
}