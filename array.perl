#!/usr/bin/perl
my @names=qw/one two three/;
my $ptr=\@names;
for(my $i=0;$i<@names;$i++)
{
print $names[$i];
}
print "\n";
print $ptr->[0],"\n";
