# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Hourse.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';
use Animal;
use Test::More tests => 3;
BEGIN { use_ok('Hourse') };
my $h=Hourse->new("tom");
is($h->name(),"tom");
can_ok($h,"set_color");

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

