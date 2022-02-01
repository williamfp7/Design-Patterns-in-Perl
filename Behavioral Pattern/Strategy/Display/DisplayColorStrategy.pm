use warnings;
use strict;
use lib './';

package DisplayColorStrategy;
use parent 'aDisplayStrategy';

sub new{
    my($class,@args)=@_;
    my $self=$class->SUPER::new(@args);
    $self->setCollors("256 collors");
    $self->setResolution("720p");
    return $self;
}

1;