#/usr/bin/perl
my @a=(2,3,4,5);
my @b=(2,233,4,221,3,4,5);
my @c=();
foreach my $e(@b)
{push @c,$e if not grep $e==$_,@a;}

print scalar @c, "[@c]\n";

