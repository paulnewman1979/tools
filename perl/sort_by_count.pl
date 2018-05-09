#!/usr/bin/perl

use warnings;
use strict;

my %keyHash;
my $key;

while ($key=<STDIN>) {
    chomp $key;
    if (exists($keyHash{$key})) {
        ++$keyHash{$key};
    } else {
        $keyHash{$key} = 1;
    }
}

foreach $key (sort {$keyHash{$b} <=> $keyHash{$a}} keys %keyHash) {
    print "$key\t$keyHash{$key}\n";
}
