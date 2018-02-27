#!/usr/bin/perl 
use warnings;
use strict;

open(FITX, $ARGV[0]) or die("Ezin $ARGV[0] fitxategia zabaldu!\n");

my $lerro;
my %indizea;
my $puntAurretik = 1;
my @agerpen;


while ($lerro = <FITX>) {
	while ($lerro =~ /([A-Z]\w+|[\.\?!])/g){
		# bategitea larriz hasitako hitzak?
		if ($1 =~/([A-Z]\w+)/) {
			if ($puntAurretik == 0) {
				# %indizea hash-ean $1 gakoa existitzen ez bada
				# sortu gako horrentzako izengabeko array baten erref.
				$indizea{$1} = [] if (!exists($indizea{$1}));
				# Gehitu lerro zenbakia erreferentziatutako array-aren amaieran
				push(@{$indizea{$1}}, $.);
				# $. -->uneko lerro zenbakia
			}
			$puntAurretik = 0;
		}
		else {	# bategitea puntuazio ikurrak
			$puntAurretik = 1;
		}
	}
}
close(FITX);


# %indizea egiturako gakoak ordenatuta lortu
# eta begizta bidez banan-banan pantailaratu
foreach my $izen (sort(keys(%indizea))) {
	print("$izen\n");
	#$izen pertsonaiaren array-a atzitu eta @agerpen array-an gorde
	@agerpen = @{$indizea{$izen}};
	# @agerpen string bakarrean bildu eta pantailan bistaratu
	print(join(", ", @agerpen));
	print("\n");
}