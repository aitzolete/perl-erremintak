#!/usr/bin/perl 
use strict;
use warnings;

my ($l,@hitzak, $hitzakguztira, $h, %Maiz);
open (FI, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu\n");
$hitzakguztira = 0;
while ($l = <FI>) {
	chomp($l);
	# Banatu lerroa hitzetan
	# Banatzaileak: , ; . : ! ? eta zuriunea
	@hitzak = split(/[\.\?!,;:\s]+/,$l);
	foreach $h (@hitzak) {
		# $h hitzaren agerpen kop. eguneratu
		$Maiz{$h}++;
		# Hitz kopuru totala
		$hitzakguztira = $hitzakguztira + 1;
	}
}
my $maiztasuna;
# %Maiz hash-aren gakoak atxikituatako balioaren arabera ordenatu,
# handienetik txikienera
my @gakoOrdenaduak = sort ({$Maiz{$b} <=> $Maiz{$a}} keys(%Maiz));
foreach $h (@gakoOrdenaduak) {
	# $h hitzaren maiztasun erlatiboa:
	# bere agerpen kopurua zati hitz kopuru totala (ehunekotan adierazia)
	$maiztasuna = 100 * ($Maiz{$h} / $hitzakguztira) ;
	printf ("hitza: '%s'\t\tMaiztasuna: %s\t Maiz. Erlatiboa: %4.4f \n" ,$h,$Maiz{$h},$maiztasuna);
}