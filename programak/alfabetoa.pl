#!/usr/bin/perl
use strict;
use warnings;
my @alfabetoa = ("a" .. "z");
print ("Idatzi 0-25 arteko zenbaki bat: ");
# teklatutik datua jaso
my $pos = <STDIN>;
# bukaerako lerro-jauzia kendu
chomp($pos);
# bistaratu $pos posizioko letra
print ("$pos. letra hauxe da: $alfabetoa[$pos]\n");