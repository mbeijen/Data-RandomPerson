# $Id: Names.pm,v 1.1 2005/05/16 20:29:42 peterhickman Exp $

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
