package A;
sub careful{
my($package,$filename)=caller;
unless($package eq __PACKAGE__ && $filename  eq __FILE__){
die "you were not supposed to call me ,$package!\n";
}
print "called me saely\n";
}
sub e{
careful;}
e;
package B;
sub test{
&A::careful();
}
#&B::test;
@names=("johb","marrry");

*name=\@names;
 #@name=("one");
@{name}=("one");

print "@names\n";

while(my($key,$value)=each(%{"${__PACKAGE__}::"})){
print "$key    $value\n";
}
 
