# $Id: RandomPerson.pm,v 1.9 2005/05/22 17:03:39 peterhickman Exp $

package Data::RandomPerson;

use strict;
use warnings;

use Date::Calc qw/Days_in_Month/;
use Data::RandomPerson::Choice;

our $VERSION = '0.3';

sub new {
    my ( $class, %args ) = @_;

    my $self = bless {}, $class;

    ##
    ## Set up the defaults for the various name classes
    ## and see if they are being overwritten
    ##

    my $male_class   = 'Data::RandomPerson::Names::Male';
    my $female_class = 'Data::RandomPerson::Names::Female';
    my $last_class   = 'Data::RandomPerson::Names::Last';

    foreach my $key ( keys %args ) {
        if ( lc $key eq 'male' ) {
            $male_class = $args{$key};
            delete( $args{$key} );
        }
        elsif ( lc $key eq 'female' ) {
            $female_class = $args{$key};
            delete( $args{$key} );
        }
        elsif ( lc $key eq 'last' ) {
            $last_class = $args{$key};
            delete( $args{$key} );
        }
        else {
            die "Unknown argument '$key' passed to new";
        }
    }

    ##
    ## Now load the classes
    ##

    eval "use $male_class;";
	die "Unable to load '$male_class': $@" if $@;

    eval "use $female_class;";
	die "Unable to load '$female_class': $@" if $@;

    eval "use $last_class;";
	die "Unable to load '$last_class': $@" if $@;

    $self->{mn} = $male_class->new();
    $self->{fn} = $female_class->new();
    $self->{ln} = $last_class->new();

    return $self;
}

################################################################################
# Subclass these if you want to change the gender, age and title calculated
################################################################################

sub _pick_gender {
    my ($self) = @_;

    return ( rand() < 0.5 ) ? 'm' : 'f';
}

sub _pick_age {
    my ($self) = @_;

    return int( rand() * 100 ) + 1;
}

sub _pick_title {
    my ($self) = @_;

    my $choice = Data::RandomPerson::Choice->new();

    if ( $self->{gender} eq 'm' ) {
        $choice->add( 'mr', 30 );
        $choice->add('dr')   if $self->{age} > 26;
        $choice->add('prof') if $self->{age} > 34;
        $choice->add('rev')  if $self->{age} > 34;
    }
    else {
        $choice->add('miss');
        $choice->add('ms') if $self->{age} > 16;
        $choice->add( 'mrs', 20 ) if $self->{age} > 16;
        $choice->add('dr')   if $self->{age} > 26;
        $choice->add('prof') if $self->{age} > 34;
        $choice->add('rev')  if $self->{age} > 34;
    }

    return ucfirst $choice->pick();
}

################################################################################
# These methods do not, typically, need to be overridden
################################################################################

sub _pick_lastname {
    my ($self) = @_;

    return $self->{ln}->get();
}

sub _pick_firstname {
    my ($self) = @_;

    return ( $self->{gender} eq 'm' ) ? $self->{mn}->get() : $self->{fn}->get();
}

sub _pick_dob {
    my ($self) = @_;

    my $year  = ( localtime() )[5] + 1900 - $self->{age};
    my $month = int( rand() * 12 ) + 1;
    my $day   = int( rand() * Days_in_Month( $year, $month ) ) + 1;

    return sprintf( "%04d-%02d-%02d", $year, $month, $day );
}

sub create {
    my ($self) = @_;

    ## These settings have no prerequisites

    $self->{gender}   = $self->_pick_gender();
    $self->{age}      = $self->_pick_age();
    $self->{dob}      = $self->_pick_dob();
    $self->{lastname} = $self->_pick_lastname();

    ## This setting requires gender

    $self->{firstname} = $self->_pick_firstname();

    ## This setting requires gender and age

    $self->{title} = $self->_pick_title();

    return { dob => $self->{dob}, gender => $self->{gender}, age => $self->{age}, firstname => $self->{firstname}, lastname => $self->{lastname}, title => $self->{title} };
}

