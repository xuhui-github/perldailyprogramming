#!/usr/bin/perl
local $_="this is the the the car";
1 while s/\b(\w+) \1\b/$1/gi;
print "$_\n";
my $var="this is that that that that 's nation and this this this this hui";
print "orginal string is $var\n";
$var=~s/\b(\w+)\s(?=\1\b(?! '\w|\shui))//gi;
print "after updating it is $var\n";
my $str=" a banana and a car";
$str=~/(?:\bb(\w+)\b)/g;
print "$1\n";
