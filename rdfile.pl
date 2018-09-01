#!/usr/bin/perl
open F,"w.txt" or die"can not open\n";
my @line=<F>;
chomp(@line);
my $i=int(rand 4);
print $line[$i],"\n";
 
