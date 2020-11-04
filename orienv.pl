#!/usr/bin/perl

use strict;
use warnings;

print "Content-type: application/json; charset=iso-8859-1\n\n";

print "[";

foreach my $var (sort(keys(%ENV))) {
	if ($var =~ /ORI_.*/i) {
		my $val = $ENV{$var};
		$val =~ s|\n|\\n|g;
		$val =~ s|"|\\"|g;
		print "{\"${var}\":\"${val}\"},";
	}
}

print "]";
