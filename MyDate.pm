package MyDate;
use Carp;
use strict;

sub new{
my $class=shift if @_;
my $hash={@_};
bless $hash,$class;
}

sub AUTOLOAD{
our $AUTOLOAD;
my @names=qw(year day month);
(my $method=$AUTOLOAD)=~s/.*:://;
if($method and grep "$_" eq "$method" ,@names){
  no strict 'refs';
*{$AUTOLOAD}=sub{
my $ref=shift;
return $ref->{$method};
};
goto &{$AUTOLOAD};
}
croak "$_[0] don 't have this method $method";
}1;



