# $Id: JapaneseFemale.pm,v 1.3 2005/05/22 17:02:29 peterhickman Exp $

package Data::RandomPerson::Names::JapaneseFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
akazome
akiko
ayame
chika
chizu
cho
fuji
hamako
hana
hanazono
hiromusi
hisae
hisayo
imako
inoe
ishi
izuko
jun
kagami
kame-hime
kameko
kaneko
kawa
kawanomu
keiko
kenshi
kiku
kimiko
kogin
kogo
komachi
kozakura
kumiko
kusuriko
machi
mariko
masago
masako
masuko
matsukaze
midori
mineko
miwa
miyako
miyoko
mura
nari
ochobo
oki
onshi
reiko
renshi
rin
ruri
sachi
sadako
sakura
seki
sen-hime
senshi
setsuko
shikibu
shina
shizue
shizuyo
siki
sugi
taka
takara
tamako
teika
tokiwa
tokuko
tomoe
towika
tsukinoyo
umeko
umeno
wakana
yasuko
yoshiko
yukinoyo
yukio
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::JapaneseFemale - A list of female names

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson::Names::JapaneseFemale, released May 22nd, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::JapaneseFemale;

  my $n = Data::RandomPerson::Names::JapaneseFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::JapaneseFemale object.

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
