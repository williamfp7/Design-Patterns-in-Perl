use warnings;
use strict;
use lib './';

package AudioStereoStrategy;
use parent 'aAudioStrategy';

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setChannels(2);
    return $self;
}

1;