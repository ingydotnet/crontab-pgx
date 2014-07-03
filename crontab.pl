#!/usr/bin/env perl

package Cron;

use strict;
use warnings;
use parent 'Pegex::Tree::Wrap';

sub gotrule {
	my ($self, $got) = @_;
	return $got;
}

package main;

use strict;
use warnings;
use utf8;

use Pegex;
use Pegex::Input;
use Data::Dumper;

my $grammar = Pegex::Input->new(file => "crontab.pgx");
my $input = Pegex::Input->new(file => "crontab");
my $result = pegex($grammar, 'Pegex::Tree::Wrap')->parse($input);
print Dumper $result;

