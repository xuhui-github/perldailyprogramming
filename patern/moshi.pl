#!/usr/bin/perl
$burglar="Bilbo Baggins";
while($burglar=~/b/gci){
printf "Found a B at %d\n",pos($burglar)-1;
}
while($burglar=~/i/gi){
printf "Found a I at %d\n",pos($burglar)-1;
}

