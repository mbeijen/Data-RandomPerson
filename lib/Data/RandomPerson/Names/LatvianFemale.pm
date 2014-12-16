package Data::RandomPerson::Names::LatvianFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

    $self->{choice} = Data::RandomPerson::Choice->new();

    my @names = <DATA>;
    close DATA;
    chomp (@names);
    $self->{choice}->add_list(@names);

    return $self;
}

1;

=pod

=head1 NAME

Data::RandomPerson::Names::LatvianFemale - A list of female names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::LatvianFemale;

  my $n = Data::RandomPerson::Names::LatvianFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::LatvianFemale object.

=back

=head2 Class and object methods

=over 4

=item get( )

Returns a random name from the list.

=item size( )

Returns the size of the list

=back

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.

=cut

__DATA__
arija
erika
gertrude
irisa
nina
sarlote
zanete
zenija
zermena
aida
ada
adelina
adele
aelita
agate
agija
agita
agne
agnese
agnija
agra
agrita
aiga
aija
aina
aira
aisma
aiva
alida
alina
albina
albertine
alda
aldona
aleksandra
alise
alma
alvine
amalija
amalda
amanda
amilda
anastasija
ance
andina
anda
andra
anete
angelika
anita
anitra
anna
annija
anta
antonina
antonija
antra
apologija
arita
armanda
arnita
arta
asja
asnate
asne
astrida
astra
auce
auguste
aurora
ausma
austra
barbala
banuta
baiba
balva
banga
barba
barbara
beate
beatrise
bella
benita
berta
biruta
brigita
bronislava
cecilija
cilda
darta
dzuljeta
dace
dagmara
dagne
dagnija
daiga
daila
daina
dainuvite
daira
dana
danute
diana
digna
dina
dita
doloresa
dora
drosma
dzile
dzelde
dzelme
dzidra
dziedra
dzintra
dzirkstite
edite
eda
egija
egita
eizenija
elina
eliza
eleonora
elfa
elfrida
elga
elita
elizabete
ella
elmira
elma
elvira
elva
elza
emilija
emma
erna
ernestine
esmeralda
eva
evelina
everita
evija
evita
fanija
felicita
frida
franciska
gaida
gaisma
genoveva
gerda
gija
ginda
gita
glorija
grieta
gudrite
guna
gunda
gundega
gunita
gunta
guntra
guste
hedviga
helena
helga
helma
henriete
hermine
herta
hilda
ida
ieva
ija
ildze
ilga
ilgona
ilma
ilona
iluta
ilva
ilvija
ilze
imanta
inara
ina
indra
inese
ineta
inga
ingrida
inguna
inita
inta
inuta
irida
irbe
irita
irma
irmgarde
ivanda
iveta
ivita
ivonna
iza
izabella
izolde
julija
jusma
jadviga
janina
jana
jausma
jautrite
jete
jevgenija
jogita
johanna
jolanta
judite
justine
juta
kaija
kaiva
kamila
karina
karlina
karmena
kate
katrina
kintija
kira
kitija
klara
klaudija
klinta
konstance
kora
kornelija
kristine
krista
kristiana
ksenija
lasma
liba
liga
liksma
lina
liva
livija
lucija
laila
laima
laimdota
laimrota
laine
lana
larisa
lauma
laura
lavize
lelde
leonora
leontine
liana
lida
lidija
liega
liene
liesma
ligija
ligita
lija
liliana
lilija
lilita
linda
lita
liza
lizete
lolita
lonija
lote
luize
ludmila
marite
mara
metra
madara
made
magda
magone
maiga
maija
maira
mairita
malda
malvine
malva
marga
margarita
margita
margrieta
marianna
marija
marika
marina
marita
marlena
marta
maruta
matilde
melanija
meldra
melisa
melita
meta
milda
milija
minjona
minna
mirdza
mirta
modrite
modra
monika
monta
mudite
mundra
nadina
nameda
nanija
natalija
nelda
nellija
ninona
nora
olivija
olga
olita
otilija
parsla
paulina
paula
ruta
raimonda
raita
ramona
rasa
rasma
regina
renate
rigonda
rita
ritma
rota
rozalija
roze
rudite
ruta
sabine
saiva
sanda
sandra
sanita
santa
sarmite
sarma
saulcerite
selga
sibilla
sigita
signe
signija
silga
silva
silvija
simona
sintija
skaidrite
smaida
smuidra
sniedze
sofija
solveiga
solvita
spidola
spodra
spulga
stefanija
stella
strauja
svetlana
tale
tina
taiga
tamara
tatjana
teika
teiksma
tekla
telma
tereze
tija
tince
uga
ulla
ulrika
una
undine
urzula
uva
vesma
vaira
valerija
valda
valentina
valija
vanda
veldze
velga
velta
veneranda
venta
vera
veronika
vidaga
vija
viktorija
vilhelmine
vilija
vilma
vineta
viola
violeta
vita
viviana
vivita
vizbulite
vizma
zile
zaiga
zanda
zane
zelma
zeltite
zenta
zete
ziedite
ziedone
zigfrida
zigrida
zilgma
zina
zinaida
zinta
zita
zuzanna
