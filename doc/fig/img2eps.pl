#!/usr/bin/perl

use warnings;
use strict;

my $list = `ls *.png *.jpeg *.jpg`;
print "\n";
while($list =~ /\b((\w+)\.(jpg|png|jpeg))\b/gi){
    `convert $1 $2.eps`;
}
