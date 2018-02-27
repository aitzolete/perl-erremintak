#!/usr/local/bin/perl
use warnings;
use strict;

#Komando lerrotik hiztegi-fitxategiaren izena jaso
my $fitx = $ARGV[0];
#Fitxategia zabaldu
open (FITX, $fitx) or die("Ezin $fitx fitxategia zabaldu\n");
# Gorde hiztegi-fitx. @hiztegia array-an
my @hiztegia = <FITX>;
#Hiztegiko hitz bat aukeratu zoriz
# $#hiztegia: @hiztegia-ren azken indizea 
my $hitza = $hiztegia[rand($#hiztegia)];
chomp($hitza);
# hitza karaketere zerrenda bihurtu
my @hitza = split(//, $hitza);

# Jokoan erabilitako karaktereak gordetzeko array-a
my @ibilitakoak;
# Hitza asmatzeko aukera kopurua
my $aukerak = 7;
# Asmatutako letra kopurua
my $asmatuak = 0;
# 1 asmatu, 0 huts
my $igarri = 0;
# Teklatutik karaktere bat jasotzeko
my $karak;
# Asmatutako letrak
my @aurkituak;
# @aurkituak array-a hasieratu
for (my $i=0; $i<=$#hitza; $i++) {
	$aurkituak[$i] = '_';
}
	
# Jarraitu jokoan aukera guztiak erre edo hitza asmatu bitartean
while (($aukerak > 0) && ($asmatuak < length($hitza))) {
	print("@aurkituak\n");
	print ("$aukerak aukera gelditzen zaizkizu\n");
	print("Idatzi karaktere bat (erabilitakoak @ibilitakoak): ");
	$karak = <STDIN>;
	chomp($karak);
	#Gorde karakterea erabilitakoen zerrendan
	push(@ibilitakoak, $karak);
	$igarri = 0;
	# Konprobatu ezkutuko hitzak $karak karakterea daukan
	# Karaktere berbera behin baino gehiagotan izan dezake ezkutuko hitzak
	for (my $i=0; $i<=$#hitza; $i++){
		if ($hitza[$i] eq $karak) {
			#Asmatutako karaktere kopurua gehitu
			$asmatuak++;
			#Asmatutako karaktereen array-ean dagokion posizioan idatzi
			$aurkituak[$i] = $karak;
			#Jatorrizko hitzetik karakterea ezabatu
			$hitza[$i] = '_';
			$igarri = 1;
		}
	}
		
	if ($igarri) {
		print("\nBadauka $karak karakterea\n\n");
	}
	else {
		print("\nEz dauka $karak karaktererik\n\n");
		$aukerak--;
	}
}

if ($asmatuak == length($hitza)) {
	print("ZORIONAK! $hitza zen gure hitz sekretua\n");
}
else {
	print("Ez duzu asmatu: $hitza zen gure hitz sekretua\n");
}
		

close(FITX);