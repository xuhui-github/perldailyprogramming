package Node;

sub new{
my $class=shift;
my $obj={};
$obj->{value}=shift if @_;
$obj->{left}=shift if @_;
$obj->{right}=shift if @_;
return bless $obj,$class;
}
sub mark{
my $obj=shift;
if(@_){
$obj->{mark}=shift;
}else{
return $obj->{mark};
}
}

sub left{
my $obj=shift;
if(@_){
$obj->{left}=shift;
}
else{
return $obj->{left};
}
}

sub right{
my $obj=shift;
if(@_){
$obj->{right}=shift;
}
else{
return $obj->{right};
}
}

sub value{
my $obj=shift;
if(@_){
$obj->{value}=shift;
}
else{
return $obj->{value};
}
}

sub create{
our  $index=$_[2];
if($_[1]->[$index] eq "" )
{$_[0]=undef; return;}
else
{$_[0]=Node->new($_[1]->[$index]);




create($_[0]->{left},$_[1],$index+1);
create($_[0]->{right},$_[1],$index+1);
}
}

sub showtree{

if(defined($_[0]))
{
my $width=$_[1];
showtree($_[0]->left(),$_[1]+1);
print " "x$_[1],$_[0]->value(),"\n";
showtree($_[0]->right(),$_[1]+1);
}
}

sub test{
print "\$index is $index\n";
}

sub pretravel{
if(defined($_[0])){
print " ",$_[0]->value();
pretravel($_[0]->left);
pretravel($_[0]->right);
}
}


package Stack;

sub new{
my $class=shift if @_;
my $obj;
if(@_){
$obj=[@_];
}
else{
$obj=[];
}
return bless $obj,$class;
}

sub clear{
my $obj=shift;
@$obj=();
}


sub size{
my $obj=shift;
return scalar @$obj;
}

sub _push{
my $obj=shift;
push @$obj,@_;
}

sub _pop{
my $obj=shift;
return pop @$obj;
}

sub is_empty{
my $obj=shift;
return scalar(@$obj)==0;
}

sub peek{
my $obj=shift;
return $obj->[scalar(@$obj)-1] if not $obj->is_empty();
return undef;
}


package main;
my $tree;
my $tree1;
#$a=Node->new("b");
#$c=Node->new("d");
#$e=Node->new("e");
#$f=Node->new("f");
#$c=Node->new "d",$e,$f;
#$tree=Node->new("a",$a,$c);
###################
#    __b          #
#a__|      _e     #
#   |__d__|       #
#         |_f     #
###################
Node::create($tree,["A","B","C","","","D","E","","G","","","F","","","",],0);
print $Node::index,"\n";
Node::create($tree1,["a","b","c","","","d","e","","g","","","f","","","",],0);
print $Node::index,"\n";
#$tree->value("hello hui");
#ref($ref) and return;
Node::showtree($tree,0);
Node::pretravel($tree);
printf "\n";
print "another\n";
Node::showtree($tree1,0);
Node::pretravel($tree1);
Node::test;
#test could see our variable  witch was defined anythere in the file
#so here is 14 printed!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
my $t=$tree->left;
print $tree->value,"\n";
while(defined($t)){
print $t->value,"\n";
$t=$t->left;
}

my $s=Stack->new;
$s->_push( "a");
$s->_push( "b");
$s->_push( "c");
print "a b c enter stack\n";
print "the stack size is ", $s->size(),"\n";
print "the top element is ",$s->peek(),"\n";
my $elem=$s->_pop();
print "the pop element is ",$elem,"\n";
print "now the top element is ",$s->peek(),"\n";
print "now the size of stack is ",$s->size(),"\n";

$s->clear();
print "this is a empty stack\n" if $s->is_empty();
print "the size of stack is ",$s->size(),"\n";

sub pre{
my $ss=Stack->new();
$ss->_push($_[0]);
while(not $ss->is_empty()){
 my $elem=$ss->peek();
  if(not $elem->mark()){
  print $elem->value," ";
    $elem->mark(1);
  my $left=$elem->left;
  while(defined $left){
   $left->mark(1);
   print $left->value," ";#print $left," ";
   $ss->_push($left);
   $left=$left->left();
}
}
  if(not $ss->is_empty()){
  my $data=$ss->_pop();
     if($data->mark()){
       if($data->right()){
          my $right=$data->right();
            $ss->_push($right);
   }
}
}
}
}
print "==================================================\n";
pre($tree);
print "\n";


sub mid{ my $data;
          my $top;
my $stack=Stack->new();
  $stack->_push($_[0]);
  while(not $stack->is_empty()){
    
 while( $data=$stack->peek() and defined $data){
     if(not $data->mark()){ $stack->_push($data->left());
          $data=$data->left();}
              }  
                          # my $ei=$stack->peek();
     while(not defined($stack->peek())){ $stack->_pop();}
      if(not $stack->is_empty()){
            $data=$stack->peek();
        if($data->mark())
          {print $data->value," ";
           $stack->_pop();
          }
        else
          {$data->mark(1);
             
           $stack->_push($data->right());
               
          }
        }
        }

     }



sub midtravl{
my $stack=Stack->new();
my $cur=$_[0];
while($cur or not $stack->is_empty()){
 if($cur){
   $stack->_push($cur);
   $cur=$cur->left();
  }
  else{
   $cur=$stack->_pop();
  print $cur->value," ";
  $cur=$cur->right();
}
}
}

sub midmid{
if(defined $_[0]){
midmid($_[0]->left());
print $_[0]->value," ";
midmid($_[0]->right());}
}


midmid($tree);
printf "\n";
print"#################################### midtravel\n";
midtravl($tree1);
mid($tree);     
print "################################new fun############\n";

mid($tree); 
