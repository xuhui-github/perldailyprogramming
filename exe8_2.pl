#!/usr/bin/perl
while(<>){
chomp;
if(/\b\w+a\b/){
print "Matched: |$`<$&>$'|\n";
}else{
print "No matched:|$_|\n";
}
}
