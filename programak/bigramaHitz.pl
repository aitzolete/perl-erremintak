#!/usr/bin/perl
use strict;
use warnings;

my ($lerro, $hitz, $aurrekoHitz, $fIzena, @hitzak, %frek, $gako, $balio);
$fIzena = $ARGV[0];
open(FITX, $fIzena) || die ("Ezin $fIzena fitxategia zabaldu\n");
 
while ($lerro = <FITX>) {
	chomp($lerro);
	# Letra larriak xehe bihurtu
	$lerro =~ tr/A-Z/a-z/;
	# Hasieratu uneko eta bere aurreko
	# hitzak zuriunearekin
	$hitz = ' ';
	$aurrekoHitz = ' ';
	# Banatu lerroa hitzetan. Banatzaileak: . , ; : ? ! eta zuriunea
	@hitzak = split(/[\.\?!;:,\s]+/,$lerro);
	# Lerroko hitz bakoitzeko
	foreach my $h (@hitzak) {
		$aurrekoHitz = $hitz;
		$hitz = $h;
		# Bi hitzen artean kateatu zuriunea
		$frek{$aurrekoHitz . " " . $hitz}++;
		
	}
}
close(FITX); # Fitxategia itxi
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
	print "'$gk' bikotea $frek{$gk} aldiz agertu da\n";
}