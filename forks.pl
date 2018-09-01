#!/usr/bin/perl
my $count=100;
my $i=fork();
if($i==0){
$count++;
}
elsif($i>0){
$count--;
sleep(3);
}else{
print "fork error\n";
}
print $count;

