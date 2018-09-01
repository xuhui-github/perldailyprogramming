#/usr/bin/perl
use File::Find;
unlink "result" if -e "result";
open my $res, ">>result" or die "can not open result.txt:$!\n";

find( sub{if(-f and -T and /\.txt$/){
           #print "[$_]\n";
            my $res=\*{res};
           print "[$File::Find::name]\n";
           open FILE,"<$_" or die "can not open $_\n";
            my $line=<FILE>;
            print $res $line;
            close FILE;
          }
         },".");
close $res;

