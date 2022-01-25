use warnings;
use strict;
use lib './';
use lib '../../com/portoreports';
package SquarePegAdapter;
use parent 'Object';
#use parent 'Object','RoundPeg'; 
#Because PERL isn't typed, there's no need to inherit from RoungPeg. 
#The adapter is compatible with RoundHole just because it has the method getRadius()

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setPeg($self->{peg});
    return $self;
}

sub setPeg{
    my $self=shift;
    my ($peg)=@_;
    $self->{peg}=$peg;
}

sub getPeg{
    my $self=shift;
    return $self->{peg};
}

sub getRadius{
    my $self=shift;
    return sqrt(($self->getPeg()->getWidth()**2)*2)/2;
}

1;