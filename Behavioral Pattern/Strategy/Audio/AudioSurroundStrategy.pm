use warnings;
use strict;
use lib './';

package AudioSurroundStrategy;
use parent 'aAudioStrategy';

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setChannels(5);
    return $self;
}

1;