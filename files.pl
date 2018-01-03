#!/usr/bin/env perl
# coding=utf-8
use strict;
use warnings;

# my $line = <$in>;
# my @lines = <$in>;

#while (<$in>){
#    print "just read in this line: $_";
#}

sub logger {
    my $logmessage = shift;
    open my $logfile, ">>", "my.log" or die "could not open my.log: $!";
    print $logfile $logmessage;
}

logger("we have a logger");
