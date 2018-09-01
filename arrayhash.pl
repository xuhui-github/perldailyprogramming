#!/usr/bin/perl
use strict;
use warnings;
my @a=qw(1 one 2 two 3 three);
my %hash=@a;
 while(my($k,$v)=each %hash){
  print $k," ","is ",$v,"\n";
  }
my @another=%hash;
 foreach(@another){
   print $_," ";
 }
 print "\n";

