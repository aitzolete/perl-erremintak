#!/usr/bin/perl 
use strict;
use warnings;

my ($fitx, $lerro,@hitzak, $karKop, %Zerrenda);
$fitx = $ARGV[0];
open (FI, $fitx) || die("Ezin $fitx fitxategia zabaldu!\n");

while ($lerro = <FI>) {
	chomp($lerro);
	# Banatu lerroa hitzetan. Banatzaileak: koma, puntu eta koma,puntua, galdera eta harridura ikurrak eta zuriuneak 
	@hitzak = split(/[\,\.\s\?!;]+/,$lerro);
	# Lerroko hitz bakoitzeko
	foreach my $hitz (@hitzak) {
		# Hitzaren karaktere kopurua gorde
		$karKop = length($hitz);
		# %Zerrenda hash-ean $karkop gakoa existitzen ez bada
		# sortu gako horrentzako izengabeko array baten erref.
		$Zerrenda{$karKop} = [] if (!exists($Zerrenda{$karKop}));
		# Gehitu hitza erreferentziatutako array-aren amaieran
		push(@{$Zerrenda{$karKop}}, $hitz);
	}
}


# %Zerrenda egiturako gakoak ordenatuta lortu
# eta begizta bidez banan-bana pantailaratu
foreach my $luz (sort({$a <=> $b} keys(%Zerrenda))) {
  print("$luz karakteretako hitzak: ");
  # $luz luzerako hitzen array-a atzitu eta @hitzak array-an gorde
  @hitzak = @{$Zerrenda{$luz}};
  # @hitzak ordenatu, string bakarrean bildu eta pantailan bistaratu
  print(join(", ", sort(@hitzak)));
  print("\n");
}
