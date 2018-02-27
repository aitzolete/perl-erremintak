#!/usr/local/bin/perl
use warnings;
use strict;

print("Idatzi 1 eta 4 arteko zenbaki bat: ");
my $zenb = <STDIN>;
if ($zenb < 1){
	ezegokia();
}
elsif ($zenb > 4) {
	ezegokia();
}


sub ezegokia {
	print("Idatzi duzun zenbakia ez da egokia.\n");
}