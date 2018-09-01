#!/usr/bin/perl
sub copyarg{
  my $ref=[(@_)];
   $ref->[0]="first";
   $ref->[1]="second";
  print "Array copied =@$ref\n";
   print "\@_=@_\n";
   }
  my @arg=qw(I am so Happy);;
 copyarg @arg;
  print "Array outside is @arg\n";
