package Person;
 
sub new{
my $class=shift;
my $obj={@_};
return bless $obj,$class;
}

sub name{
my $obj=shift;
if(@_){$obj->{name}=shift;}
else{
return $obj->{name};
}
}

sub age{
my $obj=shift;
if(@_){
$obj->{age}=shift;
}
else{
return $obj->{age};
}
}

package main;
use Data::Dumper qw(Dumper);
my $joy=Person->new(name=>joy,age=>23);
 my $dd=Data::Dumper->new([$joy],[joy]);
 print $dd->Dump;
print $joy->name,"\n";
print $joy->age,"\n";



