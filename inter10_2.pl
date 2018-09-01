#!/usr/bin/perl
use strict;
require  'Oogaboogoo.pm';
my($mday,$mon,$year,$wday)=(localtime)[3,4,5,6];
print "Today is ",Oogaboogoo::number_to_day_name($wday),", ",Oogaboogoo::number_to_month_name($mon)," ",$mday+1," ",$year+1900,"\n";

