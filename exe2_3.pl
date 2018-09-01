#!/usr/bin/perl
print "Enter the radius: ";
$radius=<STDIN>;
chomp $radius;
if($radius<0){
$circ=0;}
else{
$circ=$radius*2*3.141592654;}
printf "the circ is %4.1f\n",$circ;

