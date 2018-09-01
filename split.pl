#!/usr/bin/perl
my $str="   aa  b   c   ";
my @words=split /\s+/, $str;
print scalar @words;
foreach(@words){print "<",$_,">","\n";}
