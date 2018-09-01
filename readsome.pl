#/usr/bin/perl
use File::Find;
my $count=0;
unlink "new" if -e "new";
open our $res, ">>new" or die "can not open result.txt:$!\n";

find( sub{if(-f and -T and /^abc/){
            if($count<100)
             {our $res;
           open FILE,"<$_" or die "can not open $_\n";
            my $line=<FILE>;
            print $res $line;
            close FILE;
            $count++;
          
          }
           }
          
         },"/tmp");
close $res;
