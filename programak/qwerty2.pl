#!/usr/bin/perl 
# Sarrera: komando lerrotik fitxategi izena
# Irteera: bistaratu ezkerreko edo eskubiko eskuaz soilik idatzitako hitzak, eta hitzik luzeenak 
use warnings;
use strict;

open(Fitx, $ARGV[0]) || die("Ezin izan dut $ARGV[0] fitxategia zabaldu!\n");
my $lerro;
my $hitza;
my $karKop;
my $ezkerLuze = 0;
my $eskuinLuze = 0;
my $ezkerHitz;
my $eskuinHitz;

while($lerro = <Fitx>) {
	chomp($lerro);
	# baldintza: lerroko hitz bakoitzeko
	while ($lerro=~/(\w+)/g){
		$hitza = $1;	#hitza gorde
		$karKop = length($hitza);
		# ezkerrarekin?
		if ($hitza =~/^[qwertasdfgzxcvb]+$/i) {
			print("Ezkerraz:\t$hitza\n");
			# ezkerraz idatzitako luzeena?
			if ($karKop > $ezkerLuze) {
				$ezkerLuze= $karKop;
				$ezkerHitz = $hitza;
			}
		}
		# eskuinarekin?
		if ($hitza =~/^[yuiophjklñnm]+$/i) {
			print("Eskubiaz:\t$hitza\n");
			# eskuinaz idatzitako luzeena?
			if ($karKop > $eskuinLuze) {
				$eskuinLuze = $karKop;
				$eskuinHitz = $hitza;
			}
		}		
	}
}
print ("Ezkerraz idatzitako luzeena: $ezkerHitz. Karaktereak: $ezkerLuze\n");
print ("Eskuinaz idatzitako luzeena: $eskuinHitz. Karaktereak: $eskuinLuze\n");
close(Fitx);