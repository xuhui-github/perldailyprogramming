#!/usr/bin/perl
use File::Spec;
use Cwd;
use IO::Dir;
my $dir=IO::Dir->new(Cwd->cwd);
while(defined(my $f=$dir->read)){
print " "x4,File::Spec->rel2abs($f),"\n";
}

