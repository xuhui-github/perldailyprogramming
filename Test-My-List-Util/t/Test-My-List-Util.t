# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Test-My-List-Util.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';
use My::List::Util;

use Test::More tests => 1;
BEGIN { use_ok('Test::My::List::Util') };
my @item=qw(1,2);

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

