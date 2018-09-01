#!/usr/bin/perl

my $str="hash { aaa={
              ddd   =eee;
              fff=ggg;};
          hhh=iii;
             }; 
          name=hui;
         second {
          girl={ tiantian=
                         {heart=erhua;
                          color=white
                         };

                  address=qingxian;};

            };";
        
sub reborn{
my @e=$_[0]=~/\w+\s*\{|\w+\s*=\s*\{|\w+\s*=\s*\w+|\s*\};/gx;
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

my $t=reborn $str;
print $t->{hash}{hhh},"\n";
print $t->{hash}{aaa}{ddd},"\n";
print $t->{name},"\n";
print $t->{second}{girl}{tiantian}{heart},"\n";
print $t->{second}{girl}{tiantian}{color},"\n";
print $t->{second}{girl}{address},"\n";
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
   #print " "x$_[1],"};\n" if $_[1]>0;
   if($_[1]>0){print " "x$_[1],"};\n";}
   else{
    print " "x$_[1],"}\n";
     }
}
}
print "_______________________\n";
print_hash $t,0;
print "_______________________\n";
  
 sub serialize{
 my $hashref=shift;
 my $filename=shift;
 open F,">$filename" or die "serializing error:$!";
  local *STDOUT=F;
   print_hash($hashref);
   
}

 sub build_use_file{
   my $name=shift;
    my $str=do{ local $/=undef;
     open HANDLE,"<$name" or die "build_use_file error:$!";
      my $content= <HANDLE>;};
    return reborn $str;
}

serialize $t,"myhash.txt";
print "file content:\n";
system "cat myhash.txt";

print "____________reborn_______________\n";
my $another=reborn $str;
print "-------another--------\n";
print_hash $another;
print "-----------------------\n";
my $new=build_use_file("myhash.txt");
print "----------new-----------\n";
print_hash $new;
print "-------------------------\n";

print "second girl tiantian heart is ",$new->{second}{girl}{tiantian}{heart},"\n";
my $memory=" memory{
              peoples={
                girl={
                   name=tiantian;
                  sex=girl;
                   address=qingxian;
                         };
                 boy={
                    name=liuerhua;
                   sex=boy;
                   address=hejian;
                       };
                 perporty=lovers;
                  };
                };";

  my $hurt=reborn $memory;
  my $nnn=reborn $memory;
print "nnnnnnnnnnnnnnnnnnnn\n";
 print_hash $nnn;
print "nnnnnnnnnnnnnnnnnnn\n";
   print "her name is ",$hurt->{memory}{peoples}{girl}{name}," and her friend is  ",$hurt->{memory}{peoples}{boy}{name}," they are ",$hurt->{memory}{peoples}{perporty},"\n";
      serialize $hurt,"nono";
      my $nn=build_use_file("nono");
    print $nn->{memory}{peoples}{girl}{name},"\n";
           print "nn\n";
        print_hash $nn,0;
my $nt=build_use_file "hash.txt";
 print "****************\n";
 print_hash $nt;
 print "##################################\n";
 serialize $hurt,"memory";
 my $it=reborn $memory;
  print "it\n";
 print_hash $it;
print "++++++++++++++++++++++\n";
  my $an=build_use_file "nono";
  print_hash $an;
