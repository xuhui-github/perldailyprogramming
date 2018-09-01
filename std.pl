#!/usr/bin/perl
{
local(*fh)=STDOUT;
print fh "hello world\n";
}
#############################################################
$a=23;
print "$a\n";
*b=*a;
$b++;
print "$a\n";
$r=\$a;$$r++;
print "$a\n";
##############################################################
my @array=(2,4);
 fun(*array);
sub fun{
local *copy=shift;
foreach(@copy){
$_*=2;
}
}
fun(*array);
print "@array\n";
#################################################################
sub a_long_name_fun{
print "this is a function with long name\n";
}
 *f=*a_long_name_fun;
f();
##################################################################
$x=10;
fun(*x);
sub fun{
local(*y)=@_;
print "before value of y $y\n";
local($x)=200;
print "after value of y $y\n";
}



