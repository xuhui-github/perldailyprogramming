#!/usr/bin/perl
use IO::File;
open DATA,"logfile" or die"can not open logfile\n";
my %hash=();
while(<DATA>){
$_=~/^(.+):/;
if(not defined $hash{"$1"}){
$hash{"$1"}=IO::File->new("$1.info","w");
print { $hash{"$1"}} "$_";
}
else{
print {$hash{"$1"}} "$_";
}
}
close DATA;
for(values %hash){
$_->close;
}


