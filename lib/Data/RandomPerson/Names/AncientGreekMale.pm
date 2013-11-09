package Data::RandomPerson::Names::AncientGreekMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
acastus
admete
admetus
adrastus
aeetes
aegialeus
aeolus
aeschylus
agamemnon
aias
alastor
alcathous
alcestis
alcibiades
alcinoos
alcmene
anaximander
anchises
androcles
anius
anthemion
antilochos
antiphos
arcesilaos
archilocos
arete
argus
aristophanes
aristoteles
ascalaphos
astinoos
castor
chalcipe
charopos
chromios
clytius
cocalas
cratylus
creon
crethon
daedelus
deicoon
democoon
demosthenes
dido
diogenes
diomedes
diores
echemnon
echepolos
elephenor
epistrophes
ereuthalion
erginus
eumelos
euneus
eunos
euripides
euryales
eurymedon
eurypylos
eurystheus
gorge
gorgias
haimon
hecabe
heracles
heraclitus
hermagoras
herodotus
hicteon
hippolytus
hypsenor
hypsipyle
ialmenos
iasus
idaios
idomeneus
iolaus
iphicus
iphitos
laertes
lampos
laodice
leitos
leucas
longinus
lycomedes
manto
mecisteus
megamede
megara
meges
menelau
menestheus
meriones
midas
mynes
nestor
nineus
odysseus
oedipus
oeneus
oenopion
orsilochos
panthoos
paphos
peiros
pelasgon
peleus
peneleus
periboea
phaidimos
phaistos
phegeus
phereclos
philemon
philomeleides
phyleus
pittheus
platon
plotinus
podarcos
polydeuces
polyeides
priam
protagoras
protheoenor
pylaimenos
pythagoras
schedios
socrates
sthenelos
strophios
tecton
telamon
telopelemus
teucer
thepolemas
theseus
thespius
thoas
thoon
thrasymedes
thucydides
thymoites
tiresias
tyndareus
ucalegon
xanthos
zeno
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::AncientGreekMale - A list of male names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::AncientGreekMale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::AncientGreekMale;

  my $n = Data::RandomPerson::Names::AncientGreekMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::AncientGreekMale object.

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
