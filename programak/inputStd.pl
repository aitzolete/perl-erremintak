#!/usr/bin/perl 
use strict;
use warnings;
print("Idatzi testua, amaitzeko sakatu Ctr-D (Linux) edo Ctrl-Z (Windows)\n");
#sarrera estandarretik jasotakoa array-ean gorde
my @lerroak = <STDIN>;
print @lerroak;
