package Oogaboogoo;
use Carp;
use base(Exporter);
our @EXPORT=qw(number_to_day_name number_to_date_name);

our @day=qw(ark dip wap sen pop seq kir);
our @month=qw(diz pod bod rod sip wax lin sen kun fiz nap dep);
sub number_to_day_name{
    my $n=shift;
   croak"invalid number of day\n" if $n<0 || $N>6;
      return $day[$n];
        }

sub number_to_date_name{
    my $n=shift;
    croak "invalid number of month\n" if $n<0||$n>11;
     return month[$n];
}
1;
