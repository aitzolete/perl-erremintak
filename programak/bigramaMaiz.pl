#!/usr/bin/perl
use strict;
use warnings;

my ($lerro, $kar, $aurrekokar, $fIzena, %frek, $gako, $balio);
$fIzena = $ARGV[0];
open(FITX, $fIzena) || die ("Ezin $fIzena fitxategia zabaldu\n");
 
while ($lerro = <FITX>) {
	chomp($lerro);
	# Letra larriak xehe bihurtu
	$lerro =~ tr/A-Z/a-z/;
	$kar = ' ';
	$aurrekokar = ' ';
	while ($lerro =~ /(\w)/gi) {
					# g globala
					# i maiuskula/minuskula ez bereizi
		$aurrekokar = $kar;
		$kar = $1;		# parekatu-berria den karakterea
		# Karaktere bikotearen lehen agerpena bada hasieratu
		# bestela 1 gehitu aurreko balioari
		$frek{$aurrekokar . $kar}++;
	}
}
close(FITX); # Fitxategia itxi
# Bistaratu testuko ordena jarraituz
while (($gako,$balio) = each(%frek)) {
	print "$gako bikotea $balio aldiz agertu da\n";
}
print ("---------------------------------\n");
print ("Maiztasunaren arabera ordenatuta:\n");
print ("---------------------------------\n");
# Bistaratu agerpen kopuruaren arabera ordenatuta,
# handienetik txikienera.
# Lehenbizi hasharen gakoak ardenatu balioen arabera.
#Zenbakizko ordenazioa, handienetik txikienera
my @gakoOrdenaduak = sort ({$frek{$b} <=> $frek{$a}} keys(%frek));
my $gk;
foreach $gk (@gakoOrdenaduak) {
	print "$gk bikotea $frek{$gk} aldiz agertu da\n";
}