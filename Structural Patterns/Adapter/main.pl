#!usr/bin/perl
use warnings;
use strict;
use lib './';
use RoundHole;
use RoundPeg;
use SquarePeg;
use SquarePegAdapter;


my $hole=RoundHole->new(
    radius=>4
);

my $pegs=[
    RoundPeg->new(
        radius=>3
    ),
    SquarePegAdapter->new(
        peg=>SquarePeg->new(
            width=>3
        )
    )
];


if($hole->fits($pegs->[1])){
    print "fits";
}else{
    print "doesn't fit";
}