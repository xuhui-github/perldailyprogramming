#!/bin/perl
sub change{
 $_[0]="hello world";
}

$str="a example";
change($str);
printf "%s\n",$str;

