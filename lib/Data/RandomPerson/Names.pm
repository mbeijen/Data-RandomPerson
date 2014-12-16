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

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.
