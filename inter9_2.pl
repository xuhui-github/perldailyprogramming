#!/usr/bin/perl
use Benchmark;
timethese(10000,{'first'=>'my @sorted=map $_->[0],
                            sort {$a->[1]<=>$b->[1]}
                               map [$_,-s $_],
                              glob "/bin/*";',
                 'second'=>'my @sorted=sort {-s $a <=> -s $b } glob "/bin/*";',}     
);

