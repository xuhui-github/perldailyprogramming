#!/usr/bin/perl
my @a=(23,45,56,74);
grep {$_=0 if $_%2==0; }@a;
print "@a\n";
my @files=map{"    ".$_."\n"}
            grep{-s $_>1024;}@ARGV;
foreach(@files){
print;
}
