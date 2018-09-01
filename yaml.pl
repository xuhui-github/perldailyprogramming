#!/usr/bin/perl
use YAML qw(freeze thaw Dump Load);
my @array=("first",{name=>"hui",age=>"32"},"third");
my $n=345;
 my $content=Dump @array;
 
 my($a,$b)=qw(23,34);
 my $two=freeze $a,$b;
 my ($ra,$rb)=thaw $two;
print $ra," ",$rb,"\n";
  # $content.="\n";
 my @other= thaw $content;
print "restore and change to other\n";
my @str=thaw $content;
print thaw  @str;
print "@str\n";
print "\$rn is ",$rn,"\n";

