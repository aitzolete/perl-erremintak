#!/usr/bin/perl 
use warnings;
use strict;

my $lerro;
my $kopurua = 0;
my $luzera = $ARGV[1];
if ($#ARGV == 1) {
    open(FITX,$ARGV[0]) || die ("Ezin $ARGV[0] fitxategia zabaldu\n");
} 
else {
    die "Bi argumentu behar dira: fitxategi izena eta hitz-luzera";
}
while ($lerro = <FITX>) {
	chomp($lerro);
	$lerro =~tr/;:,.!?-//d;
	foreach my $hitza (split(/\s+/, $lerro)) {
		if (length($hitza) == $luzera) {
			print ("$hitza\n");
			$kopurua++;
        }
    }        
}         
print ("\n$luzera karakteretako $kopurua hitz daude fitxategian\n");