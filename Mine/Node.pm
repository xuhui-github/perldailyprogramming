package Mine::Node;


 $count=0;
sub new{
	$class=shift;
	my $instance={};
	$instance->{"data"}=shift if @_;
	$count++;

	 return bless $instance,$class;
	
}

sub set_value{
	my $ref=shift;
	$ref->{"data"}=shift if @_;
}

sub set_next{
	my $ref=shift;
      $ref->{"next"}=shift if @_;
}

sub get_next{
	my $ref=shift;
	return $ref->{"next"};
}

sub nodes{
return $count;
}

sub printv{
	my $ref=shift;
	print  $ref->{"data"} ,"\n";

}

package UpperNode;

@ISA=qw(Mine::Node);

sub new{
my $class=shift;
################################################################################
my $ref=$class->SUPER::new(@_);#INVOKE CONSTRUCTOR OF SUPER CLASS. 
################################################################################
$ref->{"data"}=uc $ref->{"data"};

return $ref;
}


sub printv{
my $ref=shift;
################################################################################
$ref->SUPER::printv;#invoke instace method of SUPER CLASS.
################################################################################
print "invocation in childnode\n";
}

my $p=Mine::Node->new("Node");
my $n=UpperNode->new("new node");
$p->printv;
$n->printv;
$n->set_value("zero");
$n->printv;
$n->set_next($p);
$n->get_next->printv;
 print UpperNode->nodes;
