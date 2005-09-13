# $Id: HindiMale.pm,v 1.3 2005/05/22 17:02:29 peterhickman Exp $

package Data::RandomPerson::Names::HindiMale;

use strict;
use warnings;

use base 'Data::RandomPerson::Names';

use Data::RandomPerson::Choice;

sub new {
    my ($class) = @_;

    my $self = bless {}, $class;

	$self->{choice} = Data::RandomPerson::Choice->new();

	$self->{choice}->add_list( qw/
abhay
abhijit
achyuta
aditya
ajatashatru
ajay
ajit
akaash
alok
amal
amar
amit
amitabh
amitava
amol
amrit
amulya
anand
anant
anay
angada
anil
anirudhh
ankur
anniruddha
anoop
anshul
anshuman
arjun
arun
arvind
aseem
ashok
ashutosh
ashwin
ashwini
asija
asuman
asvathama
asvin
atharvan
atmajyoti
atul
atulya
avinash
balavan
balik
balram
bharat
bhaskar
bhavya
bhim
bhishma
bhrigu
bhudev
bhuvan
brij
chandra
chapal
charan
dahana
daruka
dattatreya
deepak
devarsi
devesh
dhananjay
dharma
dharmavira
dharuna
dhatri
dhruv
dilip
dinesh
dinkar
divyesh
duranjaya
durjaya
durmada
dvimidha
ekachakra
eknath
gagan
gajendra
gaurav
gautam
geet
girish
gopal
gul
harish
harsh
hemal
hemant
hitendra
hitesh
iravan
jaidev
jatin
jayant
jeevan
jimuta
jitendra
jivana
kailash
kalidas
kalpanath
kamadev
kamal
kanak
kapil
kartik
kartikeya
kavi
keshav
ketan
kirit
kishore
kripa
kulvir
kunal
kusagra
kush
kushan
lakshman
lalit
lokesh
madan
madhav
madhusudhana
mahabala
mahavira
mahesh
maitreya
manavendra
mandhatri
manik
manish
manoj
manu
markandeya
matanga
mehul
mihir
milind
mohan
mohit
mukul
mukunda
nabendu
nachik
nachiketa
nakul
namdev
nanda
nandin
narayana
naresh
narsi
nartana
naveen
navin
neel
neeraj
nihar
nikhil
nimai
niraj
niramitra
niranjan
nitesh
nitya-sundara
omarjeet
pallab
pandya
pankaj
paramartha
partha
phalgun
piyush
prabhakar
pradeep
pramath
pramsu
pranav
prasata
prashant
prasoon
prassana
pravin
prayag
preetish
prem
prithu
privrata
pulkit
pundarik
puranjay
purujit
pusan
puskara
rahul
raivata
raj
rajan
rajeev
rajesh
rajiv
rakesh
ram
raman
ramanuja
ranjan
rantidev
ravi
ravindra
rishi
rohit
roshan
ruchir
rupesh
sachin
sagar
sahadev
samir
sampath
samrat
samudra
sanat
sandeep
sandy
sanjay
sanjeev
sanjiv
sanjog
sankara
santosh
sapan
sarasvan
sarat
saswata
satayu
satrujit
satyavrat
satyen
saunak
saurabh
senajit
shailesh
shalabh
shankar
shantanu
sharad
shashwat
shishir
shiv
shvetank
siddharth
sridhar
srikant
srinath
srinivas
sriram
subodh
sudarshan
sudesha
sudeva
sudhansu
sudhir
sugriva
sukarman
sukumar
sumantu
sumit
sundara
sunil
suresh
surya
suvrata
swagat
taksa
tapan
tapesh
tarang
tarun
tej
tilak
trisanu
tushar
udit
upendra
urjavaha
uttam
uttanka
vairaja
variya
varun
vasant
vasava
vasu
vasudev
vasuman
vedanga
veer
vidvan
vijay
vikas
vikram
vikrant
vimal
vinay
vineet
vinod
vipin
vipul
viraj
virasana
virat
vishal
visvajit
visvakarman
visvayu
viswanath
vivatma
vivek
waman
yash
yashodhara
yashovarman
yashpal
yogendra
yudhajit
zahin
zev
			  / );

    return $self;
}

1;

__END__
=head1 NAME

Data::RandomPerson::Names::HindiMale - A list of male names

=head1 VERSION

This document refers to version 0.4 of Data::RandomPerson::Names::HindiMale, released Sept 13th, 2005

=head1 SYNOPSIS

  use Data::RandomPerson::Names::HindiMale;

  my $n = Data::RandomPerson::Names::HindiMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::HindiMale object.

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
