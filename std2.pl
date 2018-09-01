#!/usr/bin/perl
*PI=\3.1415926;
#$PI=10;$PI and $3.1415926 are alias each other

print 2*$PI,"\n";
@array=(2,3,4);
*ptr=\@array;
print "$ptr[0]\n";
%hash=("jim"=>"new york","marry"=>"paris");
*p=\%hash;
print $p{"jim"},"\n";
*fun=sub{
print "invocation \n";
};
fun();
$value="a value\n";
*v=*value;
print ${*v};
