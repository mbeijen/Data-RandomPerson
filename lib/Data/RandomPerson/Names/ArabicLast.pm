package Data::RandomPerson::Names::ArabicLast;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
abaza
abbas
abbas-ghulam
abdul-hafeez
abdul-qadir
abelzada
abid
abou
abu
afaq
afnan
aftab
ahmed
ahmed-mohammad
ahmed-shoiab
ahmed-zaheer
ahrari
ahsan
aizazuddin
akhlaqi
akhtar
akil
akram
akwal
al-amri
al-ansar
al-asmari
al-bihmardi
al-bin-bagheri
al-bin-doleh
al-dalharni
al-daye
al-deayea
al-dosari
al-dossadi
al-dossari
al-dwairan
al-farran
al-fayyoumi
al-habash
al-halou
al-hardi
al-jaber
al-jahani
al-jahni
al-jurr
al-karachi
al-khlaiwi
al-masaari
al-mawalhad
al-mehalel
al-mowaled
al-mubi
al-mukhtar
al-mutadee
al-muwalid
al-nubi
al-owairan
al-razi
al-rhul-ghias
al-sabah
al-sahaf
al-sahhah
al-shahid-mahmood
al-shahrani
al-shammari
al-sharani
al-talavi
al-taleqani
al-temiyat
al-thynniyan
al-ul-yazdi
al-yaldai
al-zeid
ala
alam
algosaubi
ali
ali-sadiq
alim-ud-din
alkhaiwani
altaf
alzeshi
amer
ameri
amin
amini
amir
amirsadeghi
ammini
amouzegar
amuzgar
andoni
ansari
anvari
anwar
ardabili
arfa
arif
armanjani
asad
asgapur
ashrafy
asif
asir
aslam-mohammad
atef
atta-ur-rahman
avarigan
awji
azizi
azmat
ba'albaki
bahamdan
bahonar-bin-laden
bakahasab
bakhtavar
bakhtiar
bani-sadr
baraheri
baraniq
bari
bazargan
billah
bin
butt
daei
dalvand
dastghayb
davisadr
dhabihiyan
diba
dihmubidi
dihqani
dilawar
doka
dulabi
ebtehaj
eftekhari
elahi
elouahabu
estili
estilidaei
ettehadieh
fahandizh
fakir
faraj
farooq
farrakhan
fasihuddin
fatemi
fazal-mahmood
fida
forrughi
gaffari
garoussi
ghatary
ghazali-ghulam
ghurani
gul
gul-mahomed
habibi
hafeez
haji
hamed
hami
hanif
haqiqat
haqiqatju
haseeb
hassan
hejazi
hijaz
hisami
homayoun
hoveyda
husain
hushmand
hussain
ibadulla
ijaz
ikram
imami
imran
imtiaz
inshan
intikhab
inzamam-al-haq
iqbal
iravan-bin-mahood
ishraqi
ismail
izadi
jafari
jahangir
jahanpur
jalili
javadi
javed
jayhoon-ahmed
k
kamal
kanasani
karbaschi
kardar
karim
kazemi
kazimi
keshuapad
khadim
khakpoor-bin-mahood
khakpour
khalid
khamenei
khan
khandil
khani
khanlary
khatami
khomeini
khushkhu
khuzayn
kordiyeh
madani
madari
mahallati-al-bin
mahdavi-kia
mahmood
mahmudi
mahmudnizhad
mahomed
majid
majidi
malik
mansur
maqsood
maradi
maro
masood
mazlum
mehani
mehr
meshkat
miandad
mihdizadih
minavand
misbahi
moham
mohammad
mohsin
mossadegh
moullai
mu'ini
mualimi
mudassar
muhammadi
mulla
mumtaz
mumtazi
muqimi
musavi
mushtaq
mushtaq-bin-mohammad
mutlaq
na'imi
najafi
nakisa
nasim-ul-ghani
nasir
nasiri
nassir
nassiri
naushad-ali
nawaz
nazar
nazari
nemazi
nezam
niaz
nirumand
nissar
norouzi
nouri
pahlavi
pakravan
pashazadeh
pervej
qashqai
qazai
qoli
rabani
raboud
radji
rafigdoost
rahimi
rana
rawhani
raza
razmara
reyahni
roohizadegan
rostom
sabbah
sabet
sabiri
sadiqi
saeed-ahmed
sajjad
salahuddin
salam-ud-din
saleh
salim
salimpour
sanjabi
sarfraz
shafaq
shafquat
shah
shahriar
shahy
shakoor
shakra
shariat-bin-laden
shariati
sharudi
shia-agil
shirazi
shouaa
shuja-ud-din
siham
siyavushi
solaimani
somayli
sotoudeh
sulimani
sumech
surur
syed
tabatabai-al-rhul
talaqani
talebi
ta'anari
vafa'i
vahdat
waqar
wasim
wazir
yaldai
yaqtin
younis
za'irpur
zahed
zahedi
zanjani
zarincheh
zebramani
ziya-al-ghulam
zuabi
zubromawi
zulfikarabedzadeh
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::ArabicLast - A list of last names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::ArabicLast, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ArabicLast;

  my $n = Data::RandomPerson::Names::ArabicLast->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of last names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ArabicLast object.

=back

=head2 Class and object methods

=over 4

=item get( )

Returns a random name from the list.

=item size( )

Returns the size of the list

=back

=head1 ENVIRONMENT

Perl 5

=head1 DIAGNOSTICS

None

=head1 BUGS

None so far

=head1 FILES

None

=head1 SEE ALSO

None

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. All rights reserved. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.
