#!/usr/bin/perl

use File::Find;
find(sub{
        if(-f and ((stat)[3])>=2){print "$File::Find::name\n";}
         },"/");

