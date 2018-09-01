#!/usr/perl
use strict;
my $data=do{
    if(open my $fh,"<data.txt"){
 local $/;<$fh>}
 else {undef}};
my @array;
my %hash;
eval $data;
print "Fred's last name is $hash{Fred}\n";

