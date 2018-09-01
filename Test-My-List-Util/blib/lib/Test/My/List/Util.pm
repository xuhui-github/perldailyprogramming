package Test::My::List::Util;

use 5.008008;
use strict;
use warnings;
use Test::Builder;
require Exporter;
my $Test=Test::Builder->new();
our @ISA = qw(Exporter);

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Test::My::List::Util ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(sum_ok
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(sum_ok
	
);

our $VERSION = '0.01';

sub sum_ok{
if(scalar(@_)<2){$Test->diag("invalid numbers of argument\n");
    $Test->ok(0);
}
my($a,$b)=@_;
if($a==$b){$Test->ok(1);}
else{
$Test->diag("expected:$b\n got $a");
$Test->ok(0);
}
}



# Preloaded methods go here.

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Test::My::List::Util

=head1 SYNOPSIS

  use Test::My::List::Util;
  use My::List::Util;
  my @item=qw(1 2 3);
 sum_ok( sum(@item),6,"sum of array is 6");

=head1 DESCRIPTION

Stub documentation for Test::My::List::Util, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

test sum of an array

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

root, E<lt>root@localdomainE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by root

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
