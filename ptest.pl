#!/usr/bin/perl
{my $count;
sub count_one{
++$count;}
sub count_so_far{
return $count;
}
}

count_one();
count_one();
count_one();
print "we have seen ",count_so_far(),"counts\n";
{
my $count=10;
sub down{
--$count;
}

sub remain{return $count;}


}
down();
down();
down();
down;
print "down to ",remain(), " counts\n";

