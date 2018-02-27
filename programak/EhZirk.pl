#!/usr/bin/perl 
use strict;
use warnings;
# Hiztegian, zenbat definiziok dute definitzen ari den hitza ?

my (@a, $l);

open(FI, "EH_hiztek.txt") || die ("Ezin fitxategia zabaldu!\n");

while ($l=<FI>) {
	chomp($l);
	# eremu banatzaileak tabuladoreak dira
	@a = split(/\t/, $l);
	# begiratu sarrera hitza definizioan ere ageri den.
	# Sarrerako hitza aurrizki gisa erabiliko da bilaketan:
	# "ama" hitzak ez dut bat egingo "narama" hitzarekin, 
	# bai ordea "amaren" edo "amatxo" hitzekin. Dena dela, 
	# modu honetan "ama" hitza ez du aurkituko "hainbeste 
	# amen etxetan" testuan. Horretarako lematizazioa behar da!
	if ($a[3] =~ /\b$a[0]/) {
		print "$l\n";
	}
}
close (FI);
