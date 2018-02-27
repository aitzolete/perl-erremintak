#!/usr/bin/perl
use warnings;
use strict;

my $fitx = $ARGV[0];
my $lerro,
open(FITX, $fitx) or die("Ezin izan dut $fitx fitxategia zabaldu!\n");
while ($lerro = <FITX>) {
	chomp($lerro);
	if ($lerro =~ /^(.).*\1$|^.$/) {	#karaktere bakarreko kasua ere aintzat
		print ("$lerro\n");
		}
}
