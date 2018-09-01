#!/usr/bin/perl
package A;
$x=10;


package B;
#print ${"A::x"}\n;
sub fun{
print "method in package B\n";
}
$package="A";
$valname="x";
print ${"${package}::$valname"},"\n";
#package main;
use Mine::Node;
while(my($k,$v)=each(%B::)){
print "$k=$v\n";
}

