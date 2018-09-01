#!/usr/bin/perl
use File::Find;
use Time::Local;


sub gather_mtime_between{
my @files=();
my $start=shift if @_;
my $end=shift if @_;
return(sub{push @files,$_ if(stat $_)[9]>=$start && (stat $_)[9]<=$end;
},sub{return @files});
}

my $target_dow=1;
my @starting_directory=("..");
my $seconds_per_day=24*60*60;
my($sec,$min,$hour,$day,$mon,$yr,$dow)=localtime;
my $start=timelocal(0,0,0,$day,$mon,$yr);
while($dow!=$target_dow){
$start-=$seconds_per_day;
if(--$dow<0){
$dow+=7;
}
}
my $stop=$start+ $seconds_per_day;
my($gather,$yield)=gather_mtime_between($start,$stop);
find($gather,@starting_directory);
my @files=$yield->();

for my $file(@files){
my $mtime=(stat $file)[9];
my $when=localtime $mtime;
print "$when: $file\n";
}

