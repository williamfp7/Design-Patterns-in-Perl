use warnings;
use strict;
use lib './';

package DisplayFullHDStrategy;
use parent 'aDisplayStrategy';

sub new{
    my($class,@args)=@_;
    my $self=$class->SUPER::new(@args);
    $self->setCollors("16.7 billion collors");
    $self->setResolution("1080p");
    return $self;
}

1;