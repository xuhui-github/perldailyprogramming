#!/usr/bin/perl


my $str="hash { aaa={
              ddd   =eee;
              fff=ggg;};
          hhh=iii;
             }; 
          name=hui;
         second {
          girl={ tiantian={heart=erhua; color=white;};

          address=qingxian;};
          relation=classmate;
            };";
        
sub make_hash{
my @e=$_[0]=~/\w+\s*\{|\w+\s*=\s*\{|\w+\s*=\s*\w+|\s*\;};/gx;
my $h={};
my @stack=();unshift @stack,$h;
foreach(@e){
if(/(\w+)\s*\{/)
  {$stack[0]->{$1}={};
   unshift @stack,$stack[0]->{$1};
  }
elsif(/(\w+)\s*=\s*\{/)
 {$stack[0]->{$1}={};
  unshift @stack,$stack[0]->{$1};
}elsif(/(\w+)\s*=\s*(\w+)/)
{$stack[0]->{$1}=$2;
}else{
shift @stack;
}
}
return $h;
}

my $t=make_hash $str;
print $t->{hash}{hhh},"\n";
print $t->{hash}{aaa}{ddd},"\n";
print $t->{name},"\n";
print $t->{second}{girl}{tiantian}{heart},"\n";
print $t->{second}{girl}{tiantian}{color},"\n";
print $t->{second}{address},"\n";
sub print_hash{
if(not ref($_[0]) eq "HASH")
  {print "$_[0];\n";
  }
else{print "{\n" if $_[1]>0;
 foreach(keys %{$_[0]}){
    print " "x$_[1],"$_";
   if($_[1]>0 and ref($_[0]) eq "HASH")
     {print "=";}
    else {print "=" if not ref $_[0]->{$_} eq "HASH";}
    #print "=" if $_[1]>0 and ref($_[0]) eq "HASH" ;
   # print "=" if ref $_[0]->{$_} ne "HASH";
    print_hash($_[0]->{$_},$_[1]+2);
}
  print " "x$_[1],"};\n" if $_[1]>0;
}
}
print "_______________________\n";
print_hash $t,0;
print "_________________________\n";

sub serialize{
 my $ref=shift;
 my $filename=shift;
open F,">$filename" or die;
 local *STDOUT=F;
  print_hash $ref;
}


sub build_from_file{
my $name=shift;
undef $/;
 my $str=do{
   open FILE,"<$name" or die;
   <FILE>;
  };
  my $haa=make_hash $str;
 return $haa;
}
serialize $t,"hahaha";
my $newit=build_from_file "hahaha";
print "new\n";
print_hash $newit,0;

