#!/usr/bin/perl 
use warnings;
use strict;

print("Idatzi zenbaki bat: ");
my $zenb = <STDIN>;
chomp($zenb);
# azpiprogramari deia
izartxoakIdatzi($zenb);

# azpiprogramaren definizioa
sub izartxoakIdatzi {
	my ($izar_Kop) = @_;
	my $kont = 0; # Kontrol-aldagaia
	while ($kont <$izar_Kop) { 
		print "*";
		$kont++;
	}
}