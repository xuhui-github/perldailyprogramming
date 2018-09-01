package Mine::List;
use Mine::Node;

sub new{
	my $class=shift;
	$head=Mine::Node->new;
my $h={};
$h->{"node"}=$head; 
#USE A HASH REF TO REPRESENT A LIST OBJECT 
#MAKE A  NODE BE HEADNODE
#my $class =shift;
#$head=Mine::Node->new;
#   return bless $head,$class;
#!!!!!!  bless a Node obj to class List !!!!!!!!!
#note $ before variable name!!!!!!!!!!!!!!!!!!!!!!
	return bless $h,$class;
}


sub initial{
    my $refh=shift if @_;
    my $head=$refh->{"node"};
# get the head node
	my $last;

	print "input linklist node\n";
	while(my $data=<STDIN>){
		chomp($data);
		if($data eq ""){last;}
		my $new=Mine::Node->new($data);
	if(!defined($head->get_next())){
		$head->set_next( $new);
		$last=$new;
	}else{
		$last->set_next( $new);
		$last=$new;
	}
	}
	$last->set_next( undef)if defined $last;
	
}


sub print_list{
	my $refh=shift;
	#get List head node
	my $head=$refh->{"node"};
	$node=$head->get_next();
	while(defined($node)){
		$node->printv;
		$node=$node->get_next();
	}
}
1;







