#!/usr/bin/perl
my @files=map{"    ".$_."\n"}
            grep{-s $_>1024;}@ARGV
foreach(@files){
print;
}
