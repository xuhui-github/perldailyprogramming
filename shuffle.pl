#!/usr/bin/perl
sub shuffle{
for(0..$#_){
my $i=int( rand(scalar(@_)));
my $temp=$_[$_];
$_[$_]=$_[$i];
$_[$i]=$temp;
}
(@_)
}


sub shuffle2{
my $i;
for($i=$#_;$i>0;$i--){
my $r=int(rand($i));
my $temp=$_[$i];
$_[$i]=$_[$r];
$_[$r]=$temp;
}
(@_)
}


my @items=(1,2,3,4,5);
my @it=shuffle(@items);
print "@it\n";
my @another=(1,2,3,4,5,6,7,8,9,10);
shuffle(@another);
print "@another\n";
