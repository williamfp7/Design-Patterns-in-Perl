#!/usr/bin/perl
use warnings;
use strict;
use lib './';

package SaveXml;
use parent 'aSaveFile';

sub save{
    my $self=shift;
    print "Trying to save data in xml format.\n";
    if ($self->getFileFormat() eq "xml"){
        $self->writeFile($self->format);
        print "Saved as xml file.\n";
    }else{
        $self->saveNext();
    }
}

sub format{
    my $self=shift;
    my $xml="<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
    $xml.="<info>\n";
    $xml.="\t<Name>".$self->getData()->{name}."</Name>\n";
    $xml.="\t<Age>".$self->getData()->{age}."</Age>\n";
    $xml.="</info>";
    return $xml;
}
1;