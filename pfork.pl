#!/usr/bin/perl
      my $pid=fork();
        if($pid>0){
print "process parent first $$ parent is ",getppid(),"\n";system("ps");
#sleep 2;
 }elsif($pid==0){
  print "process child first $$ parent is ",getppid(),"\n";
        for(1..1){  for(0..3){ my $pid2=fork; if($pid2==0){
        print "process child second fork $$ parent is ",getppid(),"\n";
          }}
      }}else{}
  
