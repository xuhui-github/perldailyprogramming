#!/usr/bin/perl
my $n=234;
my $sum=0;
grep {$sum+=$_} split "",$n;
print "\$sum is ",$sum;



