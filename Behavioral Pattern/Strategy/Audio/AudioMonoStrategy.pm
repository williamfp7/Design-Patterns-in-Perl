use warnings;
use strict;
use lib './';

package AudioMonoStrategy;
use parent 'aAudioStrategy';

sub new{
    my ($class, @args) = @_;
    my $self = $class->SUPER::new(@args);
    $self->setChannels(1);
    return $self;
}

1;