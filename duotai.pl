#!/usr/bin/perl
use Nephew;
use Uncle;
use TextView;
use YAMLView;
my $u=Uncle->new(name=>'Bob',occupation=>'Uncle',age=>50);
my $n=Nephew->new(name=>'Jacob',occupation=>'Agent of Chaos',age=>3);
Class::Trait->apply($u,'TextView');
Class::Trait->apply($n,'YAMLView');
$u->render();
$n->render();
