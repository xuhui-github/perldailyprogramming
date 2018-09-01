#!/usr/bin/perl
$recips="Preheat oven to 451 deg. fahrenheit.Mix"; 
$recips=~/\d+ /g;
$recips=~/\G(\w+)\. (\w+)/;
print "$1 of $2";
