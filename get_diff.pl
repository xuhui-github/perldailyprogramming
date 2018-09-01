#/usr/bin/perl
open HA,"<A" or die "Can not open file A:$!\n";
open HB,"<B" or die "Can not open file B:$!\n";
open HC,">C" or die "Can not open file C:$!\n";
chomp(my @a=<HA>);
chomp(my @b=<HB>);
my @c=();
my $count= @c=grep {my $e=$_;not  grep $e eq $_, @a;} @b;
foreach (@c){print  HC $_,"\n";
}
print "there are ",$count, "line\n";
close HA;
close HB;
close HC;
