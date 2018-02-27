#!/usr/bin/perl
use strict;
use warnings;
my $aukera;
my $kop = 100;
#0-100 arteko zenbaki bat aukeratu zoriz
my $zbk = int(rand(100));
print ("Zenbaki bat daukat gordeta, 0-100 artekoa. Zein ote da?\n");
my $jarraitu=1;	#begiztan jarraitu ala ez
my $ahalegin = 0;	#ahalegin kopurua
while ($jarraitu != 0) {
	print "Egin zure aukera: ";
	$aukera = <STDIN>;
	chomp($aukera);
	$ahalegin++;
	if ($aukera == $zbk) {
		print "Arraioa, bai asmatu ere!\n";
		$jarraitu = 0;	#begiztatik aterako da hurrengo iterazioan
	} elsif ($zbk > $aukera) {
		print "... ummm, nik daukadan zenbakia $aukera baino handiagoa da \n";
	} else {
		# puntu honetan, beti gertatuko da $zbk < $aukera dela
		print "... ummm, nik daukadan zenbakia $aukera baino txikiagoa da \n";
	}
}
print ("$ahalegin ahalegin behar izan dituzu zenbakia asmatzeko.\n");