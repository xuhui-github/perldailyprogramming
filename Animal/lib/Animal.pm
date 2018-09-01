package Animal;

use 5.008008;
use strict;
use warnings;
use Carp;
require Exporter;

our @ISA = qw(Exporter);
our ($color,$name)=(&default_color(),&default_name());

# Items to export into callers namespace by default. Note: do not export
# names by default without a very good reason. Use EXPORT_OK instead.
# Do not simply export all your public functions/methods/constants.

# This allows declaration	use Animal ':all';
# If you do not need this, moving things directly into @EXPORT or @EXPORT_OK
# will save memory.
our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	
);

our $VERSION = '0.01';
sub default_color{
return "gray";
}

sub default_name{
return "an unknown animal";
}

sub new{
my $class=shift;
ref($class) and croak "new method just invoke by class name";
my $name=shift;
my $obj={
         name=>$name,
         color=>&default_color(),
         };
  bless $obj,$class;
}

sub set_name{
my $ref=shift;
ref($ref) or croak  "only invoke by instance of Animal";
my $name=shift;
$ref->{name}=$name;
}

sub set_color{
my $ref=shift;
ref($ref) or croak "only invoke by instance of Animal";
my $color=shift;
$ref->{color}=$color;
}
 
sub named{
my $class=shift;
ref($class) and croak "named invoke by class name";
 $name=shift if @_;
}

sub colored{
my $class=shift;
ref($class) and croak "colored invoke by class name";
$color=shift if @_;
}

sub name{
my $ref=shift;
ref($ref) and return $ref->{name};
return $name;
}
 
sub sound{
return "ZZZZZZZZZZZZZZZZ";
}

sub color{
my $ref=shift;
ref($ref) and return $ref->{color};
return $color;
}

sub speak{
my $class=shift;
ref($class) and croak "speak only invoked by classname";
print $class->name," goes ",$class->sound,"\n";
}

sub eat{
my $class=shift;
ref($class) and croak "eat only invoked by classname";
my $food=shift;
print $class->name," eats ",$food,"\n";
}


1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

Animal - Perl extension for blah blah blah

=head1 SYNOPSIS

  use Animal;
  my $a=Animal->new("marry");
  $a->set_name("tom");
  
  print Animal->color,"\n";
  Animal->colored("white");

  Animal->eat("grass");
  Animal->speak();
=head1 DESCRIPTION

Stub documentation for Animal, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

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
