#!/usr/bin/perl

$str="";
$n=0;

print "enter a string: ";
$str=<STDIN>;
print "enter a number: ";
$n=<STDIN>;
chomp($n);
print $str x $n;

