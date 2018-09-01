#!/usr/bin/perl
$length=0;
foreach(keys %ENV){
$width=length($_);
$length=$width if $width>$length;
}
while(my($key,$value)=each(%ENV)){
printf "%-${length}s %s\n",$key,$ENV{$key} ? $ENV{$key} : "(undefined value)";
}
getc;