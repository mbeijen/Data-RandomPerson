# $Id: SpanishFemale.pm,v 1.3 2005/05/22 17:02:30 peterhickman Exp $

package Data::RandomPerson::Names::SpanishFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
agueda
aldonza
ana
angelina
antonia
barbola
bartolomeba
beatriz
belit
bernardina
berta
blanca
bona
catalina
clara
clarencia
columba
constanza
cristina
domenga
eldonza
elena
elo
elvira
enderquina
ermengarda
ermesinda
estefania
eva
fafila
fatima
felipa
florinda
francisca
fronilde
gelvira
gotina
gracia
gundisalba
guntroda
ildaria
ines
isabel
isabelica
isabella
jimena
juana
leonor
lucia
luisa
lupa
madelena
mafalda
maneula
mansuara
margarita
maria
mariana
marina
marinella
mayor
mencia
paterna
placia
sancha
scemena
serena
taresa
tegrida
teoda
teresa
toda
urraca
velasquita
victoria
violante
yolande
ysabel
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::SpanishFemale - A list of female names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::SpanishFemale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::SpanishFemale;

  my $n = Data::RandomPerson::Names::SpanishFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::SpanishFemale object.

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
