#!/usr/bin/env perl

use strict;
use warnings;

use Getopt::Long;
use Pegex::Compiler;
use Pegex::Input;

my %opt;
GetOptions("to=s" => \$opt{enc});
my $pc = Pegex::Compiler->new();
my $gt = Pegex::Input->new(file => "crontab.pgx");
my $cg = $pc->compile($gt)->tree;
if ($opt{enc} eq 'json') {
	print $pc->to_json($cg);
}
elsif ($opt{enc} eq 'yaml') {
	print $pc->to_yaml($cg);
}
else {
	print $pc->to_perl($cg);
}
