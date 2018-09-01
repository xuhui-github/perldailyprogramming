#!/usr/bin/perl
sub trans_str{
my $string=shift;
$string=~tr/A-Z/a-z/;
$string=~tr/a-z//cd;
return $string;
}

print "enter names:";

chomp(my $line=<STDIN>);
my @names=split " ",$line;
    my @n= map $_->[0], sort {$a->[1] cmp  $b->[1]}     
       map [$_,trans_str($_)] ,  @names;
for(@n){
print $_,"\n";
}
