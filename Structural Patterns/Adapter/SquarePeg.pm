use warnings;
use strict;
use lib '../../com/portoreports';
package SquarePeg;
use parent 'Object';

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setWidth($self->{width});
    return $self;
}

sub setWidth{
    my $self=shift;
    my ($width)=@_;
    $self->{width}=$width;
}

sub getWidth{
    my $self=shift;
    return $self->{width};
}

1;