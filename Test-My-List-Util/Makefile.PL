use 5.008008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Test::My::List::Util',
    VERSION_FROM      => 'lib/Test/My/List/Util.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Test/My/List/Util.pm', # retrieve abstract from module
       AUTHOR         => 'root <root@localdomain>') : ()),
);
