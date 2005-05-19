#!/usr/bin/perl

# $Id: person.t,v 1.4 2005/05/14 12:31:55 peterhickman Exp $

use strict;
use warnings;

use Date::Calc qw/check_date/;
use Test::More tests => 29;

use_ok('Data::RandomPerson');

my $r;

################################################################################
# Broken initialisers
################################################################################

eval { $r = Data::RandomPerson->new( fred => 42 ); };

like( $@, qr/^Unknown argument 'fred' passed to new at / );

eval { $r = Data::RandomPerson->new( male => 'UnknownClass' ); };

like( $@, qr/^Unable to load 'UnknownClass':/ );

################################################################################
# Create a reference to the object
################################################################################

$r = Data::RandomPerson->new();

is( ref($r), 'Data::RandomPerson' );

can_ok( $r, qw/new _pick_gender _pick_age _pick_title _pick_lastname _pick_firstname _pick_dob create / );

################################################################################
# Create a person
################################################################################

my $p = $r->create();

is( ref($p), 'HASH' );

foreach my $key (qw/dob gender age firstname lastname title/) {
    ok( $p->{$key} );
    isnt( $p->{$key}, '' );
}

like( $p->{age},    qr/^\d+$/ );
like( $p->{gender}, qr/m|f/ );

my ( $year, $month, $day ) = $p->{dob} =~ m/^(\d+)-(\d+)-(\d+)$/;

ok( check_date( $year, $month, $day ) );

is( length($year),  4 );
is( length($month), 2 );
is( length($day),   2 );

ok( $year > 1900 );

ok( $month >= 1 );
ok( $month <= 12 );

ok( $day >= 1 );
ok( $day <= 31 );

# vim: syntax=perl :
