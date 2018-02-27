#!/usr/bin/perl 
use strict;
use warnings;

my ($fitx, $lerro,@hitzak,%Maiz);
$fitx = $ARGV[0];
open (FI, $fitx) || die("Ezin $fitx fitxategia zabaldu!\n");

while ($lerro = <FI>) {
	chomp($lerro);
	# Banatu hitzak. Banatzaileak koma, puntu eta koma,puntua, galdera eta harridura ikurrak eta zuriuneak dira
	@hitzak = split(/[\,\.\s\?!;]+/,$lerro);
	foreach my $hitz (@hitzak) {
		$Maiz{$hitz}++;
	}
}


# Hash-eko hitzak ordenatu eta agerpen-kopurua idatzi
foreach my $hitz (sort(keys(%Maiz))) {
  print "'$hitz' hitzaren agerpen kopurua: $Maiz{$hitz}\n";
}
print "\n";

