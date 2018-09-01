#!/usr/bin/perl
my @a=qw(huire tiant huihi);
printf "the result is %s\n",join " ",grep /^hui/, @a;
