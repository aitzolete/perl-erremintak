#!/usr/bin/perl 
use warnings;
use strict;
my $esaldia;
print("Idatzi esaldi bat eta sakatu return\n");
$esaldia = <STDIN>;
$esaldia =~s/^(\w+)(.*)\b(\w+)$/$3$2$1/;
print $esaldia;

