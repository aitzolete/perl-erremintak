#!/usr/bin/perl
use strict; use
warnings;print
("Idatzi zenbaki bat: \n");
my $k = <STDIN>; chomp
($k); my $z = 1; my $a = 0;
my $b = 0; while ($z <= 
$k) {if (($z % 2) == 0) 
{$a = $a + $z;} else {$b
 = $b + $z;} $z++;}
print("bakoitien batura: $b\n");
print("bikoitien batura: $a\n");