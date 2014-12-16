package Data::RandomPerson::Names::ArabicFemale;

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

Data::RandomPerson::Names::ArabicFemale - A list of female names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ArabicFemale;

  my $n = Data::RandomPerson::Names::ArabicFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ArabicFemale object.

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
abeer
abia
abida
abir
abla
ablah
abra
adab
adara
adeela
adiba
adila
adilah
adiva
afaf
afifah
afra
ahd
ahlam
aida
aidah
ain
aini
aisha
aishah
akilah
alhena
alia
aliah
alima
alimah
aliyyah
almas
aludra
alzubra
amal
amala
amani
amatullah
amber
ameena
ameera
aminah
amineh
amirah
amtullah
anan
anbar
anisah
anwar
ara
areebah
arub
asima
asiya
asma
atifa
atiya
ayah
ayishah
azeeza
azhar
azizah
azzah
badia
badra
badriyyah
baheera
bahira
bahiya
balqis
banan
baraka
bariah
barika
baseema
basheera
bashirah
basimah
basmah
batool
batul
bilqis
bushra
buthayna
buthaynah
cala
cantara
dahab
dalal
dhuha
duha
fadheela
fadilah
fadwa
faizah
falak
farah
fareeda
fareeha
faridah
farihah
fatima
fatimah
fatin
fatinah
fawziya
fawziyyah
fazia
fellah
firdaws
firdoos
firyal
ghadah
ghaliyah
ghaniyah
ghayda
ghusoon
ghusun
habibah
hadeel
hadiya
hadiyyah
hafsah
hafthah
haifa
halah
haleema
halimah
hameeda
hamidah
hana
hanan
haneefa
hanifa
hanifah
haniyyah
hasna
hayam
hayat
hayfa
hessa
hibah
hind
hooda
hooriya
huda
huma
huriyyah
husn
husniyah
ibtihaj
ikram
ilham
iman
imtithal
inam
inas
inaya
intisar
inzdihar
jala
jameela
jamilah
janan
johara
jumanah
kalila
kamilah
kareema
karida
karimah
kawthar
khadeeja
khadijah
khairiya
khalidah
khayriyyah
khulood
khulud
kulthoom
kulthum
lama
lamees
lamis
lamya
lateefa
latifah
layla
leena
leila
lina
lubabah
luloah
lulu
madeeha
madihah
maha
maisah
maizah
majeeda
majidah
makarim
malak
malika
manal
manar
maram
mariam
maryam
masouda
mawiyah
may
maymunah
maysa
maysoon
maysun
mayyadah
mufeeda
mufidah
muhjah
muminah
muna
muneera
munirah
musheera
mushirah
muslimah
nabeeha
nabeela
nabihah
nabilah
nada
nadeeda
nadia
nadidah
nadirah
nadwah
nafeesa
nafisah
nahlah
nailah
naima
naimah
najah
najat
najeeba
najibah
najiyah
najla
najwa
najya
nashida
nashita
nashwa
nasiha
nasira
nathifa
nawal
nawar
nazahah
nazihah
nazirah
nibal
nida
nimah
nimat
noor
nouf
nudar
nudhar
nuha
numa
nur
qubilah
rabab
rabiah
radeyah
radhiya
radhwa
radwa
rafa
raghd
rahimah
raidah
raja
rana
rand
raniyah
rasha
rasheeda
rashida
rawdah
rawdha
rawiyah
rayya
reem
reema
rida
rihana
rim
rima
rukan
ruqaya
ruqayyah
ruwaydah
sabah
sabirah
safa
safiyyah
sahar
sahlah
saidah
saihah
sakeena
sakinah
saleema
salihah
salimah
salma
salwa
samah
samar
sameeha
sameera
sameh
samihah
samira
samiyah
sana
sawsan
shadha
shadiyah
shahrazad
shareefa
sharifah
siham
souad
suad
suha
suhailah
suhair
suhayla
suhaylah
suhaymah
suhayr
sumaiya
sumayyah
sumnah
tahirah
takiyah
talibah
taroob
tarub
thana
thara
thurayya
umayma
wafa
wafeeqa
wafiqah
wafiya
wafiyyah
wahibah
wajeeha
wajihah
walidah
warda
wardah
widad
wijdan
wisal
wordah
yafiah
yakootah
yamha
yaminah
yasirah
yasmeen
yasmin
yasmine
yumn
yusra
zafirah
zahirah
zahra
zahrah
zaina
zainab
zakiyyah
zaynab
zaynah
zubaidah
