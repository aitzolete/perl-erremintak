#!/usr/local/bin/perl
use warnings;
use strict;
# Web orriak atzitzeko behar dugun modulua
use LWP::Simple;
my ($URL, $edukia);
print ("Idatzi URL-a: ");
$URL = <STDIN>;
chomp($URL);
# Teklatu bidez idatzitako helbideari gehitu protokoloa 
$URL = "http://".$URL;
# Web orria eskuratu
$edukia = get($URL);
# Pantailan bistaratu edukia
print ($edukia);