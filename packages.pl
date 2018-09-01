#/usr/bin/perl
package A;
my  $a="a string";
sub say{
print "hi i am in A";
}
#package B;
package A;
$a.=$a;
package B;
print __PACKAGE__,"\n";
A::say();
print "$a\n";
package A;
print $a,"\n";
