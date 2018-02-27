#!/usr/bin/perl
use strict;
use warnings;

my ($lerro,%hash1, %hash2, %hashOrok, @hitzak1, @hitzak2);
my (@lehen, @bigarren);

open (FITX1, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia ireki\n");

while ($lerro = <FITX1>) {
	chomp($lerro);
	# Lerroa hitzetan banatu
	@hitzak1 = split (/[\s\.,;:\?!]+/, $lerro);
	# Hitz bakoitza prozesatu
	foreach my $hitz (@hitzak1) {
		# Lehen lerroko hitzak biltzen dituen hash-a
		$hash1{$hitz} = 1;
		# Hitz guztiak biltzen dituen hash-a
		$hashOrok{$hitz} ="A";
	}
}
close(FITX1);

open (FITX2, $ARGV[1]) || die("Ezin $ARGV[1] fitxategia ireki\n");
while ($lerro = <FITX2>) {
	chomp($lerro);
	@hitzak2 = split (/[\s\.,;:\?!]+/, $lerro);
	foreach my $hitz (@hitzak2) {
		# Bigarren lerroko hitzak dituen hash-a
		$hash2{$hitz} = 1;
		if(exists($hashOrok{$hitz})) {
			$hashOrok{$hitz} = "AB";
		}
		else {
			$hashOrok{$hitz} = "B";
		}
	}
}
close(FITX2);



foreach my $elem (sort(keys(%hashOrok))) {
	if ($hashOrok{$elem} eq "A") {
		push(@lehen, $elem);
	}
	elsif ($hashOrok{$elem} eq "B") {
		push(@bigarren, $elem);
	}	
}

print ("*****************\n");
print("$ARGV[0]-ren hitz propioak:\n");
foreach my $elem (@lehen) {
	print("$elem\n");
}
print ("*****************\n\n");
print("$ARGV[1]-ren hitz propioak :\n");
foreach my $elem (@bigarren) {
	print("$elem\n");
}
print ("*****************\n");
