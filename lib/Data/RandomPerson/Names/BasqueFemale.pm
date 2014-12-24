package Data::RandomPerson::Names::BasqueFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

1;

=pod

=head1 NAME

Data::RandomPerson::Names::BasqueFemale - A list of female names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::BasqueFemale;

  my $n = Data::RandomPerson::Names::BasqueFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new()

Create the Data::RandomPerson::Names::BasqueFemale object.

=back

=head2 Class and object methods

=over 4

=item get()

Returns a random name from the list.

=item size()

Returns the size of the list

=back

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.

=cut

