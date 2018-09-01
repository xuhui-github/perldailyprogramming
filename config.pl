#!/usr/bin/perl

my $str="color=red;
        secondcolor=cyan;
   hash { aaa={
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
my @e=$_[0]=~/\w+\s*\{|\w+\s*=\s*\{|\w+\s*=\s*\w+|\}/gxm;
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
}elsif(/\s*\}/){
shift @stack;
}
}
return $h;
}

my $t=reborn $str;
print $t->{hash}{hhh},"\n";
print $t->{hash}{aaa}{ddd},"\n";
print "his name is ",$t->{name},"\n";
print "the color is ",$t->{color},"\n";
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
   if($_[1]>0){if($_[1]==2){print " "x$_[1],"}\n";}else{print " "x$_[1],"};\n";}}
   
    
}
}
#print "_______________________\n";
#print_hash $t,0;
#print "_______________________\n";
  
 sub serialize{
 my $ha=shift;
 my $filename=shift;
 open F,">","$filename" or die "serializing error:$!";
  local *STDOUT=*F;
   print_hash($ha,0);
   
}
 sub content{
    my $name=shift;
   open TEXT,"<$name" or die "read error:$!\n";
    my @text=<TEXT>;
     return join " ",@text;
      }
 sub build_use_file{
    
   my $name=shift;
     my $str=content $name;
     
    print "^^^^^^^^^^^^^^up^^^^^^^^^\n";
    print $str;
    print "^^^^^^^^^^^^^^down^^^^^^^^\n";
    return reborn $str;
}
$t->{color}="blue";
$t->{test}="littlefunny";
serialize $t,"myhash.txt";
print "file content:\n";
system "cat myhash.txt";

print "____________build it from file _______________\n";
my $another=build_use_file"myhash.txt";
print "rebuilded from file\n";
print "the color is now ",$another->{color},"\n";
print "the test is now ",$another->{test},"\n";
print "the second color is now ",$another->{secondcolor},"\n";
print "-------another--------\n";
print_hash $another;
print "-----------------------\n";
my $new=build_use_file("myhash.txt");
my $diffcult=build_use_file("hash.txt");
print "++++++++++++++difficult++++++++++++++++\n";
print_hash $diffcult;
print "+++++++++++++++++++++++++++++++++++++++\n";
my $record=content "hash.txt";
my $newone=reborn $record;
print "+++++++++++++++newone+++++++++++++++++++\n";
print_hash $newone;
print "new one 's dog name is ",$newone->{dog}{name},"\n";
print "++++++++++++++++++++++++++++++++++++++++\n";
print" __________content bababa________\n";
 print content "babala";
print "____end____\n";
print "difficult name:",$diffcult->{name},"\n";
print "difficult age:",$diffcult->{age},"\n";
print "difficult address:",$diffcult->{address},"\n";
serialize $difficult,"gang";
my $gang=build_use_file "gang";
print "gang name ",$gang->{name},"\n";
print "----------new-----------\n";
print_hash $new;
print "-------------------------\n";

print "second girl tiantian heart is ",$new->{second}{girl}{tiantian}{heart},"\n";
my $memory=" author=xuhui;
             color=cyan;
             memory=pink;";

  my $hurt=reborn $memory;
   print "author is ",$hurt->{author},"\n";
   print "color is ", $hurt->{color},"\n";
   print "memory is ",$hurt->{memory},"\n";
  print "print hurt\n";
  
  print_hash $hurt;
  $hurt->{author}="dongxuhui";
  serialize $hurt,"body.txt";
  my $another_hurt=build_use_file("body.txt");
  print "another_hurt 's author is ",$another->{author},"\n";
  print "OOOOOOOOOOOOOOOOOOOOOOO\n";
   $m->{a}="COLORA";
   $m->{b}="COLORB";
   $m->{age}="THIRTY";
  print_hash $m,0;
 print "oo author is ",$m->{age},"\n";
 print $m->{color}{a},"\n";
 print $m->{color}{b},"\n";
 my $name="bababa";
 serialize $m,$name;
  serialize $m,"tank";
 my $tank=build_use_file "tank";
print "print tank\n";
  print_hash $tank;
print "tank end\n";
  my $fun=do{local $/=undef;
             open F,"<tank" or die;
             <F>;};
  print "fun:",$fun,"\n";
 my $obj=reborn $fun;
  print "tank 's color a:","$obj->{a}","\n";
 print "tank ' color b:","$obj->{b}","\n";
 print $obj->{age},"\n";  
 print "content: ",content("tank");

my $hash={};
my $hash={};
my $hash={};
my $hash={};
