#!/usr/bin/perl
use warnings;
use strict;
use lib './';

package SaveTxt;
use parent 'aSaveFile';

sub save{
    my $self=shift;
    print "Trying to save data in txt format.\n";
    if ($self->getFileFormat() eq "txt"){
        $self->writeFile($self->format);
        print "Saved as txt file.\n";
    }else{
        $self->saveNext();
    }
}

sub format{
    my $self=shift;
    my $txt="Name: ".$self->getData()->{name}."\nAge: ".$self->getData()->{age}."\n";
    return $txt;
}
1;