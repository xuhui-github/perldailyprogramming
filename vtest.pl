#!/usr/bin/perl
 our $v=10;
my $myvalue=22;

print "initial value of \$v is",$v,"\n";
print "initial value of \$myvalue is",$myvalue,"\n";
sub fun{
our $v=100;
print "\$v is $v in fun()\n";
print "change \$v to 100 in fun()\n";
}
fun;
print "\$v is out of fun is $v\n";
sub mytest{
my $myvalue=222;
print "\$myvalue in mytest() is $myvalue\n";
print "change \$myvalue to 222 in mytest()\n";
print "exit mytest()\n";
}
mytest();
print "\$myvalue out of mytest is $myvalue\n";

