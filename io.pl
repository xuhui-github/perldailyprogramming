#!/usr/bin/perl
my $str;
open(my $handle,">>",\$str) or die $!;
print $handle "hello world \n";
print $str;

