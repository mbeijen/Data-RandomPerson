package Data::RandomPerson::Names::ThaiMale;

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

Data::RandomPerson::Names::ThaiMale - A list of male names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::ThaiMale;

  my $n = Data::RandomPerson::Names::ThaiMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::ThaiMale object.

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
alak
ananda
annan
anuia
anuman
anurak
badinton
baharn
bahn
bapit
baroma
bhakdi
bhumipol
boon-mee
boon-nam
burimas
burut
cha
chai
chairat
chaiyanuchit
chaiyo
chakri
chalerm
chalermchai
changsai
chanthara
chao-khun-sa
chao-tak
charoen
charoensom
charong
chatchalerm
chatchom
chatri
chaturon
chavalit
chesda
chomanan
chompoo
chongrak
choochai
choonhavan
choonhavon
chuachai
chuanchen
chuia
chula
chulalongkorn
chulamai
churai
chuthamani
daeng
darin
deng
dhipyamongkol
disnadda
ditaka
dithakar
dok
duchanee
emjaroen
erawan
fah
fufanwonich
gee
hainad
hanuman
intradit
ittiporn
jaidee
jao
jarunsuk
jatukamramthep
jayavarman
kamnan
kanda
karmatha
kasem
kasemchai
kasemsan
keetau
khakanang
khun
kiet
kit
kitti
kittibun
kittichai
kittichat
kittikchorn
kob
komalat
kongsampong
korn
kovit
kraisee
kraisingha
krarayoon
kriengsak
kris
krita
krom-luang
kukrit
kusa
kwanchai
kwanjai
lamom
lamon
lap
leekpai
leekpie
lek
loesan
luk
maha
mahidol
malian
manitho
mee
mengrai
metananda
mok
mokkhavesa
mongkut
monyakul
muoi
nadee
nai-thim
nak
nang-klao
narai
naresuan
naris
narisa
net
ngam
nikom
nikon
nintau
niran
nit
noi
nongchai
noppadon
norachai
nuananong
nui
nung
nuta-laya
obb
othong
pairat
paitoon
pakhdi
palat
panyarachun
paramendr
parnchand
pattama
pet
petchara
petchra
phaibun
phara
phinihan
phraisong
phrom-borirak
phya
pichai
pichit
pira
pra
prachuab
pramoj
prasong
pravat
praves
praya
pricha
prisna
proi
pu
rachotai
rak
ramkamhaeng
rangsan
ratanankorn
ratsami
sajja
sanouk
santichai
sanun
sap
sarawong
sarit
sataheep
satrud
sawat
seni
si
siam
sinn
sombat
somchai
somdet-ong-yai
somdetch
sompron
son
songgram
soo
sook
sophuk
sri
srimuang
su
suda
sudarak
suk
sulak
sum
sumatra
sunan
sundaravej
suntarankul
sunti
sup
suphatra
suphayok
supoj
supp
supsampantuwongse
suriwongse
suriyawong
sutep
tai
tak-sin
tam
tau
tep
tham-boon
thammaraja
thanarat
thanit
thawanya
thawi
thongkon
thurdchai
ti
tiloka
ting
tinsulaananda
tinsulanonda
ton
tong
totsakan
toy
ubol
udom
unakan
vajiralongkorn
vajiravudh
vessandan
vidura
wasi
wattana
wiset
witsanunat
wongsa
xuwicha
yai
yhukon
yindee
yod
yongchaiyudh
yongchaiyuth
yubamrung
