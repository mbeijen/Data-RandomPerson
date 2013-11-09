package Data::RandomPerson::Names::VikingMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
aki
alf
alfgeir
amundi
ari
armod
arnfinn
arnlaug
arnor
aslak
bardi
bergthor
bersi
bjarni
bjorn
bodvar
bork
botolf
brand
bui
egil
einar
eindridi
eirik
eldgrim
erlend
eyjolf
eystein
eyvind
finn
finnbogi
fridgeir
gardi
geir
geirmund
geirstein
gest
gizur
glum
grani
grim
gudmund
gunnar
gunnbjorn
gunnlaug
hafgrim
hakon
halfdan
hall
halldor
hallfred
harald
harek
hastein
hauk
havard
hedin
helgi
herjolf
hjalti
hogni
hord
hrafn
hring
hroald
hrut
illugi
ingi
ingjald
ingolf
isleif
ivar
kalf
kari
karlsefni
ketil
knut
kol
kolbein
lambi
leif
ljot
ljotolf
lodin
mord
odd
ofeig
ogmund
olaf
olvir
onund
orm
otkel
otrygg
ottar
ozur
ragnar
rognvald
runolf
sam
sighvat
sigmund
sigtrygg
sigulf
sigurd
sigwulf
skapti
snorri
solmund
solvi
starkad
stein
steinkel
steinthor
sturla
styrkar
sumarlidi
svein
thjodolf
thjostolf
thorarin
thorbjorn
thorbrand
thord
thorfinn
thorgeir
thorgest
thorgils
thorgrim
thorhall
thorir
thorkel
thormod
thorstein
thorvald
thrain
thrand
tosti
ulf
uni
vagn
valgard
vandrad
vermund
vestein
vigfus
yngvar
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::VikingMale - A list of male names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::VikingMale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::VikingMale;

  my $n = Data::RandomPerson::Names::VikingMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::VikingMale object.

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
