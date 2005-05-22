# $Id: ModernGreekFemale.pm,v 1.3 2005/05/22 17:02:30 peterhickman Exp $

package Data::RandomPerson::Names::ModernGreekFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
acacia
acantha
adona
adonia
aegea
aeola
agalia
agathe
agathi
agna
agne
agnes
aikaterine
alala
aldora
aleka
aleki
aleni
alethea
alethia
alex
alexa
alexandra
alexia
alexine
alfa
alithea
althaia
altheda
altheta
ambrosia
ambrosina
ambrosine
anasta
anastasia
anastasie
anatolia
andrianna
andromeda
andromede
anemone
angela
angele
angeliki
angeline
angheliki
angliki
antha
anthea
antheia
aphrodite
apollina
apolline
areta
arete
ariadna
ariadne
ariana
ariane
arianne
artemis
artemisia
aspa
aspasia
aspia
asta
aster
astra
astrea
atalanta
atalante
athena
athenagora
athene
atlanta
aura
basila
basilea
basilia
berenice
berenike
berna
bernice
brosina
calandra
calantha
calida
calista
calla
calli
calliope
casandra
cassandra
cassandre
cassia
celena
charis
charissa
chloe
chloras
chloris
chlorise
chlorisse
christa
christi
christiane
christine
cinthia
cipria
cipriana
cleopatra
cloe
cloris
clyte
clytia
clytie
cora
cori
corinna
corinne
corrina
corrine
corrinne
cosima
cosma
cresida
cressa
cressida
cyma
cynara
cynthia
cypra
cypria
cyra
cytherea
cytheria
damala
damalas
damali
damalis
damalla
damara
damaris
damarra
damia
daphna
daphne
daphney
dari
daria
darice
darise
darrice
deianira
delfina
delfine
delfinia
delia
delphina
delphine
delphinia
demetra
demetria
demitria
denice
denise
diantha
dianthe
dianthia
dido
dimitra
dimitria
diona
dione
dionis
dionne
dionyssia
dora
dorca
dorcas
dorcea
dorcia
dorea
doria
dorice
dorinda
doris
dorise
dorisse
dorkas
dorothe
dorris
dorrise
dorthea
echo
eirene
ekaterine
ekaterini
elaine
electra
eleftheria
elektra
elena
eleni
elenitsa
elewteria
elewtheria
elina
ellena
ellice
ellise
elma
elpida
emalia
eria
erianthe
euda
eudocia
eudokia
eudora
eudosia
eudoxia
eugenia
eula
eulalia
eulalie
eunice
eunike
euphemia
euphenia
euphrosyne
evadne
evanthe
evgenia
fedora
feodora
filia
fotini
galatea
georgia
gryta
hagne
halcyone
helena
helene
helia
hera
hermione
hesper
hespera
hesperia
iantha
ianthe
io
iona
ione
ionia
iphigeneia
iphigenia
irene
iris
irisa
isadora
isaura
isaure
jocasta
kali
kalidas
kaligenia
kalika
kaliope
kalli
kalligenia
kalliope
kallirrhoe
kallisto
kalonice
kalyca
kassandra
katina
khloe
kora
kore
koren
korinna
kynthoa
kyriakoula
lalage
leandra
leda
lelia
lena
lexa
lexi
lidia
lycoris
lydia
lympia
lyris
madeline
magdelene
mara
margarites
mari
marina
maris
meda
medora
melaina
melania
melanie
melantha
melina
melissa
melodie
melody
mona
neola
neoma
neomah
neona
nerissa
nike
niki
nikki
nikola
nikoleta
niobe
nitsa
nysa
nyssa
odele
odella
olga
olympe
olympia
ophelia
ophelie
orthia
ourania
pandora
pangiota
panthea
parhena
parthenia
parthenie
pelagia
penelope
persephone
petra
petrina
phaedra
phaidra
phelia
philana
philantha
philene
philina
philippa
philippe
philis
philisse
phillina
phillipa
phillippe
phillis
philomela
philomena
philothea
phoebe
phoenix
phylis
phylisse
phyllis
pia
pippa
rena
resi
rhea
rhoda
rhode
ritsa
saphhira
selene
selona
sibella
sibyl
sibyll
sibylla
sofi
sofia
sofronia
sophia
sophie
stacie
stamata
stasia
stefana
stefania
stella
sybil
sybilla
syma
tassia
tassula
tecla
tekla
teodora
teresa
terese
tessa
thaddea
thais
thalassa
thaleia
thalia
tharsia
thea
thecla
theda
thekla
theodora
theodosia
theona
theone
theonie
theophania
theophano
theophilia
theresa
theta
thetis
timothea
toula
tresa
urania
vasiliki
xantha
xanthe
xantippe
xenia
xyla
xylia
xylina
xylona
yana
zena
zenaida
zenia
zenobia
zephyra
zinara
zoe
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::ModernGreekFemale - A list of female names

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson::Names::ModernGreekFemale, released May 22nd, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ModernGreekFemale;

  my $n = Data::RandomPerson::Names::ModernGreekFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ModernGreekFemale object.

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
