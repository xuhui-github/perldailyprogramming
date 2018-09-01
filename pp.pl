#!/usr/bin/perl
package Str;
use stringable;
sub new {
my $class=shift;
bless {},$class;
}
sub tostring{"helloworld";}
my $s=Str->new();
print "$s\n";
