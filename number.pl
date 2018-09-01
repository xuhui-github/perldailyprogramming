#!/usr/bin/perl
$num=int(1+rand 100);
print "Enter a number between 1-100:";
while(<STDIN>){
chomp;
last if /^\s+$/ or $_ eq "quit" or $_ eq "exit";
if($_<$num){
print "Too low\n";
}elsif($_>$num){
print "Too high\n";
}else{last;}
print "Enter a number between 1-100:";
}
