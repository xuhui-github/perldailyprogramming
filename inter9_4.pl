#!/usr/bin/perl
use Data::Dumper;

sub data_for_path{
my $path=shift;
if(-f $path or -l $path){
return undef;
}
if(-d $path){
my %directory;
opendir PATH,$path or die "Can not opendir $path:$!";
my @names=readdir PATH;
closedir PATH;
for my $name(@names){
next if $name eq "." or $name eq "..";
$directory{$name}=data_for_path("$path/$name");
}
return \%directory;}
#warn "$path is neither a file or a directory\n";
return undef;
}

sub dump_data_path{
my $path=shift;
my $data=shift;
my $space=shift;
my @parts=split "/",$path;
if(not defined $data){ 
print " "x $space,"$parts[@paths-1]\n";
return;
}
my %directory=%$data;
print " "x$space,"$parts[@parts-1]"," with contents:\n";
for(sort keys %directory){

dump_data_path("$path/$_",$directory{$_},$space+2);
}
}

#print Dumper(data_for_path("./"));
dump_data_path($ARGV[0],data_for_path($ARGV[0]),0);

