#!/usr/local/bin/perl
use warnings;
use strict;

my @nahasi = ("Orio", "Baiona", "Bermeo", "Zarautz", "Mutriku", "Getaria", "Mundaka");
my @ordena = sort(@nahasi);
my @atzekozAu = sort({$b cmp $a} @nahasi);

my @nahasiZenb = (4,2,6,23,12,1);
my @ordenaZenb = sort({$a <=> $b} @nahasiZenb);
my @atzekozAuZenb = sort({$b <=> $a} @nahasiZenb);

print("Ordenatuta:\t\t@ordena\n");
print("Atzekoz aurrera:\t@atzekozAu\n");
print("Ordenatuta Zenb:\t@ordenaZenb\n");
print("Atzekoz aurrera Zenb:\t@atzekozAuZenb\n");
