#!/usr/bin/perl
my $v="hello";
print "v has been defined\n" if defined $v;
undef $v;
print "v is undef\n" if not defined $v;
my @array=qw(1,2,3);
my $ref=\@array;
print "@$ref\n";
printf "the ref is at %x\n",$ref;
for(0,1,2,){
printf "%x\n",\@array[$_];
}

my $str="hui:an:char";

my@l= split ":",$str;
print "$l[0] $l[2]\n";



