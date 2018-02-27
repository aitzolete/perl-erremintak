#!/usr/bin/perl
use strict;
use warnings;
print ("Idatzi zure izena: ");
my $izena = <STDIN>;
chomp($izena);
# Agurtu Miren edo Edurne deituz gero
if ($izena eq "Miren" || $izena eq "Edurne") {
	print ("kaixo $izena!\n");
}