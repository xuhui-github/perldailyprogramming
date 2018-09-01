#!/usr/bin/perl
use File::Find;

sub what_to_do{
print "$File::Find::name found\n";
}


my @dir=qw(.);
find(\&what_to_do,@dir);
