#!/usr/bin/perl
while(<>){
print if /\b[A-Z][a-z]+\b/;
}

