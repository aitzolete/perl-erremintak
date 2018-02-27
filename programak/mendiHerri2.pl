#!/usr/bin/perl 
use strict;
use warnings;

my @mendiak = ("Anboto", "Gorbeia", "Aizkorri");
my @herriak = ("Bastida", "Lizarra", "Elgoibar");
# Deia azpiprogramari, argumentuak erreferentziak
erref_mendiak_eta_herriak(\@mendiak, \@herriak);

# Azpiprogramaren definizioa
sub erref_mendiak_eta_herriak {
	my ($mendiak, $herriak) = @_;

	foreach my $mendi (@$mendiak) {
		print ("mendia:\t$mendi\n");
	}
	foreach my $herri (@$herriak) {
		print ("herria:\t$herri\n");
	}
}
