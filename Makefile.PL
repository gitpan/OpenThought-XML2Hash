# Makefile.PL for OpenThought::XML2Hash                 http://openthought.net
# -------------------------------------                 eric at openthought.net

use lib ".";
use ExtUtils::MakeMaker qw(prompt);

# ExtUtils::AutoInstall Bootstrap Code, version 2.
BEGIN { my($p,$v)=('ExtUtils::AutoInstall',0.26);eval"use $p $v;1"or
        print"==> $p $v is needed\n*** Fetching $p.\n"and
        require CPAN,CPAN::install $p;eval"use $p $v;1" or die
        "*** Please install $p $v manually.\n"}

# XML::Parser Code
my $p='XML::Parser'; eval"use $p 2.29;1" or(print
       "*** Fetching $p.\n"), require CPAN,
       CPAN::Shell->install("C/CO/COOPERCL/XML-Parser-2.29.tar.gz");
       eval "use $p 2.29;1" or die "*** Please install $p manually.\n";

use ExtUtils::AutoInstall (
   -version             => '0.26',
   -core                => [
        XML::Parser     => '2.29',
   ],
);

WriteMakefile(
    AUTHOR        => 'Eric Andreychek (eric at openthought.net)',
    ABSTRACT      => 'Convert XML Data to a Hash',
    NAME          => 'OpenThought::XML2Hash',
    DISTNAME      => 'OpenThought-XML2Hash',
    VERSION_FROM  => 'lib/OpenThought/XML2Hash.pm',
);

