#!/usr/bin/perl
use warnings;
use strict;
use lib './SaveFile/';
use SaveTxt;
use SaveJson;
use SaveXml;

sub getInfo{
    my ($message)=@_;
    print $message;
    my $info=<STDIN>;
    chomp $info;
    return $info;
}

sub getData{
    my $data={};
    $data->{name}=getInfo("Enter your name: ");
    $data->{age}=getInfo("Enter your age: ");
    return $data;
}
sub save{
    my $data=shift;
    my $saveFile=SaveTxt->new();
    $saveFile->linkWith(SaveJson->new())->linkWith(SaveXml->new());
    $saveFile->setFileName(getInfo("Enter the file name: "));
    $saveFile->setData($data);
    $saveFile->save();
}
sub main{
    my $data=getData();
    save($data);
}

main();