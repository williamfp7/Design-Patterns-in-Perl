#!/usr/bin/perl
use warnings;
use strict;
use lib './';
use Television;
use lib './Audio/';
use AudioMonoStrategy;
use AudioStereoStrategy;
use AudioSurroundStrategy;
use lib './Display/';
use DisplayGrayScaleStrategy;
use DisplayColorStrategy;
use DisplayFullHDStrategy;

my $tvs={
    blackAndWhite=>Television->new(
        audio=>AudioMonoStrategy->new(),
        video=>DisplayGrayScaleStrategy->new()
    ),
    collorTube=>Television->new(
        audio=>AudioMonoStrategy->new(),
        video=>DisplayColorStrategy->new(),
    ),
    led=>Television->new(
        audio=>AudioStereoStrategy->new(),
        video=>DisplayFullHDStrategy->new()
    ),
    smart=>Television->new(
        audio=>AudioSurroundStrategy->new(),
        video=>DisplayFullHDStrategy->new()
    )
};

foreach my $key (keys %{$tvs}){
    print $key."TV: ".$tvs->{$key}->play(),"\n";
}