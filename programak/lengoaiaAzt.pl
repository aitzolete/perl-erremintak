#!/usr/bin/perl 
use strict;
use warnings;

open(FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu\n");

my ($lerro, $hitz, @karak, $kar, $aurrekokar,$aurre2kar,$karkop, $bokalkop);
my (%unigram, %bigram, %trigram);
my (@unigramOrd, @bigramOrd, @trigramOrd);

$karkop = 0;
$bokalkop = 0;

while($lerro = <FITX>){
	chomp($lerro);
	# Lerro hasierako eta bukaerako zuriuneak kendu
	$lerro =~ s/^\s*//;
	$lerro =~ s/\s*$//;
	# Letra larriak xehe bihurtu
	$lerro =~tr/A-Z/a-z/;
	# Letra ez diren ikurrak ezabatu
	$lerro =~tr/.,:;!?"(){}//d;
	# Lerroa karakteretan banatu	
	@karak = split(//, $lerro);
	# Hasieratu aldagaiak zuriunearekin
	$kar = ' ';
	$aurrekokar = ' ';
	$aurre2kar = ' ';
	foreach my $i (@karak){
		$karkop++;
		# Aurrekoaren aurreko karakterea gorde $aurre2kar-en
		$aurre2kar = $aurrekokar;
		# Aurreko karakterea gorde $aurrekokar-en
		$aurrekokar = $kar;
		# Uneko karakterea gorde $kar aldagaian
		$kar = $i;
		# Bokalak kontatu
		$bokalkop++ if ($kar =~/[aeiou]/);
		# unigrama, bigrama eta trigramak eraiki
		# Zuriunerik bada baztertu
		if ($kar =~/\S/) {
			$unigram{$kar}++;
			if ($aurrekokar =~/\S/) {
				$bigram{$aurrekokar . $kar}++;
				if ($aurre2kar =~/\S/) {
					$trigram{$aurre2kar . $aurrekokar . $kar}++;
				}
			}
		}
	}
		
}
close(FITX);
# Ordenatu hash egiturak n-grama bakoitzaren
# agerpen kopuruaren arabera
# Gorde hitz-zerrenda array-etan
@unigramOrd = sort({ $unigram{$b} <=> $unigram{$a} } keys(%unigram));
@bigramOrd = sort({ $bigram{$b} <=> $bigram{$a} } keys(%bigram));
@trigramOrd = sort({ $trigram{$b} <=> $trigram{$a} } keys(%trigram));
# Bistaratu maizen agertu diren
# 10 n-gramak
print "Unigramak\tBigramak\tTrigramak\n";
my $i=0;
while ($i < 10) {
	printf("$unigramOrd[$i]\t\t$bigramOrd[$i]\t\t$trigramOrd[$i]\n");
	$i++;
}
print("\n\n");
# Agerpen kopuru handieneko letra
# eta bere maiztasuna
my $maizkar = 100 * ($unigram{$unigramOrd[0]}/$karkop);
printf("Letra ohizkoena: %s  Maiztasuna: %4.4f\n",$unigramOrd[0],$maizkar);
# Bokalen maiztasuna testuan
my $maizbok	 = 100 * ($bokalkop/$karkop);
printf("Bokal maiztasuna: %4.4f\n",$maizbok);

