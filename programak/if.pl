#!/usr/bin/perl
use strict;
#if kontrol egituraren adibidea
print ("Idatzi ezazu zenbaki bat teklatu bidez: ");
my $zenb = <STDIN>;		#teklatu bidez idatzitakoa $kop aldagaian gorde
chomp($zenb);			#bukaerako lerro jauzia kendu
if ($zenb < 10) {		#baldintza
	print("Idatzi duzun zenbakia 10 baino txikiagoa da\n");
}
