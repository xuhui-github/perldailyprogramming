# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Animal.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests =>3 ;
use Animal;
BEGIN { use_ok('Animal') }



Animal->colored("white");
is(Animal->color(),"white","Animal color is white now");

can_ok(Animal,'named');

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

