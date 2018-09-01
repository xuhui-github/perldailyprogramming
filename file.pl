#!/usr/bin/perl
use IO::File;
use IO::Dir;
use Cwd;
my $f=IO::File->new("ttt","w");
print $f "hello hello\n";
$f->close;
print Cwd->cwd;
my $dir=IO::Dir->new(Cwd->cwd);
while(defined(my $f=$dir->read)){
print $f,"\n";
}

