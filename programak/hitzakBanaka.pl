#!/usr/bin/perl 
use warnings;
use strict;
#sarrera: komando lerrotik fitxategi izena
#irteera: fitxategiko hitz guztiak banan-bana pantailaratzen ditu 

my ($lerro, $fitx_izen);
$fitx_izen = $ARGV[0];

open(Fitx, "$fitx_izen") or die("Ezin izan dut $fitx_izen fitxategia zabaldu!\n");

while($lerro = <Fitx>) {
	while ($lerro=~/^(\W*)(\w+)(\W*)/){
	print("$2\n");
	$lerro = $';
	}
}
close(Fitx);

