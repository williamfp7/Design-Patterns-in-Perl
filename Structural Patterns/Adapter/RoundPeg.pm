use warnings;
use strict;
use lib '../../com/portoreports';
package RoundPeg;
use parent 'Object';

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setRadius($self->{radius});
    return $self;
}

sub setRadius{
    my $self=shift;
    my ($radius)=@_;
    $self->{radius}=$radius;
}

sub getRadius{
    my $self=shift;
    return $self->{radius};
}


1;