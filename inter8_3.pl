#!/usr/bin/perl
use IO::Dir;
sub process{
my $dir=shift;

return if not $dir->isa("IO::Dir");
while(defined(my $name=$dir->read)){
print $name,"\n";
}
}

for(@ARGV){
my $d=IO::Dir->new($_) if -d $_;
print "*"x8,$_,"*"x8,"\n";
process $d;
}
