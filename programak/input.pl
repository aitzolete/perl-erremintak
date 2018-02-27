#!/usr/bin/perl
use strict;
use warnings;
my $lerro;
my $kopuru;
print("Idatzitako lerroen karaktere kopurua kalkulatuko dut\n");
print("Amaitzeko, sakatu return\n");
while ($lerro = <STDIN>) {
	$kopuru = length($lerro);
	print ("$kopuru\n");
}