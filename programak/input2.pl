#!/usr/bin/perl
use strict;
use warnings;
my $lerro;
print("Idatzitako lerroen karaktere kopurua kalkulatuko dut\n");
print("Amaitzeko, sakatu return\n");
while (length($lerro = <STDIN>) > 1) {
	print (length($lerro));
	print("\n");
}