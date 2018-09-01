#!/usr/bin/perl
while(<>){
print if /([\S])\1/;
}

