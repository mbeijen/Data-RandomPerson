package Data::RandomPerson::Names::LatvianMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
adams
adolfs
adrians
agnis
agris
aigars
ainars
ainis
aivars
aivis
aksels
alberts
albins
aleksandrs
aleksejs
aleksis
alfons
alfreds
alfs
algirts
almants
alnis
aloizs
alvis
anatols
andis
andrejs
andrievs
andris
andulis
andzs
anrijs
ansis
anslavs
antis
antons
ardis
arijs
aris
arkadijs
armands
armins
arnis
arnolds
artis
arturs
arvids
arvils
arvis
askolds
atis
atvars
augusts
auseklis
austris
balvis
benedikts
bernhards
bertulis
boleslavs
boriss
brencis
bronislavs
bruno
centis
dagnis
dailis
dainis
dairis
daumants
davids
davis
didzis
dins
donats
drosmis
druvis
druvvaldis
dzintars
edgars
edijs
edmunds
eduards
edvards
edvins
edzus
egils
egmonts
egons
einars
eizens
elgars
elmars
elvijs
elvis
emils
eriks
ernests
ervins
evalds
felikss
filips
francis
fricis
fridis
gaidis
gaits
gastons
gatis
gederts
georgs
gints
girts
gunars
gundars
guntars
guntis
gunvaldis
gustavs
gusts
gvido
haralds
harijs
helmuts
henrijs
herberts
hermanis
hugo
ignats
igors
ikars
ilgmars
ilgonis
ilgvars
ilmars
ilvars
imants
inars
indrikis
indulis
inesis
ingars
ingmars
inguns
ingus
intars
ints
ivars
ivo
janis
jazeps
jekabs
jevgenijs
jorens
julians
julijs
jurgis
juris
justs
kalvis
karlis
kaspars
kazimirs
klaudijs
klavs
knuts
konrads
konstantins
krisjanis
kriss
kristaps
kristians
krists
kurts
laimdots
laimnesis
laimonis
lauris
leo
leonards
leonids
leons
leopolds
linards
lotars
ludis
ludvigs
madars
madis
magnuss
maigonis
maigurs
mairis
maksis
malvis
marcis
mareks
margers
margots
maris
martins
marts
matiss
miervaldis
mihails
mikelis
mikus
mintauts
modris
monvids
muntis
nauris
niklavs
nikolajs
nils
norberts
normunds
ojars
olafs
olegs
olgerts
oskars
osvalds
oto
otomars
pauls
pavils
peteris
raimonds
raitis
raivis
ralfs
rauls
reinholds
reinis
renars
rihards
rinalds
ringolds
ritvars
roberts
rodrigo
rolands
romans
romualds
ronalds
rudolfs
rusins
salvis
sandis
sandris
sarmis
saulvedis
sentis
sergejs
severins
sigurds
silvestrs
simanis
spodris
stanislavs
stefans
svens
talis
talivaldis
talrits
tenis
teodors
toms
ugis
uldis
uvis
vairis
valdis
valentins
valerijs
valfrids
valters
valts
varis
vents
verners
vidvuds
viesturs
vikentijs
viktors
vilhelms
vilips
vilis
vilmars
vilnis
vismants
visvaldis
vitalijs
vitauts
vitolds
vladimirs
vladislavs
voldemars
zanis
zemgus
ziedonis
zigfrids
zigmars
zigmunds
zigurds
zintis
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::LatvianMale - A list of male names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::LatvianMale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::LatvianMale;

  my $n = Data::RandomPerson::Names::LatvianMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::LatvianMale object.

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
