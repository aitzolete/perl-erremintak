#!/usr/local/bin/perl
use warnings;
use strict;

my ($fitx, $argluz, $lerro);
$fitx = $ARGV[0];
open (FITX, $fitx) or die("Ezin $fitx fitxategia zabaldu\n");

# Egiaztatu argumentu kopurua egokia dela (bakoitia):
# $ARGV[0]  --> fitxategi izena
# $ARGV[1] eta $ARGV[2] , $ARGV[3] eta $ARGV[4] ... bilatu eta 
# ordeztu nahi ditugun hitzak, binaka idatzi behar dira.
# Beraz, @ARGV-ren azken indizeak bikoitia izan behar du
$argluz = @ARGV;
if (($argluz % 2) == 0) {
	# Argumentu kopuru okerra
	die ("Hitzak bikoteka idatzi behar dira!\n");
}

while($lerro = <FITX>){
	#lerro bakoitzeko ordezkapen guztiak burutu
    for(my $i = 1; $i < $argluz; $i += 2){
		# Argumentuak binaka hartu
		# i. argumentua bilatu eta (i+1). argumentuagatik ordezkatu
		$lerro =~ s/$ARGV[$i]/$ARGV[$i+1]/g;
    }
    print $lerro;
}
