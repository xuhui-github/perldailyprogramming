#!/usr/bin/perl
while(<>){
chomp;
if(/match/){
print "matched: |$`<$&>$'|\n";
}else{
print "No matched: |$_|\n";
}
}

