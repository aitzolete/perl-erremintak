#!/usr/local/bin/perl
# Komando lerrotik bi fitxategi jaso eta lerro komunak pantailaratzen ditu
use warnings;
use strict;

my ($fitxBat, $fitxBi, $lerro1, $lerro2, $l1, $l2, %fitxHash);
$fitxBat = $ARGV[0],
$fitxBi = $ARGV[1];

open(FITX1, $fitxBat) || die("Ezin $fitxBat fitxategia zabaldu\n");
$l1 = 0;
$l2 = 0;
# gorde $fitxBat hash egituran
while ( $lerro1 = <FITX1> ) {
  chomp($lerro1);
  $l1++;
  # gakoa: hitza
  # balioa: agerpenaren lerro zenbakia
  $fitxHash{$lerro1} = $l1;
}

close(FITX1);

open(FITX2, $fitxBi) || die("Ezin $fitxBi fitxategia zabaldu\n");

# gorde $fitxBi hash egituran
while( $lerro2 = <FITX2> ) {
	chomp($lerro2);
	$l2++;
	if( exists $fitxHash{$lerro2} ) {
		print (">$fitxBat $fitxHash{$lerro2} lerroan\t$fitxBi $l2 lerroan:\n");
		print ("$lerro2\n");
	}
}
close(FITX2);