#!/usr/bin/perl
use strict;
use warnings;
#euro kopurua teklatutik jaso eta
#moneta ezberdinetara bihurtzen duen programa
print("Idatzi diru kantitatea eurotan:");
my $kop = <STDIN>;
my $dolar = $kop * 1.577; 
my $libra = $kop * 0.797;
my $yen = $kop * 166.825;
print("$kop euro dira:\n");
print("\t$dolar dolar\n");
print("\t$libra libra\n");
print("\t$yen yen\n");