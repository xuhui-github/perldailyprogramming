#!/usr/bin/perl
@nums=<STDIN>;
chomp @nums;
for($i=0;$i<@nums;$i++){
if($nums[$i]==1){print "fred\n";}
if($nums[$i]==2){print "betty\n";}
if($nums[$i]==4){print "dino\n";}
}

