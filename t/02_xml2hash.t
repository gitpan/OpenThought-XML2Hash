#!/usr/bin/perl

# $Id: 02_xml2hash.t,v 1.2 2002/08/26 18:50:33 andreychek Exp $

use strict;
use Test::More  tests => 1;
use lib ".";
use lib "lib";

my $xml = "<xml><can_you_hear_me_now>Good</can_you_hear_me_now></xml>";
use OpenThought::XML2Hash();

my $hash = OpenThought::XML2Hash::xml2hash( $xml );
ok ( $hash->{can_you_hear_me_now} eq "Good", "xml deserialization" );
