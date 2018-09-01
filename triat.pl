
package Mode;
sub new{
 my ($class,%data)=@_;
 bless \%data,$class;
       }
sub get_data{
  my $self=shift;
  my %data=map {$_=>self->{$_}} qw(name occupation age);
   return \%data;
   }
1;1;1;1;1;1;1;1;1;1;1;
