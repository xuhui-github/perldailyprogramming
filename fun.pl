#/usr/bin/perl
sub get_fun{
return sub{print @_,"\n";};
}
my $funref=get_fun;
&{$funref}(2,3,4);
print ".................\n";
$funref->(24,56);
&$funref(233,123);
get_fun()->(222,2222);
&{get_fun()}(23,34,234444);
