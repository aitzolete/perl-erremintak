#!/usr/bin/perl
use strict;
use warnings;
print("Idatzi produktuaren prezioa: ");
my $prezioa = <STDIN>;
chomp($prezioa);
if ($prezioa > 120) {
	print("garestia!\n");
}
elsif ($prezioa < 25) {
	print("txolloa!\n");
}
elsif ($prezioa < 60) {	 #prezioa 25 eta 60 artekoa da
	print("merkea\n");
}
else {				#prezioa 60-120 artean
	print ("balekoa\n");
}
