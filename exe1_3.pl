 

#!/usr/bin/perl
print "enter a string line: ";
$line=<STDIN>;
chomp $line;
@array=split(" ",$line);
@array=reverse @array;
print "the reverse string is: @array \n";

