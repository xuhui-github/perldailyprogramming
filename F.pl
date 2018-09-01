#!/usr/bin/perl
package FunObj;
use overload '&{}'=>\&funptr;

sub new{
my $class=shift;
my $obj="hello";
return bless \$obj,ref($class)||$class;
}
sub value{
my $obj=shift;
#return \$obj->{value};
return \233333;
}
 sub function{
  print "function called\n";
 print $_[0],"\n";
  print $_[1],"\n";
() 
}
sub funptr{

return \&{ref($_[0])."::function"};
}

#$myfun=FunObj->new;

#print $myfun->{ptr}->(34,567),"\n";
#print $myfun->(44,88888888);
package main;

#print $$myfun,"\n";
my $obj=FunObj->new();
print $obj->(34,567);


