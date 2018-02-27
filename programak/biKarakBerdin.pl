#!/usr/bin/perl 
use strict;
use warnings;

open (FITX, $ARGV[0]) || die("Ezin $ARGV[0] fitxategia zabaldu\n");
my @hitzak;
my $lerro;
while ($lerro = <FITX>) {
	chomp($lerro);
	# Banatu lerroa hitzetan. Banatzaileak: . , ; : ? ! eta zuriunea
	@hitzak = split(/[\.\?!;:,\s]+/,$lerro);
	# Lerroko hitz bakoitzeko
	foreach my $h (@hitzak) {
		# Bistaratu bi karaktere berdin baditu jarraian
		print ("$h\n") if ($h =~/([a-z])\1/);
	}
}
close(FITX);