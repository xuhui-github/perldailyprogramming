package Semaphore;
use threads::shared;

use strict;


sub new{
my $class=shift if@_;
my $count=shift if @_;
my $hash={count=>$count,
          num=>$count,
          };
bless $hash,$class;
}

sub up : locked method{

my $obj=shift;
lock $obj->{count};
my $i=shift if @_;
 while( $obj->{count}+$i>$obj->{num}){

cond_wait $obj->{count};
}
$obj->{count}+=$i;
  {lock $obj->{count};
 cond_broadcast $obj->{count};
}}


sub down : locked method{

my $obj=shift;
lock $obj->{count};
my $i=shift;
 while($i>$obj->{count}){
cond_wait $obj->{count};
}
$obj->{count}-=$i;
{lock $obj->{count};
cond_broadcast $obj->{count};
}}

package main;
use Thread qw(async);


my $sem=Semaphore->new(1);
sub work{
  my $name=shift;
  my $seconds=shift;
 $sem->down(1);
  print "this is $name coming\n";

  sleep($seconds);
print "$name is leaving\n";
 $sem->up(1);
 
 }

my $a=async { work("marry", 50);};
my $b=async {work("tom",50 );};
my $c=async {work("teacher",12);};
$a->join;
$b->join;
$c->join;






