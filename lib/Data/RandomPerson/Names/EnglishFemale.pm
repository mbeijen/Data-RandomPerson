package Data::RandomPerson::Names::EnglishFemale;

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

Data::RandomPerson::Names::EnglishFemale - A list of female names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::EnglishFemale;

  my $n = Data::RandomPerson::Names::EnglishFemale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of female names culled from Chris Pound's language machines
page at L<http://generators.christopherpound.com/>.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::EnglishFemale object.

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
aimee
aleksandra
alice
alicia
allison
alyssa
amy
andrea
angel
angela
ann
anna
anne
annie
ashley
barbara
beatrice
beth
betty
brenda
brooke
candace
cara
caren
carol
caroline
carolyn
carrie
cassandra
catherine
charlotte
chrissy
christen
christina
christine
christy
claire
claudia
courtney
crystal
cynthia
dana
danielle
deanne
deborah
deirdre
denise
diane
dianne
dorothy
eileen
elena
elizabeth
emily
erica
erin
frances
gina
giulietta
heather
helen
jane
janet
janice
jenna
jennifer
jessica
joanna
joyce
julia
juliana
julie
justine
kara
karen
katharine
katherine
kathleen
kathryn
katrina
kelly
kerry
kim
kimberly
kristen
kristina
kristine
laura
laurel
lauren
laurie
leah
linda
lisa
lori
marcia
margaret
maria
marie
marina
marisa
martha
mary
maya
melanie
melissa
michelle
monica
nancy
natalie
nicole
nina
pamela
patricia
rachel
rebecca
renee
sandra
sara
sharon
sheri
shirley
sonia
stefanie
stephanie
susan
suzanne
sylvia
tamara
tara
tatiana
terri
theresa
tiffany
tracy
valerie
veronica
vicky
vivian
wendy
