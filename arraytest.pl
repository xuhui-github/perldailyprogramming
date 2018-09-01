#!/usr/perl
my @a=();
push @a,2,3,42,3,4;
print "@a\n";
pop @a;
pop @a;
pop @a;
pop @a;
print "@a\n";
print scalar @a;
my $count=push( @a,());
print "\$count is $count\n";
my @b=();
print scalar @b;

sub changeref{
$_[0]=100;
}

sub change{
foreach(@_){
$_=100;
}
$a[0]=100;
}


sub changecopy{
 @copy=@_;
foreach(@copy){
$_="hello";
}
}


my @array=(1,2,3,4,5);
print "before change :@array\n";

change @array;
print "after changing :@array\n";
changeref @array;
print "change2:@array\n";
@array=qw(1,2,3,4,55,6);
changecopy @array;
print "\@array is @array\n";

