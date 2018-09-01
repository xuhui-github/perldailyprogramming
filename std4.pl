#!/usr/bin/perl
open F,">flower" or die $!;
*STDOUT=*F;
#redirect stdio to file flower
print "hello world\n";
open IN,"/etc/passwd" or die;
*STDIN=*IN;
while(<STDIN>){
print;
}


