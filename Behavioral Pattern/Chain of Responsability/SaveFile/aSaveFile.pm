#!/usr/bin/perl
use warnings;
use strict;
use lib '../../com/portoreports';

package aSaveFile;
use parent 'Object';

sub getNext{
    my $self=shift;
    return $self->{next};
}

sub setNext{
    my $self=shift;
    $self->{next}=shift;
}

sub linkWith{
    my $self=shift;
    $self->setNext(shift);
    return $self->getNext();
}

sub saveNext{
    my $self=shift;
    if(defined $self->getNext()){
        my $next=$self->getNext();
        $next->setFileName($self->getFileName());
        $next->setData($self->getData());
        $next->save();
    }else{
        print "unrecognized format\n";
        exit();
    }
}

sub getData{
    my $self=shift;
    return $self->{data};
}

sub setData{
    my $self=shift;
    $self->{data}=shift;
}

sub getFileName{
    my $self=shift;
    return $self->{filename};
}

sub setFileName{
    my $self=shift;
    $self->{filename}=shift;
}

sub getFileFormat{
    my $self=shift;
    my @tmp=split(/\./,$self->getFileName());
    return $tmp[scalar(@tmp)-1];
}

sub format{
    my $self=shift;
    print "this is an abstract method, please overwrite in the concrete class";
    exit();
}

sub writeFile{
    my $self=shift;
    unless(open(FILE,">".$self->getFileName())){
        print "Cannot create the file ".$self->getFileName();
    }
    print FILE shift;
    close FILE;
}
1;