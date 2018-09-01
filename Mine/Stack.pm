package Mine::Stack;
use Mine::Node; 
#a link stack with perl
sub new{
	my $class=shift if @_;
	my $ref={};
	$ref->{"num"}=0;
	return bless $ref,$class;
}
 
sub pushit{
	my $ref=shift if @_;
	my $it=shift if@_;
	my $new=Mine::Node->new($it);
	if(!defined $ref->{"head"}){
		$ref->{"head"}=$new;
			
		$ref->{"num"}++;
	}
	else{
		my $h=$ref->{"head"};
          $ref->{"head"}=$new;
		  $new->set_next($h);
		
       $ref->{"num"}++;
	    
	}
}


sub is_empty{
	my $ref=shift if@_;
return $ref->{"num"}==0;
}

sub popit{
my $ref=shift if@_;
if($ref->is_empty){
	return undef;
}else{
my $temp=$ref->{"head"};
my $next=$ref->{"head"}->get_next();
$ref->{"head"}=$next;
$ref->{"num"}--;
return $temp->get_value();
}
}
#1;
package main;
$a=Mine::Stack->new();
$a->pushit(99);
print __PACKAGE__;
print  $a->popit,"\n";

