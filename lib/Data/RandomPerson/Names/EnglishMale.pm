package Data::RandomPerson::Names::EnglishMale;

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

Data::RandomPerson::Names::EnglishMale - A list of male names

=head1 SYNOPSIS

  use Data::RandomPerson::Names::EnglishMale;

  my $n = Data::RandomPerson::Names::EnglishMale->new();

  print $n->get();

=head1 DESCRIPTION

=head2 Overview

Returns a random element from a list of male names culled from Chris Pound's language machines
page at http://www.ruf.rice.edu/~pound/#scripts.

=head2 Constructors and initialization

=over 4

=item new( )

Create the Data::RandomPerson::Names::EnglishMale object.

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

=cut

__DATA__
aaron
adam
adrian
alan
alejandro
alex
allen
andrew
andy
anthony
art
arthur
barry
bart
ben
benjamin
bill
bobby
brad
bradley
brendan
brett
brian
bruce
bryan
carlos
chad
charles
chris
christopher
chuck
clay
corey
craig
dan
daniel
darren
dave
david
dean
dennis
denny
derek
don
doug
duane
edward
eric
eugene
evan
frank
fred
gary
gene
george
gordon
greg
harry
henry
hunter
ivan
jack
james
jamie
jason
jay
jeff
jeffrey
jeremy
jim
joe
joel
john
jonathan
joseph
justin
keith
ken
kevin
larry
logan
marc
mark
matt
matthew
michael
mike
nat
nathan
patrick
paul
perry
peter
philip
phillip
randy
raymond
ricardo
richard
rick
rob
robert
rod
roger
ross
ruben
russell
ryan
sam
scot
scott
sean
shaun
stephen
steve
steven
stewart
stuart
ted
thomas
tim
toby
todd
tom
troy
victor
wade
walter
wayne
william
