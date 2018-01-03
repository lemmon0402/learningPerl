#!/usr/bin/env perl
# coding=utf-8
use strict;
use warnings;


sub check_required_items{
    my $who = shift;
    my $items = shift;
    my %who_items = map {$_, 1} @{$items};

    my @required = qw(preserver sunscreen water_bottle jacket);

    for my $item (@required){
        unless ($who_items{$item}){
            print "$who is missing $item.\n"
        }
    }
}

my @skipper = map {$_, 1} qw(blude_shirt hat jacket perserver sunscreen);
check_required_items('skipper', @skipper);

my @gilligan = qw(red_shirt hat lucky_socks water_bottle);
check_required_items('gilligan', @gilligan);
