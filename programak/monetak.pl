#!/usr/bin/perl
use strict;
use warnings;
# euro kopuru bat moneta ezberdinetara bihurtzen duen programa
my $kop = 30;				# euro kopurua
my $dolar = $kop * 1.577;	# kopurua dolarretan
my $libra = $kop * 0.797;	# kopurua liberatan
my $yen = $kop * 166.825;	# kopurua yen-etan
print ("$kop euro:\n");
print("\t$dolar dolar dira\n");
print("\t$libra libra dira\n");
print("\t$yen yen dira\n");
