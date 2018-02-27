#!/usr/bin/perl
use strict;
use warnings;

my (@hiztegia, @eremuak, $lerro, $atzizki, $kont);

open(FI, "EH_hiztek.txt") || die ("Ezin EH_hiztek.txt fitxategia zabaldu!\n");
@hiztegia = <FI>;
close (FI);

print("Idatzi bilaketarako atzizkia. Amaitzeko sakatu 'q': ");
$atzizki = <STDIN>;
chomp($atzizki);

while ($atzizki ne 'q') {
	$kont = 0;
	# Sarrerari dagozkion eremuak gorde array-an
	foreach my $sarrera (@hiztegia) {
		@eremuak = split(/\t/,$sarrera);
		if ($eremuak[0] =~ /$atzizki$/) {
			$kont++;
			# Bistaratu sarrera hitza eta bere definizioa
			print "$eremuak[0]:     ";
			print "$eremuak[3]\n";
		}
	}
	print("$kont sarrera $atzizki atzizkiarekin bat egiten dutenak\n");
	print("Idatzi bilaketarako atzizkia. Amaitzeko sakatu 'q': ");
	$atzizki = <STDIN>;
	chomp($atzizki);
}
