#!/usr/local/bin/perl
use warnings;
use strict;
my $lerroa;
my $testua = "";
print "Idatzi testua lerroz-lerro. Amaitzeko sartu lerro hutsa\n";
while (length($lerroa=<STDIN>) > 1) { 
   $testua .= $lerroa; 
}
$testua =~ tr/a-zA-Z/n-za-mN-ZA-M/;
print("Testua zifratuta:\n");
print ($testua);
