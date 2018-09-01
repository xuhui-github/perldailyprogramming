#!/usr/bin/perl
my @elem=qw(A B C D E);
sub roll{
my $e=$elem[0];
push @elem ,shift @elem;
return $e;
}

print "@elem\n";
for(my $i=0;$i<10;$i++){
roll;
print "@elem\n";

}

