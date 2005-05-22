# $Id: VikingFemale.pm,v 1.3 2005/05/22 17:02:30 peterhickman Exp $

package Data::RandomPerson::Names::VikingFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
alfdis
arnora
asa
asgerd
asleif
asta
astrid
aud
bera
bergljot
bergthora
dotta
freydis
gjaflaug
grima
grimhild
groa
gudrid
gudrun
gunnhild
gyda
halldis
hallfrid
hallgerd
hallveig
helga
herdis
hild
hildigunn
hlif
hrefna
hrodny
ingibjorg
ingigerd
ingirid
ingunn
jorunn
katla
ragna
ragnhild
rannveig
saeunn
sigrid
svala
thjodhild
thora
thorbjorg
thordis
thorfinna
thorgerd
thorgunna
thorhalla
thorhild
thorkatla
thorunn
thurid
thyra
unn
valgerd
vigdis
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::VikingFemale - A list of female names

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson::Names::VikingFemale, released May 22nd, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::VikingFemale;

  my $n = Data::RandomPerson::Names::VikingFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::VikingFemale object.

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
