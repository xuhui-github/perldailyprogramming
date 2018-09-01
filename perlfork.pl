#!/usr/bin/perl
if($pid=fork){
print "process parent first fork $$\n";
 
  }elsif(defined $pid){
    print " child first fork $$ and parent is ",getppid(),"\n";
          # sleep(5);
           for(1..3){
       $pid2=fork;
         if(defined $pid2){
          #sleep(4);
            print "child process second fork $$ and parent is ",getppid(),"\n";
            }else{
             print "fork error in second forking\n";
            }
          }
    }else{
     printf "fork error at first forking\n";}
    while(($id=waitpid(-1,0))!=-1){
        print "process $id exited\n";}

