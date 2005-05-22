# $Id: ArabicMale.pm,v 1.3 2005/05/22 17:02:28 peterhickman Exp $

package Data::RandomPerson::Names::ArabicMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
aadil
aalee
aamir
aarif
aasim
abaan
abbas
abdul
abdullah
abed
abedin
abu
abul
adham
adnan
afeef
ahmad
akram
al
alaa
aleem
ali
ameen
ameer
amjad
ammar
amr
anas
anees
arsh
ashraf
ataa
awad
aws
ayman
ayoob
azeem
azeez
azhar
azzaam
baahir
baari
baasim
baasit
badr
baha
bahiy
bakr
basaam
basel
bashaar
bilal
bishr
burhaan
cautir
crear
dawoud
dhul
diyaa
faakhir
faaris
faarooq
fadi
fadl
fahad
faisal
fakhry
fareed
faris
fataah
fateen
fawaz
fidaa
fiqaar
fuad
ghaalib
ghaazi
ghafaar
ghafoor
ghasaan
ghiyaath
haady
haafiz
haamid
haani
haarith
haaroon
haashim
haatim
hakam
hakeem
haleem
hameed
hamza
haq
haseeb
hassaan
hassan
haytham
houd
humam
husaam
hussein
huthayfa
ibraheem
idrees
iesa
ihsaan
ikrimah
imaad
imraan
irfaan
is-haaq
isaam
ismaael
izz
jaabir
jaafar
jabaar
jalaal
jaleel
jamaal
jameel
jawad
jihad
kaamil
kamal
kareem
khaaliq
khair
khairy
khaldoon
khaleel
khalid
khalifah
khayr
khuzaymah
labeeb
lateef
luqmaan
lutfi
ma'awiya
ma'd
ma'n
maahir
maazin
mahdy
mahmoud
majd
majdy
majeed
makeen
mamdouh
mamnoon
mansour
marwan
marzouq
masoud
mateen
maysarah
misbaah
muaath
muayid
mufeed
muhaimin
muhammad
muhannad
muhsin
muhtady
muiz
mujaahid
mujeeb
mukhtaar
muneer
muntasir
munthir
musad
mustafa
mutaa
mutaal
mutasim
mutazz
mutee
muwafaq
naa'il
naadir
naajy
naasih
naathim
nabeeh
nabeel
nabhan
nadeem
naeem
naer
najeeb
najm
naseem
nasser
nawfal
nazeeh
nooh
noor
noori
nu'man
omar
omeir
omran
ossama
qaadir
qahaar
qasim
qatadah
qays
qudamah
qudoos
qutaybah
ra'ed
raafi'
raakin
raamiz
raatib
rabah
rabee'
rafee'
ragheb
raheem
rahmaan
rajab
raouf
rashad
rasheed
rashid
razaaq
ridha
ridhwan
riyadh
saabir
saad
saahir
saajid
saalih
saariyah
sabeeh
saboor
saeed
safiy
safwan
salaam
salah
saleem
salman
samad
samee'
samer
samir
sayf
sayid
shaady
shafeeq
shakoor
shareef
shihab
siraaj
smil
subduer
subhy
suhail
suhayb
sulayman
suoud
taahir
taamir
talal
talha
tamam
tareef
tarfah
tariq
tawaab
tawfeeq
taymullah
tayseer
thaabit
thaqib
ubaadah
ubaidah
ubay
udeen
ullah
umaarah
umair
umar
umayyad
uqbah
usaamah
utbah
vicr
waa'il
waahid
wadee'
wadood
wafeeq
wahaab
wajeeh
waleed
waliyudeen
waliyullah
waseem
yaaseen
yahyaa
yaman
yasaar
yasir
yazeed
yoonus
yoosuf
zaafir
zaahid
zaahir
zakariya
zakiy
zayd
ziyad
zuhayr
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::ArabicMale - A list of male names

=head1 VERSION

This document refers to version 0.3 of Data::RandomPerson::Names::ArabicMale, released May 22nd, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ArabicMale;

  my $n = Data::RandomPerson::Names::ArabicMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ArabicMale object.

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
