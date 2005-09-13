# $Id: BasqueFemale.pm,v 1.3 2005/05/22 17:02:28 peterhickman Exp $

package Data::RandomPerson::Names::BasqueFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
abarne
abauntza
abelie
adonie
aduna
aes
agate
aginaga
agirre
agurne
agurtzane
aiago
aiala
ainara
ainhoa
ainize
aintza
aintzane
aintzile
aintzine
ainuesa
aiora
aitziber
aizeti
aizkorri
aizpea
akorda
alaine
alaitz
alazne
albie
albizua
alduara
alduenza
alize
alkain
almika
almuza
aloa
alodia
altzagarate
ama
amaduena
amagoia
amaia
amalur
amane
amatza
amelina
amets
ametza
amilamia
amuna
anaeaxi
anaiansi
anaurra
ande
anderazu
andere
anderexo
anderkina
andia
andikona
andion
andolie
andone
andre
andregoto
andrekina
andremisa
andrezuria
ane
angelu
aniz
anoz
ansa
antxone
antziasko
apain
apala
araba
aragundia
araitz
arama
arana
arandon
arantza
arantzazu
araoz
arbeiza
arbekoa
arburua
areitio
areria
argi
argie
argiloain
arie
arima
ariturri
aritzaga
aritzeta
arkija
arlas
arluzea
armedaa
armola
arnotegi
arraitz
arrako
arrate
arrazubi
arreo
arriaka
arrieta
arrigorria
arriluzea
arritokieta
arrixaka
arrizabalaga
arrosa
artea
artederreta
artiga
artiza
artizar
artzanegi
artzeina
asa
asiturri
askoa
atallo
atotz
atsegie
atxarte
aurela
auria
auriola
aurkene
austie
axpe
ayala
azella
azitain
baano
babesne
baiakua
bakarne
bakene
balere
barazorda
barria
barrika
basaba
basagaitz
basalgo
basandre
beatasis
bedaio
begoa
belanda
belaskita
belate
beloke
beltzane
bengoa
bengoara
bengolarrea
beraza
berberana
berezi
berzijana
betiko
betisa
bibie
bidane
bihotz
bikarregi
bingene
biolarra
bioti
bittore
bittori
bitxi
bitxilore
bixenta
bizkaia
bizkargi
buiondo
burgondo
burtzea
deio
distira
dolore
doltza
domeka
dominixe
donetzine
doniantsu
donianzu
dorleta
dota
dulanto
dunixe
ederne
ederra
edurne
edurtzeta
egiarte
egilior
eguene
eguzkie
eider
ekhie
elaia
elduara
elisabete
elixabete
elixane
elizamendi
elizmendi
elkano
elorriaga
elurreta
eluska
enara
endera
enea
eneka
eneritz
erdaie
erdie
erdoitza
erdotza
erdoza
erguia
eriete
erika
erisenda
erkuden
erlea
ermie
ermin
ermisenda
ermua
ernio
erniobe
erramune
erramusa
errasti
erregina
erremulluri
erromane
errosali
erroz
errukine
erta
eskarne
eskolunbe
esozi
espoz
estebeni
estibalitz
estibaliz
etorne
etxano
etxauarren
eulari
eunate
euria
eusa
ezkurra
ezozia
eztegune
fede
fermina
florentxi
frantsesa
frantxa
frantziska
fruitutsu
gabone
gadea
gainko
garaie
garaitz
garazi
garbi
garbie
garbikunde
garden
gardotza
garoa
garralda
garrastazu
gartzene
gatzarieta
gaxi
gaxuxa
gazelu
gazeta
gaztain
geaxi
gentzane
geraxane
geroa
gipuzkoa
goiatz
goikiria
goikoana
goiuria
goizane
goizargi
gorane
goratze
gorostitza
gorria
gorritiz
gorriza
goto
gotzone
gozo
graxi
gure
gurutze
gurutzeta
guruzne
haize
harbona
haurramari
hegazti
helis
hiart
hilargi
hoki
hua
hugone
ibabe
ibane
ibernalo
ibone
idoia
idoibaltzaga
idurre
iera
igaratza
igone
igotz
ihintza
ikerne
ikomar
ikuska
ilazkie
ilia
iligardia
iloz
ines
ioar
ipuza
iragarte
iraia
irakusne
irantzu
irati
iratxe
iriberri
iride
iristain
iriuela
irua
irune
iruri
irutxeta
isasi
ismene
isurieta
itoiz
itsasne
itsaso
iturrieta
iturrisantu
itxaro
itziar
iurre
ixone
izar
izaro
izazkun
izorne
jaione
jasone
jauregi
joana
jokie
jone
josebe
josune
joxepa
jugatx
julene
june
jurdana
jurre
kalare
karitate
karmele
katalin
katerin
katixa
kattalin
kiles
kistie
kizkitza
kodes
koldobike
kontxesi
kontzeziona
koru
krabelin
kupie
laguntzane
laida
lamia
lamiaran
lamindao
landa
landerra
larraintzar
larraitz
larrara
larrauri
larraza
lasagain
lasarte
latsari
latxe
legarda
legarra
legendika
legundia
leioar
leire
lekaretxe
leorin
lerate
lerden
letasu
lexuri
lezaeta
lezana
lezeta
lide
lierni
lili
lilura
lirain
lohitzune
loinaz
lopene
lore
loza
luixa
lukene
lur
maarrieta
mahats
maia
maialen
maider
maitagarri
maitane
maite
maiteder
maitena
makatza
maldea
malen
mantzia
mari
mariaka
marider
maritxu
martie
martixa
martxelie
matxalen
meaka
mendia
mendiete
mendigaa
menga
menosa
mentzia
mikele
milia
mina
miniain
mirari
miren
mitxoleta
molora
monlora
munia
muno
munondoa
muntsaratz
murgindueta
muruzabal
muskilda
muskoa
muxika
nabarne
nabarra
nafarroa
nagore
nahikari
naiara
naroa
nazubal
negu
nekane
nerea
nikole
nora
nunile
oianko
oiartza
oibar
oihana
oihane
oilandoi
oinaze
oitia
oka
okon
olaia
olaiz
olalla
olar
olaria
olartia
olatz
olite
ollano
olleta
oloriz
onditz
ondiz
oneka
onintza
opakua
orbaiz
ordizia
orella
oria
oriz
oro
oroitze
ororbia
orose
orrao
orreaga
orzuri
osabide
osakun
osane
osasune
osina
oskia
osteriz
otsana
otsanda
otzaurte
panpoxa
pantxike
parezi
paskalin
paternain
pauli
pelela
pertxenta
pilare
pizkunde
poyo
pozne
printza
pueyo
puy
sabie
sagarduia
sagari
sahats
saioa
sallurtegi
santllaurente
santutxo
semera
soiartze
sokorri
sorauren
sorkunde
sorne
soskao
soterraa
terese
tetxa
toda
toloo
txori
uba
ubaga
ubarriaran
udaberri
udala
udane
udara
udazken
udiarraga
udoz
uga
ugarte
ula
uli
untza
untzizu
uraburu
uralde
urbe
urdaiaga
urdie
urdina
uriarte
uribarri
uriz
urkia
uronea
urraka
urrategi
urrea
urreturre
urretxa
urrexola
urrialdo
urroz
ursola
urtune
urtza
urtzumu
usmene
usoa
usue
usune
utsune
uzuri
xabadin
xaxi
xemein
ximena
xixili
xoramen
zabal
zabaleta
zaballa
zaloa
zamartze
zandua
zarala
zeberiogana
zelai
zerran
zikuaga
zilia
ziortza
zita
zohartze
zorione
zuberoa
zubia
zufiaurre
zuhaitz
zumadoia
zumalburu
zuria
zurie
zuza
zuzene
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::BasqueFemale - A list of female names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::BasqueFemale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::BasqueFemale;

  my $n = Data::RandomPerson::Names::BasqueFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::BasqueFemale object.

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
