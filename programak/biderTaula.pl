#!/usr/bin/perl
use warnings;
use strict;
print ("Idatzi zenbaki bat eta bere biderketa taula kalkulatuko dut: ");
my $zenb = <STDIN>;
chomp($zenb);
my $kont = 1;
my $bider = 0;
while ($kont <= 10) {
	$bider = $zenb * $kont;
	print ("$zenb * $kont = $bider\n");
	$kont = $kont + 1;
}