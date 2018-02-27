#!/usr/local/bin/perl
use warnings;
use strict;

print("Idatzi zenbaki bat eta sakatu return: ");
my $zenbaki = <STDIN>;

if (bakoitia($zenbaki)) {
	print("bakoitia\n");
	}
else {
	print ("bikoitia\n");
	}

sub bakoitia {
	my $zenb = shift();
	return ($zenb%2);
}