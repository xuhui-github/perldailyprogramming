#!/usr/bin/perl
package XY;
use strict;
use warnings;

sub new{
my($class,$x,$y)=@_;
   bless   sub{
    return (sub{$x+=$_[0] if @_;
               $x++ unless @_;
                return $x;
              },
           sub{$y++;},
           sub{print "\$x= ",$x," \$y= ",$y,"\n";});
           }
                ,$class;
 }

sub increasex{
 my $obj=shift;
 return ($obj->())[0]->($_[0]);
  }


 sub increasey{
  my $obj=shift;
return ($obj->())[1]->();
}

 sub show{
  my $obj=shift;
  return ($obj->())[2]->();
}

package main;
   my $temp=XY->new(0,0);
       $temp->increasex(23);
      print $temp->increasex(233),"\n";
       $temp->show;
       $temp->increasex(3);
       $temp->increasey;
       $temp->show;