1;

__END__

=head1 NAME

Data::RandomPerson - Create random people

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson, released May 20th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson;

  my $r = Data::RandomPerson->new();

  my $p = $r->create();

=head1 DESCRIPTION

=head2 Overview

Returns an object that can be used to create random people and return the data in a hash. The data 
is a hash reference with the following keys:

=over 4

=item gender

This is either 'm' or 'f'

=item age

The number of years old of the person

=item dob

The date of birth of the person based upon how old they are in the current year. The month and day portion are 
selected randomly.

=item firstname

The person's first name based on their gender. The names are picked from Data::RandomPerson::Name::{Male,Female}
unless other classes are supplied to the new method.

=item lastname

The person's last name. The names are picked from Data::RandomPerson::Name::Last
unless another class is supplied to the new method.

=item title

The person's title based on their age and gender.

=back

=head2 Constructors and initialization

=over 4

=item new( HASH )

Create the Data::RandomPerson object. By default Data::RandomPerson::Names::{Male,Female,Last} are used to supply the
male, female and last names. To pass in other classes to use you just put male => 'MyNames::Male' as arguments to the
method. The three keys are 'male', 'female', and 'last'.

=back

=head2 Class and object methods

=over 4

=item _pick_gender( )

Returns 'm' or 'f' with equal probability. This can be overridden to adjust the ratio on males to females in your target population.

=item _pick_age( )

Returns an age between 1 and 100. This can be overridden to return values in the range required of your target population.

=item _pick_dob( )

Calculates the date of birth from the age in the format YYYY-MM-DD. The YYYY value is the current year less the age, MM and DD and random, valid, values. This method should not need to be overridden unless the date format is not what you require.

=item _pick_title( )

Return a suitable title based on the age and gender of the person. The ratios used here are completely made up and until I can get hold of some hard data, like a copy of the electoral roll, it can only be a best guess.

=item _pick_lastname( )

Returns a last name from the class loaded by the init() method. You should not need to override this method.

=item _pick_firstname( )

Returns a first name of the correct gender from the class loaded by the init() method. You should not need to override this method.

=item create( )

Returns a newly created person as a hash reference with the following keys: gender, age, dob, firstname, lastname and title. A new
person is returned for each call of the method although there is no guarantee of uniqueness.

=back

=head1 ENVIRONMENT

Perl 5

=head1 DIAGNOSTICS

=over 4

=item Unknown argument 'XXX' passed to new

There are only three arguments that can be optionally passed to new. These are 'male', 'female' and 'last' and they
should be the classes that will be used to get the male, female and last names.

=item Unable to load 'XXX': ...

A class given to load instead of the default class could not be loaded. Hopefully a sensible reason will be given.

=back

=head1 BUGS

None so far

=head1 FILES

None

=head1 SEE ALSO

=over 4

=item Data::RandomPerson::Choice

A simple class for selecting elements from a weighted list

=item Data::RandomPerson::Names::Female

A list of female first names from census data

=item Data::RandomPerson::Names::Last

A list of last names from census data

=item Data::RandomPerson::Names::Male

A list of male first names from census data

=item Data::RandomPerson::Names::AncientGreekFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::AncientGreekMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ArabicFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ArabicLast

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ArabicMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::BasqueFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::BasqueMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::CelticFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::CelticMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::EnglishFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::EnglishLast

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::EnglishMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::HindiFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::HindiMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::JapaneseFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::JapaneseMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::LatvianFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::LatvianMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ModernGreekFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ModernGreekLast

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ModernGreekMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::SpanishFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::SpanishLast

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::SpanishMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ThaiFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::ThaiMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::VikingFemale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=item Data::RandomPerson::Names::VikingMale

Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/#scripts

=back

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. All rights reserved. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.
