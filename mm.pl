#!/usr/bin/perl




my %greets=( 

Ginger=>sub{
my $person=shift;
print "Giner: (in a sultry voice)Well hello ,$person!\n";
},
Gilligan=>sub{
my $person=shift;
if($person eq "Skipper"){
print "Gilligan:Sir,yes,sir,$person\n";
}else{
print "Gilligan: Hi,$person!\n";
}
},
Skipper=>sub{
my $person=shift;
print "Skipper: Hey there, $person\n";
},
Professor=>sub{
my $person=shift;
print "By my calculations,you must be $person\n";
}
,
);

my @room;
for my $person(qw(Gilligan Skipper Professor Ginger)){

print "\n";
print "$person walk into the room\n";
for my $room_person(@room){
$greets{$person}->($room_person);
$greets{$room_person}->($person);
}
push @room,$person;
}







#my @everyone= sort keys %greets;

#for my $greeter(@everyone){
#for my $greeted(@everyone){
#print "$greeter says hello  to $greeted\n" if not $greeter eq $greeted;
#}
#}


#for my $person(qw(Skipper Gilligan)){
#$greets{$person}->("Professor");
#}




#skipper_greets("Gilligan");
#gilligan_greets("Skipper");

#my $p=\&skipper_greets;
#&{$p}("gill oh gill");
#$p=\&gilligan_greets;

#&$p("bob oh bob");



