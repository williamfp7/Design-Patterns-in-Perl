use warnings;
use strict;
use lib '../../';

package aDisplayStrategy;
use parent 'Object';

sub setResolution{
    my $self=shift;
    $self->{resolution}=shift;
}

sub getResolution{
    my $self=shift;
    return $self->{resolution};
}

sub setCollors{
    my $self=shift;
    $self->{collors}=shift;
}

sub getCollors{
    my $self=shift;
    return $self->{collors};
}

sub displayVideo{
    my $self=shift;
    return "Displaying video with ".$self->getResolution()." resolution in ".$self->getCollors()."."; 
}
1;