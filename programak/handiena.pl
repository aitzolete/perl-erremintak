#!/usr/bin/perl
use strict;
use warnings;
#bi zenbakiren arteko handiena itzuli
print("Idatzi 2 zenbaki, bakoitza lerro banatan:\n");
my $zenb1 = <>;			#STDIN
my $zenb2 = <>;
chomp($zenb1);
chomp($zenb2);
if ($zenb1 > $zenb2) {
	print ("$zenb1 handiagoa $zenb2 baino\n");
	}
elsif ($zenb1 < $zenb2) {
	print ("$zenb2 handiagoa $zenb1 baino\n");
	}
else {
	print("Biak berdinak dira!\n");
	}
	