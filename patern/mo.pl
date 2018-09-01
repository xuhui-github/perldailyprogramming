#!/usr/bin/perl
my $str="1221 1221";
if($str=~/(\d)(\d)\2\1 \1\2\2\1/){
print "matched $1 $2 \n";
}
