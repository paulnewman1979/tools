#!/usr/bin/perl

use warnings;
use strict;

my $line;
my %lineHash;

while ($line=<STDIN>) {
    chomp $line;
    if (!exists($lineHash{$line})) {
        print "$line\n";
        $lineHash{$line} = 1;
    }
}
