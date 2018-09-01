#!/usr/bin/perl
$s="Marry has a little sleep and a dog.";
print "Marry does has one\n" if $s=~/sleep/;
print "Marry doesnot have\n" if $s!~/dog/;
 $nums="19 23 3 456 66letter 34";
my @numbers=$nums=~m/(\d+)/g;
my $count=$nums=~/(\d+)/g;
print "numbers catching is @numbers\n";
print "count is $count\n";
my $n="123456789";
my @array=$n=~/(\d\d\d)/g;
print "@array\n";
@array=$n=~/(?=(\d\d\d))/g;
print "@array\n";
my $sentence="And little lambs eat ivy";
$sentence=~/l[^s]*s/;
print "($`) ($&) ($')\n";

