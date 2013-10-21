# NAME

Data::RandomPerson - Create random people

# VERSION

This document refers to version 0.4 of Data::RandomPerson, released Sept 13th, 2005

# SYNOPSIS

    use Data::RandomPerson;

    my $r = Data::RandomPerson->new();

    my $p = $r->create();

# DESCRIPTION

## Overview

Returns an object that can be used to create random people and return the data in a hash. The data
is a hash reference with the following keys:

- gender

    This is either 'm' or 'f'

- age

    The number of years old of the person

- dob

    The date of birth of the person based upon how old they are in the current year. The month and day portion are
    selected randomly.

- firstname

    The person's first name based on their gender. The names are picked from Data::RandomPerson::Name::{Male,Female}
    unless other classes are supplied to the new method.

- lastname

    The person's last name. The names are picked from Data::RandomPerson::Name::Last
    unless another class is supplied to the new method.

- title

    The person's title based on their age and gender.

## Constructors and initialization

- new( HASH )

    Create the Data::RandomPerson object. By default Data::RandomPerson::Names::{Male,Female,Last} are used to supply the
    male, female and last names. To pass in other classes to use you just put male => 'MyNames::Male' as arguments to the
    method. The three keys are 'male', 'female', and 'last'.

## Class and object methods

- \_pick\_gender( )

    Returns 'm' or 'f' with equal probability. This can be overridden to adjust the ratio on males to females in your target population.

- \_pick\_age( )

    Returns an age between 1 and 100. This can be overridden to return values in the range required of your target population.

- \_pick\_dob( )

    Calculates the date of birth from the age in the format YYYY-MM-DD. The YYYY value is the current year less the age, MM and DD and random, valid, values. This method should not need to be overridden unless the date format is not what you require.

- \_pick\_title( )

    Return a suitable title based on the age and gender of the person. The ratios used here are completely made up and until I can get hold of some hard data, like a copy of the electoral roll, it can only be a best guess.

- \_pick\_lastname( )

    Returns a last name from the class loaded by the init() method. You should not need to override this method.

- \_pick\_firstname( )

    Returns a first name of the correct gender from the class loaded by the init() method. You should not need to override this method.

- create( )

    Returns a newly created person as a hash reference with the following keys: gender, age, dob, firstname, lastname and title. A new
    person is returned for each call of the method although there is no guarantee of uniqueness.

# ENVIRONMENT

Perl 5

# DIAGNOSTICS

- Unknown argument 'XXX' passed to new

    There are only three arguments that can be optionally passed to new. These are 'male', 'female' and 'last' and they
    should be the classes that will be used to get the male, female and last names.

- Unable to load 'XXX': ...

    A class given to load instead of the default class could not be loaded. Hopefully a sensible reason will be given.

# BUGS

None so far

# FILES

None

# SEE ALSO

- Data::RandomPerson::Choice

    A simple class for selecting elements from a weighted list

- Data::RandomPerson::Names::Female

    A list of female first names from census data

- Data::RandomPerson::Names::Last

    A list of last names from census data

- Data::RandomPerson::Names::Male

    A list of male first names from census data

- Data::RandomPerson::Names::AncientGreekFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::AncientGreekMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ArabicFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ArabicLast

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ArabicMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::BasqueFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::BasqueMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::CelticFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::CelticMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::EnglishFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::EnglishLast

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::EnglishMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::HindiFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::HindiMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::JapaneseFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::JapaneseMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::LatvianFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::LatvianMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ModernGreekFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ModernGreekLast

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ModernGreekMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::SpanishFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::SpanishLast

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::SpanishMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ThaiFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::ThaiMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::VikingFemale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

- Data::RandomPerson::Names::VikingMale

    Names from Chris Pound's language machine page at http://www.ruf.rice.edu/~pound/\#scripts

# AUTHOR

Peter Hickman (peterhi@ntlworld.com)

# COPYRIGHT

Copyright (c) 2005, Peter Hickman. All rights reserved. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.
