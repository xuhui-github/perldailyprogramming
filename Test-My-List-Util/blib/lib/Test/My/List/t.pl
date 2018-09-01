#!/usr/bin/perl
use Test::More tests=>1;
use Test::My::List::Util;
use My::List::Util;
my @item=qw(1 2 3);
my $sum=sum(@item);
sum_ok($sum,6);

