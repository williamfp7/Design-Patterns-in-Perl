use warnings;
use strict;
use lib './';

package DisplayGrayScaleStrategy;
use parent 'aDisplayStrategy';

sub new{
    my($class,@args)=@_;
    my $self=$class->SUPER::new(@args);
    $self->setCollors("gray scale");
    $self->setResolution("480p");
    return $self;
}

1;