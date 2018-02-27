#!/usr/bin/perl
# Sarerra "garri"-z bukatu eta kategoria "izond" duten sarrera
# guztiak lortu, beren definizioekin.
use strict;
use warnings;

my (@a,$l);
open(FI, "EH_hiztek.txt") || die ("Ezin EH_hiztek.txt fitxategia zabaldu!\n");
# Hiztegia lerroz-lerro irakurri
while ($l=<FI>) {
  chomp($l);
  # Sarrerari dagozkion eremuak gorde array-an
  @a=split(/\t/,$l);
	# sarrera hitza "garri"-z amaitzen bada, eta
	# bere kategoria izenondoa bada
  if (($a[0] =~ /garri$/) && ($a[1] =~ /izond/)) {
	# Bistaratu sarrera hitza eta bere definizioa
    print "$a[0]:     ";
    print "$a[3]\n";
  }
}
close (FI);