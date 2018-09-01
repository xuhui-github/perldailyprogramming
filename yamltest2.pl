#!/usr/bin/perl
use YAML;
my $data=do{
open my($fh),"<",'yaml.yml'or die "can not read yml file:$!";
   local $/;
   <$fh>
   };
my ($hash,$array)=Load($data);
print %$hash,"\n";
print "@$array\n";

