#!/usr/bin/perl
use YAML qw(Dump);
my %hash=(name=>"hui",
            age=>23,);
my @array=(2..12);
open my($fh),">","yaml.yml" or die "could not open to write:$!\n";
print $fh Dump(\%hash,\@array);

