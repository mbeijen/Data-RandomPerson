# $Id: ModernGreekLast.pm,v 1.3 2005/05/22 17:02:30 peterhickman Exp $

package Data::RandomPerson::Names::ModernGreekLast;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
alexopolous
alexopoulos
anagyrou
anastassiou
andreadis
andreou
andriopoulos
andronikos
andros
androuchelli
androupolos
androutsos
angelis
angelomatis
angelou
anistonopoulos
anninos
antikatzides
antonatos
antonious
argyra
athanasiadis
athanassiadi
axelos
bakirdzis
bakogianni
balanos
bazignos
bessarion
bizos
borbokis
botsaris
boudouris
bourgani
capodistria
carides
castriota
catalactus
chacoliades
chakiris
christodoulou
christos
clerides
constandouros
constantinis
cosmatos
costanduros
costi
cotsadis
couloumbis
coulouris
damaskinos
deligiannis
deligiorgis
delivorias
dellas
demertzis
demosthenous
dimas
dimitrakos
dimitriades
dimitris
dimotsios
diomedes
dontas
doxiadis
dukakis
duvis
economakis
economou
eliades
elipandas
ellinas
farakos
fettas
florakis
galonopoulas
gatsioudis
gatzioudis
gavrielides
gennadios
genovelis
george
georghiou
giorgiou
gislenus
gizikis
glezos
gogos
gonatas
goulandris
gounaris
gousetti
grivas
hagiorgiu
hajiyanni
halara
harteros
iakovakis
iakovou
iatrides
ioannidis
ioannou
issigonis
joakimides
kairis
kaklamanakis
kakoulli
kalergi
kallabis
kalvos
kanaris
kanellopoulos
kaphandaris
karahi
karaiskakis
karamanlis
karatossos
karoki
karyoti
kasomoulis
katsantonis
katsaris
kenteris
khadjikyriakos
klaras
kochalakos
koffa
kokkinos
kokotis
kolettis
kollias
kolokotronis
kondylis
kontoghiorghes
koraïs
korkizoglu
korres
koryzis
koskotas
kostanopoulos
kostopoulou
kostopulos
kotaridou
koukodimos
koukoudimos
koumoundouros
koundouriotis
kourniakis
kousoulas
kozani
kritopoulos
kyprianou
kyriacou
kyriakou
kyriazis
lambrakis
lambrianou
lambrinos
lathouris
lazardis
leonidis
lianis
logotheti
louca
louganis
louvaris
lyssarides
maganas
magos
maharis
makarezos
makrigiannis
malachias
maliagros
mangakis
marcoullides
mardas
marinatos
markezinis
markoulides
markoullides
marsolais
martis
matacena
mavridou
mavrogordatos
mavrokordatos
mavromikhalis
mavros
mavroudis
maximos
melas
meletoglou
meletoglu
melikis
melissanides
mercouri
merukides
messimeris
metaxas
michaelis
mikalis
mikhalakopoulos
militis
mitrou
mitsotakis
monomachus
moscopolis
moumoulidis
muscouri
mylonas
nafpliotis
negris
niarkhos
nikolaides
onassis
orphanides
oxinos
palamas
pallis
pan
panagiatopoulos
panagiopoulou
panagiotopou
panagou
panagoulias
panagoulis
panaotis
panavoglou
panayi
panayides
panayiotopoulos
panayiotou
pangalos
papadakis
papademetriou
papadias
papadopolos
papadopoulos
papadoupolos
papafagos
papageorgiou
papagos
papakostas
papamichael
papanastasiou
papandreou
papasotiriou
papatamelis
papathanassiou
papoulias
pappas
pappou
parastadidis
pattakos
pavlakakis
pentzopoulos
pesmazoglou
pheraios
philipousis
pierides
pietris
pipinelis
pittakis
pittakys
plastiras
polides
polycarpous
polychroniadis
polychroniou
polydorou
polymeropoulos
polymeru
polyzou
popotas
porpurogenitos
pratkanis
prevalakis
primikynos
psara
psaros
psaroulakis
rallis
saltsidis
samos
sampras
sanassis
sarakatsani
saraphis
sardzetakis
sarris
sartzetakis
sarus
savakis
savalos
savvides
sbokos
senteildis
siantos
sicilianos
simopoulos
sirtis
skandalis
skiotis
skouloudis
skouphas
solomos
sophoulis
souvaltzis
stamanakis
stasi
stavrakis
stavrianakis
stavrianos
stavrou
stephanopoulos
stoikos
strapoudopolos
stratis
stroubakos
taliadoros
tathouris
tavoularis
terzin
thanou
theodopoulos
theodorakis
theophanous
theothanou
theotokis
touliatos
tournikiotis
tragianopoulos
trikoupis
tsakolov
tsaldaris
tsatsos
tsavdaridou
tsiamita
tsigakou
tsikouna
tsiolakoudi
tsirigolis
tsirimokos
tsolakoglou
tsoni
tsouderos
tsougarakis
tsoutsouvas
tsyoma
tzannetakis
tzivas
vadeki
valaoritis
valvis
vaphiadis
vardakastanis
varvaressos
vasdeki
vasdekis
vasiliou
vassilides
vatatzes
veloukhiotis
venizelos
verdanis
vergopoulos
vlakhos
vlakhou
voulgaris
voulgaropoulos
vouris
xanthos
xanthou
xenakis
xydis
yannopoulos
yialouris
ypsilantis
zafiropoulos
zakhariadis
zarikos
zaïmis
zervakos
zervas
zikos
zindilis
zisimides
zographas
zolotas
zoïtakis
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::ModernGreekLast - A list of last names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::ModernGreekLast, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ModernGreekLast;

  my $n = Data::RandomPerson::Names::ModernGreekLast->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of last names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ModernGreekLast object.

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
