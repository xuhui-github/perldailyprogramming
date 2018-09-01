#!/usr/bin/perl
sub fun{
return if$_[0]==10;
print "$_[0]\n"; 

fun($_[0]+1);
}
fun 0; getc;

