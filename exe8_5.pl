#!/usr/bin/perl
while(<>){
chomp;
if(/\b(\w+a)\b(.{0,5})/){
print "\$1 is $1 and \$2 is $2\n";
}
else{
print "no matched\n";
}
}

