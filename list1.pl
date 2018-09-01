#!/usr/bin/perl
print "Enter the path to change:";
$path=<STDIN>;
chomp $path;
if($path=~/\s+/){
chdir;}else{
chdir $path;}
@files=glob "*";
@files=sort @files;
foreach(@files){
print "$_\n";
}


