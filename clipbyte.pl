package ClipByte;
use overload '+' => \&clip_add,
             '-'=>\&clip_sub,
             q("")=>\&as_string,
             fallback=>true;
                 
sub new{
my $class=shift;
my  $value=shift;
return bless \$value,$class;
}

sub clip_add{
my($x,$y)=@_;
my($value)=ref($x)?$$x:$x;
$value +=ref($y)?$$y:$y;
$value=255 if $value>255;
$value=0 if $value<0;
return bless \$value,ref($x);
}

sub clip_sub{
my($x,$y,$swap)=@_;
my($value)=ref($x)?$$x:$x;
$value -=ref($y)?$$y:$y;
if($swap){$value=-$value;}
$value=255 if $value>255;
$value=0 if $value<0;
return bless \$value,ref($x);
}

sub as_string{
my $ref=shift;
if(ref($ref)&&($ref->isa("ClipByte"))){
return $$ref}
return "";
}



package main;
my $byte1=ClipByte->new(200);
my $copy=$byte1;
 ++$copy;
print $copy,$byte1,"\n";
my $byte2=ClipByte->new(50);
$byte1++;
print $byte1,"\n";
$byte2--;
print $byte2,"\n";
my $count=++$byte2;
print "50\n";
print "$count\n";
$count=$byte2++;
print "50 51\n";
print $count,"\n";
print $byte2,"\n";
$byte3=$byte1+$byte2;
$byte4=$byte1-$byte2;
$byte5=150-$byte2;

print "\$byte1 is $byte1\n";
print "\$byte2 is $byte2\n";
print "\$byte3 is $byte3\n";
print "\$byte4 is $byte4\n";
print "\$byte5 is $byte5\n";

