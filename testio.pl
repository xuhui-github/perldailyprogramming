#/bin/usr/perl
my $str=do{
   $/=undef;
   open F,"<bababa" or die;
   <F>;
  };
print $str,"\n";
