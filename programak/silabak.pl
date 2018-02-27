#!/usr/bin/perl

# kontsonante taldeak 
my @KT = ('bl', 'br', 'ts', 'tz', 'tx', 'dl', 'dr', 'fl', 'fr', 'gl', 'gr', 'll', 'pl', 'pr', 'rr', 'tl', 'tr');
my $KT = "(?:bl|br|ts|tz|tx|dl|dr|fl|fr|gl|gr|ll|pl|pr|rr|tl|tr)";
my $B = '[aeiou]';
my $K   = '[bcdfghjklmnñpqrstvxyz]';
my $KetaKT = "(?:$KT|$K)";
my $dipt = "(?:ai|ei|oi|ui|au|eu|ou)";   # ee diptongo bezela? (zezakeela, daitekeela...)
my $diptH = "(?:ai|ahi|ei|ehi|oi|ohi|ui|uhi|au|ahu|eu|ehu|ou|ohu)"; #diptongoak tarteko h eta guzti
my $hauts = "(?:ea|ia|oa|ua|ae|ie|oe|ue|ao|eo|io|uo|iu)";
my $tript = "(?:$V$V$V)";  # triptongoak?


my @nere_sil;
my $sil;
my $hitza;
my $fitx_izen = $ARGV[0];


open(Fitx, "$fitx_izen") or die("Ezin izan dut fitxategia zabaldu!\n");

while($hitza = <Fitx>) {
	chomp($hitza);
	@nere_sil = silabatan($hitza);
	print("\n\n$hitza\n");
	foreach $sil(@nere_sil) {
		print ("$sil\n");
	}
}


sub silabatan ($) {
    my $hitz = shift;
    my @silabak;
	my $sil;
	

    while ($hitz) {

      	if ($hitz =~/^($KetaKT?(?:$diptH|$B)$K{0,2}?)$/) {
			#h-dun  silaba bakarreko diptongoak (ehun, nahi)
			push @silabak, $1;
			#print ("zero: $1\n");
            substr $hitz, 0, $+[1], '';
		} 
		if ($hitz =~ /^($KetaKT?(?:$diptH|$B)$K{0,2}?)$KetaKT$B/io) {
		# (Kontsonante eta taldeak (0 edo 1)  + diptongo edo bokala + kontsonanteak (0 -2) ahalik gutxien) + (kontsonante eta taldeak + bokalak)
			push @silabak, $1;
			#print ("bat: $1\n");
            substr $hitz, 0, $+[1], '';
		} 
		elsif ($hitz =~/^($K*?(?:$hauts))/io) {  #hiatoak
			$sil = substr($hitz, 0, (length($1)-1));
			#print ("bi: $sil\n");
			push @silabak, $sil;
			substr $hitz, 0, (length($1)-1), '';
			}
			
		else { # azken silaba denean
			#print ("hiru: $hitz\n");
            push @silabak, $hitz;
            undef $hitz;
        }

    }

 
		 
    return @silabak;
}