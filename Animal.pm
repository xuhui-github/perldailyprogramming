#inter_12.pl

package Animal;
use strict;
use Carp;
our ($color,$name)=(&default_color(),&default_name());
sub new{
 my $class =shift if @_;
  my $name=shift if @_;
  my $obj={name=>$name,color=>&default_color(),};
  bless $obj,$class;
}
sub default_color{
return "gray";
}
 
sub default_name{
return "an animal unknown";
}

sub set_color{
my $ref=shift;
my $color=shift;
ref($ref) or croak "set_color only can be invoked by instance";
$ref->{color}=$color;
}

sub set_name{
my $obj=shift;
ref($obj) or croak "set_name only can be invoked by instance";
my $name=shift if @_;
$obj->{name}=$name;
}

sub named{
our $name;
my $class=shift;
ref($class) and croak "just invoke by class";
 my $nm=shift;
$name=$nm;
}

sub colored{
our $color;
ref(my $class=shift) and croak "just invoke by class";
my $cr=shift;
$color=$cr;
}

sub color{
my $arg=shift;
ref( $arg) and return $arg->{color};
 return $color;
}

sub name{
my $arg=shift;
ref($arg) and return $arg->{name};
return $name;
}
package main;
my $a=Animal->new("marry");
print $a->name()," is ",$a->color(),"\n";
Animal->colored("blue");
print "Animal color is ",Animal->color(),"\n";
Animal->set_color("red");

