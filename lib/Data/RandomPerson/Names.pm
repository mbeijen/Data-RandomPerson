# $Id: Names.pm,v 1.3 2005/09/13 18:50:49 peterhickman Exp $

package Data::RandomPerson::Names;

use strict;
use warnings;

sub size {
    my ($self) = @_;

    return $self->{choice}->size();
}

sub get {
    my ($self) = @_;

    return ucfirst $self->{choice}->pick();
}

1;

__END__

=head1 NAME

Data::RandomPerson::Names - Base class to hold the common methods required for the names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names, released Sept 13th, 2005

=head1 SYNOPSIS

There is no need to call this class

=head1 DESCRIPTION

=head2 Overview

There is no need to call this class

=head2 Constructors and initialization

=over 4

=item Data::RandomPerson::Names->new( )

Returns a Data::RandomPerson::Names object.

=back

=head2 Class and object methods

=over 4

=item size( )

Returns the size of the list so far.

=item get()

Returns an element from the list.

=back

=head1 ENVIRONMENT

Perl 5

=head1 DIAGNOSTICS

None from this code

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
