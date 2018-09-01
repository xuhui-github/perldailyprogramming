#!/usr/bin/perl
my $str="1221 1221";
if($str=~/((\d)(\d)\3\2)\s+\1/){
print "matched $1 $2 $3\n";
}
$str="1221 1221 1221 1221";
print "$1 ,$2 ,$3 ,$4\n" if ($str=~/(((\d)(\d)\4\3)\s\2)\s\1/);
