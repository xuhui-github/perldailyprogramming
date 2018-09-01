#!/usr/bin/perl
opendir  DIR,".";
my @files=map $_->[0] ,sort {$a->[1]<=>$b->[1]} map [$_,-s $_], readdir DIR;
foreach(@files){
print $_,":", -s $_,"\n";}
closedir DIR;
