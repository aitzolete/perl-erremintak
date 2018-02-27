#!/usr/bin/perl
#sarrera: teklatu bidez idatzitako esaldia
#irteera: idatzitakoa palindromoa den ala ez itzuliko du programak
use warnings;
use strict;

print("Idatzi esaldi edo hitz bat:\n");
my $testua = <STDIN>;
chomp($testua);
  
# hitz karaktere ez direank ezabatu
$testua =~ s/\W//g;
# Letra larriak xehe bihurtu
$testua =~ tr/A-Z/a-z/;
# karakterez-karaktere array-ean gorde
my @karak = split (//, $testua);
#array-a atzekoz aurrera jarri eta karaktereak elkarrekin itsatsi
my $atzekozAu = join ("", reverse (@karak));

# palindromoa den konprobatu
if(@karak == 1){
	print "Letra bakarreko palindromoa!\n";
}
elsif($atzekozAu eq $testua){
	print "Palindromoa da\n";
}
else{
	print "Ez da palindromoa\n";
}
