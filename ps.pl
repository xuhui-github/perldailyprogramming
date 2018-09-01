#!/usr/bin/perl
my @item=getpwent;
for(my $i=0;$i<@item;$i++){
print "$item[$i]\n";
}



