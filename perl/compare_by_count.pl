#!/usr/bin/perl

use warnings;
use strict;

if (@ARGV != 2) {
    print "error\n";
    return -1;
}

my $filename1=$ARGV[0];
my $filename2=$ARGV[1];
my %keyHash;
my $key;

open(FILE, "$filename1");
while ($key=<FILE>) {
    chomp $key;
    if (exists($keyHash{$key})) {
        $keyHash{$key}[0]++;
    } else {
        $keyHash{$key} = [1, 0];
    }
}
close(FILE);

open(FILE, "$filename2");
while ($key=<FILE>) {
    chomp $key;
    if (exists($keyHash{$key})) {
        $keyHash{$key}[1]++;
    } else {
        $keyHash{$key} = [0, 1];
    }
}
close(FILE);

print "file1\tfile2\n";
foreach $key (keys %keyHash) {
    print "$keyHash{$key}[0]\t$keyHash{$key}[1]\t$key\n";
}
