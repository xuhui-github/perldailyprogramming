#!/usr/bin/perl
my @array=();
my $ref1=\@array;
my $ref2=\@array;
print "\$ref1 is ",$ref1,"\$ref2 is ",$ref2,"\n";
print "they are equally\n" if $ref1==$ref2;
