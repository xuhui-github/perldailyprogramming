#!/usr/bin/perl
use warnings;
my @array=qw(one woo foo);
print "the length of array is ",scalar @array;
my $first=delete $array[0];
print "delete first element one\n";
print "the first is $first \n";
print "the array is @array\n";
delete $array[1];
print "now the first is $array[0]\n";
print scalar @array ,"\n";
print "array[0] is defined" if defined $array[0];
print $array[0];
print "the remove is @remove\n";
print "array is not exist now" if not defined @array;
