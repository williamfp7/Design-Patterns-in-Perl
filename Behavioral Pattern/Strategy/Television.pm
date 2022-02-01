use warnings;
use strict;
use lib '../../com/portoreports/';

package Television;
use parent 'Object';

sub new{
    my ($class,@args)=@_;
    my $self=$class->SUPER::new(@args);
    $self->setAudio($self->{audio});
    $self->setVideo($self->{video});
    return $self;
}

sub setAudio{
    my $self=shift;
    $self->{audio}=shift;
}
sub getAudio{
    my $self=shift;
    return $self->{audio};
}

sub setVideo{
    my $self=shift;
    $self->{video}=shift;
}

sub getVideo{
    my $self=shift;
    return $self->{video};
}

sub play{
    my $self=shift;
    return $self->getVideo()->displayVideo()." ".$self->getAudio()->playAudio();
}

1;