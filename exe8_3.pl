#!/usr/bin/perl
while(<>){
chomp;
if(/\b(\w+a)\b/){
print "\$1 contains \'$&\'\n";
}
else{
print "no matched\n";
}}

