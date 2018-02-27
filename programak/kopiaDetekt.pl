#!/usr/local/bin/perl
use warnings;
use strict;

my (%hash1, %hash2, %hashOrok, @esaldiak1, @esaldiak2);

# lehen fitxategia esalditan banatu
@esaldiak1 = esalditanBanatu($ARGV[0]);
# Esaldi bakoitza prozesatu
foreach my $esaldi (@esaldiak1) {
	# Lehen fitxategiko esaldiak biltzen dituen hash-a
	$hash1{$esaldi} = 1;
	# Esaldi guztiak biltzen dituen hash-a
	$hashOrok{$esaldi} = 1;
}

# bigarren fitxategia esalditan banatu
@esaldiak2 = esalditanBanatu($ARGV[1]);
# Esaldi bakoitza prozesatu
foreach my $esaldi (@esaldiak2) {
	# Bigarren fitxategiko esaldiak biltzen dituen hash-a
	$hash2{$esaldi} = 1;
	# Esaldi guztiak biltzen dituen hash-a
	$hashOrok{$esaldi} = 1;
}	
	
# Esaldi guztiak alfabetikoki ordenatu
# banan-bana tratatzeko
print ("*****************\n");
foreach my $elem (sort(keys(%hashOrok))) {
	print ("$elem\t");
	# $elem agertu da lehen lerroan?
	if(exists($hash1{$elem})) {
		print("A");
	}
	#  $elem agertu da bigarren lerroan?
	if(exists($hash2{$elem})) {
		print("B");
	}
	print ("\n\n");	
}
print ("*****************\n");


sub esalditanBanatu {
	# argumentua: fitxategi izena
	my $fitxIzen = shift();
	open(FITX, $fitxIzen) || die("Ezin $fitxIzen fitxategia zabaldu\n");
	my $testua = "";
	my $lerro;
	while ($lerro = <FITX>) {
		# Ordezkatu lerro jauziak zuriuneengatik
		$lerro =~s/\n$/ /g;
		# Kateatu lerroa $testua aldagaiari
		$testua.= $lerro;
	}
	close(FITX);
	# $testua string-a esalditan banatu
	my @esaldiak = split(/[\.\?!]+\s+/, $testua);
	return @esaldiak;
}