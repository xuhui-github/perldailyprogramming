#!/usr/bin/perl
for(1..4)
{my $pid=fork;
 if($pid==0){print "child $$ and parent is ",getppid(),"\n";
            
               my $pid2=fork;
              if($pid2>0){print "third child $$----",getppid(),"\n";}
            }
}
sleep 2;

