
use Thread qw(async);
use threads::shared;
our $count=2;

sub work : locked{
  lock $count;
  my $name=shift;
  my $seconds=shift;
cond_wait $count if $i==0;
$i--;
  print "this is $name coming\n";

  sleep($seconds);
{lock $count;
$count++; 
cond_broadcast $count;
}
print "$name is leaving\n";
 
 
 }

my $a=async {work("marry", 50);};
my $b=async {work("tom",50 );};
my $c=async {work("teacher",12);};
$a->join;
$b->join;
$c->join;






