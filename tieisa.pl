#!/usr/bin/perl
package Cat;
use Class::Struct;
my @a=qw(2 3);
foreach $elem(@a){print $elem,"\n";}
#package Class::Struct;
printem;
tie @a,'Class::Struct::Tie_ISA';
foreach $elem(@a){print $elem,"\n";}
#$a[0]=34;
print scalar @a,"\n";
struct( Cat=>{name=>'$',age=>'$'});
my $c=new();
$c->name('kitten');;
print $c->name,"\n";
$c->age(34);
print $c->age,"\n";
print ref($c),"\n";
