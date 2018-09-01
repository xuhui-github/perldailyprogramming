#!/usr/bin/perl
$cur="";
sub greet{
if($cur eq ""){
print "Hi,$_[0]! You are the first one here,\n";
$cur=$_[0];
}else{
print "Hi,$_[0]!$cur is also here\n";
$cur=$_[0];
}
}
greet "Fred";
greet "Barney";

