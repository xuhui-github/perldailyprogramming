#!/usr/bin/perl
use Mine::Node;
my $a=Mine::Node->new();
my $b=Mine::Node->new("a node b");

$a->set_value("a node ");
$a->set_next( $b);
$a->printv();
$a->get_next->printv;
Mine::Node::nodes();


