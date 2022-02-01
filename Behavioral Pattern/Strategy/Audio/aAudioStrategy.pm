use warnings;
use strict;
use lib '../../com/portoreports';

package aAudioStrategy;
use parent 'Object';

sub setChannels{
    my $self=shift;
    my $channels=shift;
    $self->{channels}=$channels;
}

sub getChannels{
    my $self=shift;
    return $self->{channels};
}

sub playAudio{
    my $self=shift;
    return "playing audio with ".$self->getChannels()." channel(s)";
}
1;