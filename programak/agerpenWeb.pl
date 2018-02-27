#!/usr/bin/perl
use warnings;
use strict;
use LWP::Simple;

print("Ze helbidetan begiratu behar dut?\n");
my $html = <STDIN>;
chomp($html);
$html = "http://".$html;

# Jaso bilaketa patroiak
my $sarBat = $ARGV[0];
my $sarBi = $ARGV[1];

my $agerpenBat = 0;
my $agerpenBi = 0;
my ($weba, @linkak);

#bisitautako web orrien helbideak
my @bisitatuak;
#bisitatu gabeko web orrien helbideak
my @bisiGabeak;
#esteka kopuru maximoa
my $linkMax = 10;
#bisitatutako link edo web orri kopurua
my $linkop = 0;

#Gehitu hasierako helbidea bisitatu gabekoen taldeari
push(@bisiGabeak, $html);

# Bisitatu gabeko helbiderik gertatzen den artean eta
# esteka kopuru maximora iritsi biatrtean
while ($#bisiGabeak > -1 and $linkop < $linkMax) {
	$html = shift(@bisiGabeak); #array-ko lehen helbidea hartu.
	# bisitatua dagoeneko?
	if (bisitatua($html) == 0) {
		$linkop++;
		# lortu web orriaren edukia
		$weba = get($html);
		# web orriko estekak atera eta gorde
		@linkak = linkak_atera($weba);
		# Gehitu estekak bisitatu gabekoen zerrendara
		push(@bisiGabeak, @linkak);
		
		while ($weba =~ /($sarBat|$sarBi)/gi) { 
					# Adierazpen erregularraren aukerak:
					# g globala (agerpen guztiak)
					# i letra larri/xeheak ez bereizi											
			# Bategitea $sarrera1 edo $sarrera2-k eragin du?
			if ($1 eq $sarBat) {
				$agerpenBat++;
			}
			if ($1 eq $sarBi) {
				$agerpenBi++;
			}
		}
		# Uneko orria bisitatuen zerrendara pasa		
		push(@bisitatuak, $html);
	}
}

print("$sarBat agerpen kopurua: $agerpenBat\n");
print("$sarBi agerpen kopurua: $agerpenBi");




# Azpiprograma
# Helbidea dagoeneko bisitatu badugu 1 itzuliko du, 0 bestela
sub bisitatua {
	my $helb = shift();
	foreach my $i (@bisitatuak) { 	#kontuz, aldagai orokorra erabiltzen ari gara
		if ($i eq $helb) {
			return 1;
			}
	}
	return 0;
}

# Argumentu bezala pasatko web orriaren estekak atera 
# eta array batean itzuli
sub linkak_atera {
my $orri = shift();
my @lerroak = split(/\n/, $orri);
my @URL;
	foreach my $lerro (@lerroak) {
		if ($lerro =~ /<a href="(http:[^"]+)"(.*)>(.*)<\/a>/) {
			if ($1!~/(jpg|gif|png|bmp|tiff|pdf|doc)/) { #Ez dadila ez irudia ezta dokumentua ere izan
				push(@URL, $1);
			}
		}
	}
	return @URL;
}
