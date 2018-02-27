#!/usr/bin/perl
use strict;
use warnings;
#string-en arteko konparaketa
print ("Idatzi ezazu zure izena: ");
my $izena = <STDIN>;
chomp($izena);
if ($izena eq "Perl") {
	print("tokaio!\n");
}