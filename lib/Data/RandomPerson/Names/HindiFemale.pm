package Data::RandomPerson::Names::HindiFemale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
abhilasha
achit
aditi
akriti
akuti
amita
amrita
anika
anita
anjali
ankita
anu
anupama
anuradha
anvita
aparajita
aparna
asha
ashrita
askini
avani
avantika
avatika
bharati
bina
bindiya
cauvery
charu
chhavvi
chhaya
chitra
chitrangda
daksha
deena
deepika
deepti
devaki
divya
dristi
ekta
firaki
gargi
gauri
gayatri
girija
gita
gitanjali
gitika
harshita
hem
hema
hina
ila
indira
ira
jagrati
jahnavi
jaya
jayani
juana
juhi
jyoti
jyotsna
kajal
kalpana
kamakshi
kamayani
kamna
kanchana
kartik
katyayani
kavita
ketaki
ketika
kiran
kirti
kitu
komal
kriti
kshama
kuhuk
kumud
kunal
lalima
lalita
lata
laxmi
lolaksi
madhavi
madhu
madhur
madhuri
maitryi
mala
malati
malavika
malini
mallika
malti
mamta
manasi
manavi
manisha
manjari
manju
manushi
marisa
maruti
matangi
maya
mayuri
medha
meena
meenakshi
meera
meghana
mehul
mena
menaka
mina
mira
mitali
mohini
naina
nalini
namrata
nanda
nandini
nandita
naomi
narmada
natasha
neeharika
neelam
neena
neerja
neha
nidhi
nidra
nilima
nilini
nimmi
nira
niradhara
niral
nirguna
nirmala
nirupa
nirupama
nisha
nishtha
nita
niti
nitu
nitya
nivedita
pallavi
paloma
palomi
pamela
paola
parnika
parnita
parul
pauravi
pavani
pavi
payal
phutika
pivari
pooja
poonam
prabha
prachi
prema
premila
prerana
prisha
pritha
priti
priya
priyanka
puja
pundari
punita
purandhri
purnima
purva
pusti
rachna
radha
radhika
rakhi
ranjana
rati
reena
rekha
renuka
revati
richa
riddhi
rima
rita
ritu
rohini
roshni
ruchi
ruchira
rudrani
rukmini
rupa
rupali
sachi
sahana
saloni
samiksha
sandhya
sangita
sanjna
sanjukta
sanyogita
sanyukta
sapna
sarasvati
saravati
sarika
sarita
sarmistha
saru
saryu
sashi
sashti
sasthi
satyavati
saumya
savarna
savita
savitri
seema
shaila
shailaja
shaina
shalini
shanta
shanti
sharda
sharmila
sharmistha
sheetal
shikha
shilpa
shivani
shobha
shobhna
shradhdha
shreya
shruti
shubha
siddhi
smirti
smita
sneh
snigdha
sobha
somatra
sonal
sonali
sonia
sophia
sraddha
sruti
subhadra
subhaga
subhangi
subhuja
suchi
suchitra
sudevi
sudha
sujata
suksma
sumanna
sumati
sumitra
sunita
suniti
sunrita
supriya
surabhi
suravinda
surotama
suruchi
surupa
surya
sushma
susila
susumna
suvrata
swati
sweta
tanu
tanuja
tapi
tapti
tara
tarpana
taruna
tasha
tejal
teji
tina
trilochana
trishna
trupti
trusha
tuhina
tulasi
tushar
tusti
udaya
ujjwala
uma
urmila
urvasi
usha
uttara
vaisakhi
vandana
vandita
vanita
varsha
varuni
vasanta
vasavi
vasudhara
vasuki
vasumati
vibhuti
vidya
vikriti
vimala
vinata
vinaya
vineeta
vinita
virini
visala
yaksha
yamini
yamura
yauvani
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::HindiFemale - A list of female names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::HindiFemale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::HindiFemale;

  my $n = Data::RandomPerson::Names::HindiFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::HindiFemale object.

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
