#!/usr/bin/perl
while(<>){
chomp;
if(/.*\s+$/){
print "$_###\n";
}
else{
print "no match\n";
}
}

