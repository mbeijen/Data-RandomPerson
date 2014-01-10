package Data::RandomPerson::Names::ModernGreekMale;

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

Data::RandomPerson::Names::ModernGreekMale - A list of male names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ModernGreekMale;

  my $n = Data::RandomPerson::Names::ModernGreekMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ModernGreekMale object.

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

=cut

__DATA__
acheron
achillios
adamantios
adonis
aeneas
aetios
agapios
agathias
agias
aiakos
aigeus
aineias
aiolos
aktaion
alekos
aleksiu
alexander
alexandros
alexios
ambrosios
anakletos
anastasios
andreas
angelo
angelos
aniketos
anninos
anstace
antaios
anzioleto
anziolo
apollo
apolo
apostolos
archimedes
argos
argus
ari
aris
aristeides
aristides
aristokles
aristoteles
aristotelis
aristotle
arkhippos
arsenios
athanasios
baltsaros
basil
basileios
benedict
benedictos
charalambos
christian
christiano
christophoros
christos
cletus
costa
costas
damaskenos
damaskinos
damian
damianos
damon
dareios
demetri
demetrios
demetrius
denys
dhimitrios
dighenis
dimitrios
dimitris
dinos
dion
dionysios
doxiadis
eleaterios
eleftherios
eleni
eleutherios
elpidios
eneas
epaminondas
erasmios
eugen
eugenios
euphemios
euripedes
eusebios
eusebius
eustachius
eustakhios
evangelos
feodor
george
georghios
georgios
giankos
giannes
glafkos
gondikas
gregor
gregorios
grigoris
grigorius
hali
harilaos
heraklees
herakles
hercules
hermes
hesperos
hieremias
hieronymos
hippocrates
hippolytos
homerus
iakobus
iakovus
iannis
iason
ioannes
ioannikios
ioannis
iorgos
ioseph
isaakios
isadorios
isidor
isidore
isidoros
jannes
jason
joannoulos
kalinikos
kalogeros
kastas
kharilaos
kimon
kiril
klemenis
klemens
kletos
konstandinos
konstantinos
kosmas
kostas
kosti
kostis
kris
kristion
kristo
kristos
kyprios
kypros
kyriako
kyrillos
kyros
lambros
laurentios
leander
leandros
leiandros
leontius
loucas
loukanos
loukas
lucais
lucas
lukas
lukianos
lysander
lysandros
makar
makarios
makis
manolis
marinos
memnos
methodius
metrophanes
michael
michaelis
michalis
mikhail
mikhalis
milos
miltos
mimis
mitros
myron
nannos
nectarios
nektarios
nestor
nicholas
nico
nicodemus
nicos
nikiforos
nikita
niko
nikodemos
nikolaos
nikolas
nikolos
nikomedes
nikos
nikostartos
nilos
nocolau
odysseus
orest
orestes
orion
pan
panagiotis
panayiotis
panos
parthenios
pelagios
pericles
periklis
philip
philippos
philogathos
platon
podromos
polo
polymenis
procopius
prokopios
rhigas
sander
sandros
savas
sebastian
sebastianos
seimon
skyros
socrates
sophoklis
soterios
spiridon
spyridon
spyros
stamatis
staphanos
stavros
stefanos
stelios
stephanas
stephanos
symeon
tanek
tasos
teles
telesphorus
telis
thaddaios
thanasi
thanasis
thanos
themistoklis
theo
theodor
theodore
theodorus
theodosius
theofanis
theophilus
thrasyvoulos
timotheos
titos
traianos
tychon
tzannas
vasileios
vasilios
vasilis
vasos
vassili
venedictos
viktor
xenophon
yannakis
yannas
yanni
yannis
yorgos
zachaios
zacheus
zeno
zenobios
zenon
