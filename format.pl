#!/usr/bin/perl
my ($name,$login,$uid,$gid,$office,$home);
format STDOUT =

|@<<<<<<<<<<<<| @|||||||||||| @<<<<<<|@>>>>>>| @>>>>>>| @<<<<<<<<<<<<
$name,          $login,     $office,$uid,$gid,     $home
.

#$old=select(STDOUT);
#$~="STDOUT";
open FH, "/etc/passwd" or die $!;
while(<FH>){
($name,$login,$uid,$gid,,$office,$home)=split ":";
write STDOUT;
}
#select($old);
  
