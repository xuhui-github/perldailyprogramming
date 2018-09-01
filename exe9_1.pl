#!/usr/bin/perl
##  Copyright  (c) 2010 by Hui



$name="fred";
while(<>){

chomp;
if(/($name){3}/){
print "matched<$&>\n";
}
else {print "No matched\n";
}}
