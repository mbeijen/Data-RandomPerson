package Data::RandomPerson::Names::JapaneseMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

    $self->{choice} = Data::RandomPerson::Choice->new();

    my @names = <DATA>;
    close DATA;
    chomp (@names);
    $self->{choice}->add_list(@names);

    return $self;
}

1;

=pod

=head1 NAME

Data::RandomPerson::Names::JapaneseMale - A list of male names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::JapaneseMale;

  my $n = Data::RandomPerson::Names::JapaneseMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::JapaneseMale object.

=back

=head2 Class and object methods

=over 4

=item get( )

Returns a random name from the list.

=item size( )

Returns the size of the list

=back

=head1 AUTHOR

Peter Hickman (peterhi@ntlworld.com)

=head1 COPYRIGHT

Copyright (c) 2005, Peter Hickman. This module is
free software. It may be used, redistributed and/or modified under the
same terms as Perl itself.

=cut

__DATA__
agatamori
akimitsu
akira
arinori
azumabito
bakin
benkei
buntaro
chikafusa
chikayo
chomei
chuemon
dosan
emishi
emon
fuhito
fujifusa
fujitaka
fususaki
gekkai
gennai
gidayu
gongoro
hakatoko
hamanari
haruhisa
hideharu
hideo
hidetanda
hideyoshi
hirohito
hirotsugu
hitomaru
iemitsu
ienobu
ieyasu
ieyoshi
imoko
issai
iwao
iwazumi
jikkyo
jozen
junkei
jussai
kageharu
kagemasa
kagemusha
kahei
kanemitsu
katsumi
katsuyori
kazan
kazunori
keisuke
kintaro
kiyomori
kiyosuke
kmako
komaro
koremasa
koreyasu
kuronushi
kyuso
mabuchi
maro
masahide
masamitsu
michifusa
mitsukane
miyamoto
mochiyo
morinaga
munetaka
murashige
nagafusa
nagate
nakahira
nambo
naoshige
narihiro
oguromaro
okimoto
okura
omaro
otondo
razan
rikyu
rokuemon
ryokai
sadakata
sanehira
sanetomo
sanzo
saru
shigenobu
shigeuji
shingen
shoetsu
shozen
sukemasa
tadabumi
tadashiro
takatoshi
tameyori
taneo
taneyoshi
tensui
togama
tomomasa
toshifusa
toyonari
tsunayoshi
tsunetane
uchimaro
ujihiro
umakai
watamaro
yakamochi
yasumori
yoriie
yoritomo
yoshiie
yoshisune
yoshitane
yoshizumi
yukihira
zuiken
