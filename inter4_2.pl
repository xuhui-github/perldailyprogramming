#!/usr/bin/perl

sub check_required_items{
my $who=shift;
my $items=shift;

my @required=qw(preserver sunscreen water_bottle jacket);
my @missing=();
for my $item(@required){
unless(grep $item eq $_,@$items){
print "$who is missing $item.\n";
push @missing, $item;}
}
if(@missing){
print "Adding @missing to @$items for $who.\n";
push @$items,@missing;
}
}

sub check_items_for_all{
my $ref=shift if @_;
while(my($name,$items)=each(%$ref)){
check_required_items($name,$items);}
}

my @gilligan=();
my @skipper=();
my @professor=();
my %all=(Gilligan=>\@gilligan,
         Skipper=>\@skipper,
         Professor=>\@professor,
        );
check_items_for_all(\%all);
print"@gilligan\n";
print "@skipper\n";
print "@professor\n";
_
