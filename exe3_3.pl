#!/usr/bin/perl
@strings=<STDIN>;

@another=sort @strings;
print "@another\n";
