#!/usr/bin/perl
use warnings;
use strict;
use lib './';

package SaveJson;
use parent 'aSaveFile';

sub save{
    my $self=shift;
    print "Trying to save data in json format.\n";
    if ($self->getFileFormat() eq "json"){
        $self->writeFile($self->format);
        print "Saved as json file.\n";
    }else{
        $self->saveNext();
    }
}

sub format{
    my $self=shift;
    my $json="{\n\t\"Name\":\"".$self->getData()->{name}."\",\n\t\"Age\":".$self->getData()->{age}."\n}";
    return $json;
}
1;