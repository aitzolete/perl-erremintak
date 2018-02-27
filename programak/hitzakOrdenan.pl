#!/usr/bin/perl 
use strict;
use warnings;


# Aldagaiak banan-banan erazagatu daiotezke edo
# denak batera parentesi artean eta aldagai bakoitza komaz bereiztuta
my ($hitza, $kont, $aukera, @zerrenda, @ordenatuta);
print("Idatzi 6 hitz banan-banan:\n");

$kont = 0; # Hasieratu kontagailua
while ($kont < 6) {
	$hitza = <STDIN>;
	chomp($hitza);
	push(@zerrenda, $hitza);
	$kont++;
}

print("Nola nahi duzu bistaratzea hitz zerrenda?\n");
print("1 \t Alfabetikoki (a-z)\n");
print("2 \t Alfabetikoki atzekoz-aurrera (z-a)\n");
print("Egin aukera eta sakatu return\n");
$aukera = <STDIN>;
chomp($aukera);

if ($aukera == 1) {
	@ordenatuta = sort(@zerrenda);
}
elsif ($aukera == 2) {
	@ordenatuta = sort({$b cmp $a} @zerrenda);
}
else {
	die("Aukera okerra egin duzu...\n");
}

print("Zerrenda ordenatuta:\n");

foreach my $elem (@ordenatuta) {
	print("$elem\n");
}