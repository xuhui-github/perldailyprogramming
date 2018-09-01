#!/usr/bin/perl
use File::Find;
sub create_find_callback_that_counts{
my $count=0;
return sub{print ++$count,":$File::Find::name\n";}
}
my $callback=create_find_callback_that_counts();
my $callback2=create_find_callback_that_counts();
print "my bin\n";
find($callback,"bin");
print "my lib\n";
find($callback2,"home");

