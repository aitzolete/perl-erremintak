#!/usr/bin/perl
use strict;
use warnings;
my $lerroa;
#iturburu fitxategia irakurketarako ireki
open(FITXIN,$ARGV[0]) or die("Ezin $ARGV[0] fitxategia zabaldu\n");
#helburu fitxategia idazketarako ireki
open(FITXOUT,">$ARGV[1]") or die("Ezin $ARGV[1] fitxategia sortu\n");

while ($lerroa=<FITXIN>) {
	print (FITXOUT $lerroa);
}
#fitxategiak itxi
close(FITXIN);
close(FITXOUT);