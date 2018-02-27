#!/usr/bin/perl
use strict;
use warnings;

my (@eremuak, $lerro, $atzizki, $kategoria, $hitz, %maiz);
open(FI, "EH_hiztek.txt") || die ("Ezin fitxategia zabaldu!\n");

# irakurri atzizkia
$atzizki = $ARGV[0];

while ($lerro = <FI>) {     
	chomp($lerro);
	# Sarrerari dagozkion eremuak gorde array-an
	@eremuak = split(/\t/,$lerro);
	# $atzizki atzizkia eta $kategoria kategoriako sarrerak hautatu
	if ($eremuak[0] =~ /$atzizki$/) {
		# definizio eremua hitzetan banatu
		foreach $hitz (split(/\W+/, $eremuak[3])) {
			# hitz bakoitzaren maiztasuna gorde
			$maiz{$hitz}++;
		}
	}
}
close (FI);
# %maiz egiturako hitzak ordenatu
# maiztasunaren arabera, handienetik txikienera
# ondoren hitz bakoitza eta bere agerpen kop. bistaratu
foreach $hitz (sort({$maiz{$b} <=> $maiz{$a}} (keys %maiz))) {
	print ("$hitz\t$maiz{$hitz}\n");
}