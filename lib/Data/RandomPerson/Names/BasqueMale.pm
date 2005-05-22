# $Id: BasqueMale.pm,v 1.3 2005/05/22 17:02:28 peterhickman Exp $

package Data::RandomPerson::Names::BasqueMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
abarrotz
aberri
adame
adei
adon
adur
ageio
ager
agosti
agoztar
aide
aiert
aimar
aingeru
aintza
aioro
aire
aita
aitor
aitzol
aketza
alain
alaon
alar
alarabi
alatz
albi
alesander
allande
alots
altzibar
ambe
ametz
amuruza
anaia
anakoz
anartz
anaut
ander
andima
andoitz
andolin
andoni
aner
anixi
anko
anter
antso
antton
antxoka
apal
apat
arabante
aralar
arano
aratz
aresti
argi
argider
argina
argoitz
arixo
arnaitz
arnalt
arnas
arotza
arrats
arrosko
artizar
artzai
artzeiz
asentzio
asier
asteri
astigar
atarrabi
atarratze
atseden
atze
atzo
aurken
aurre
austin
auxkin
axular
azeari
azibar
aznar
aztore
azubeli
baiardo
baiarte
baiona
bakar
baladi
balasi
balendin
baleren
balesio
baraxil
bardol
barea
basajaun
batista
bazil
bazkoare
beat
behe
beila
bela
belasko
beltxe
beltza
benat
berart
berasko
berbiz
berdaitz
berdoi
beremundo
bernat
bero
berriotxoa
bertol
betadur
beti
bidari
bide
bihar
bikendi
bilbo
bilintx
bingen
birila
birjaio
bittor
bixintxo
bizi
bladi
bordat
bortzaioriz
burni
burutzagi
danel
dei
denis
deunoro
diagur
diegotxe
distiratsu
domeka
domiku
dominix
donostia
dunixi
eate
eder
edorta
edur
egoi
egoitz
eguen
eguerdi
egun
eguntsenti
eguzki
ekain
ekaitz
ekhi
ekialde
elazar
eleder
eli
ellande
elorri
emenon
enaut
endira
endura
eneko
enekoitz
eneto
enetz
erauso
ereinotz
eriz
erlantz
erramu
erramun
errando
errapel
errolan
erroman
error
erruki
eskuin
estebe
etor
etxahun
etxatxu
etxeberri
etxekopar
etxepare
eusko
ezkerra
eztebe
fermin
firmo
formerio
fortun
frantxizko
frantzes
frederik
froila
gabirel
gabon
gai
gaizka
gaizkine
gaizko
galindo
galoer
ganix
gar
garaile
garaona
garikoitz
garin
garoa
gartxot
gartzea
gartzen
gartzi
gaskon
gasteiz
gaston
gau
gauargi
gaueko
gaur
gaxan
gaztea
gentza
geraldo
gerazan
gergori
gero
gilen
gilesindo
giro
gizon
gogo
goi
goiz
goizeder
gomesano
gora
gorbea
goren
gorka
gorosti
gorri
gotzon
gurutz
gutxi
haitz
handi
hanni
hanot
haritz
haritzeder
harkaitz
harri
harriet
hartz
hats
hegoi
herauso
herensuge
hibai
hitz
hitzeder
hodei
hori
hotz
hurko
hustaz
iaki
iban
ibar
ibon
ieltxu
igon
igor
ihazintu
ihintza
iigo
ikatz
iker
ilazki
ilixo
illart
imanol
inautzi
indar
indartsu
inge
inguma
inko
intxixu
ioritz
ipar
iparragirre
iraitz
iratxo
iratze
iratzeder
iraunkor
irrintzi
iruinea
isidor
isusko
iturri
itzaina
ixaka
ixidor
ixona
izotz
iztal
jaizki
jakes
jakobe
jakue
janpier
jatsu
jaunti
jaunzuria
joanes
jokin
jon
joseba
josepe
josu
juandasalbatoreascension
juaneizu
juango
juantxiki
julen
jurdan
jurgi
kaiet
karmel
kauldi
kaxen
kelemen
kemen
kepa
kiliz
kimetz
kismi
koldo
koldobika
kusko
lain
lander
lapurdi
larra
lartaun
lastur
lauaxeta
laurendi
laurentzi
laurgain
laurin
lehen
leheren
lehior
lehoi
leizarraga
lekubegi
leoiar
ler
lertxun
liher
lizar
lizardi
lohitzun
loiola
lon
lope
loramendi
lordi
lore
loren
lorenz
luar
luix
luken
luzaide
luzea
maiorga
maju
manex
mantzio
manu
maore
marin
markel
marko
martxel
martxelin
martxot
marz
matei
matia
mattin
matxin
maule
maurin
mazuste
meder
mederi
mendebal
mendiko
mikel
mikelar
mikelats
mikeldi
mikolas
milian
min
mirande
mitxaut
mitxel
mogel
montxo
munio
musko
nabar
nahia
nikola
nuno
nuxila
obeko
odol
odon
oidor
oier
oihan
oihenarte
oinatz
oinaz
olentzaro
onbera
ongile
opilano
orain
orixe
orkatz
oroitz
orti
ortle
ortzi
orzaize
osasun
oskarbi
oskitz
osoitz
ospetsu
ospin
ostadar
ostargi
ostots
otsando
otsoa
otsoko
oxarra
oxel
pagomari
panpili
paskal
patxi
paul
paulin
paulo
peli
pello
perrando
peru
peruanton
perutxo
pes
petri
petrigai
piarres
pierres
polentzi
poz
presebal
pudes
raitin
remir
ruisko
sabin
salbatore
sandaili
sanduru
santi
santikurtz
santio
santutxo
santxo
santxol
sasoin
satordi
seber
selatse
seme
semeno
sendoa
sengrat
sesuldo
silban
soin
soter
sotil
su
sugar
sugoi
sustrai
tartalo
tello
teobaldo
tibalt
tipi
todor
totakoxe
tristan
tuste
txanton
txaran
txartiko
txatxu
txerran
txeru
txilar
tximitx
txindoki
txomin
txordon
txurio
ubarna
ubelteso
ubendu
udalaitz
ugaitz
ugutz
uhin
umea
unai
unax
ur
urbasa
urbez
urdaspal
urdin
urki
urko
urre
urritz
urtats
urti
urtsin
urtsua
urtun
urtungo
urtzi
uzuri
xabat
xabier
xalbador
xantalen
xanti
xarles
xefe
ximun
xofre
xuban
xurdin
zabal
zadornin
zeledon
zernin
zeru
zeruko
zigor
zilar
zohiartze
zoil
zorion
zuhaitz
zumar
zunbeltz
zuri
zuriko
zuzen
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::BasqueMale - A list of male names

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson::Names::BasqueMale, released May 22nd, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::BasqueMale;

  my $n = Data::RandomPerson::Names::BasqueMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::BasqueMale object.

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
