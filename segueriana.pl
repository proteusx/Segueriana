#!/usr/bin/perl -w

use v5.10;
use strict;
use warnings;
use utf8;
use File::Slurp::Unicode;
binmode STDOUT, ":utf8";

my $seg_file = shift @ARGV;
my $seg_text = read_file($seg_file, encoding => 'utf8' );

my @lemas = split (/\n<(.+?)>\:? /, $seg_text);      # Split on '<>:'
shift @lemas;
my %lemata = @lemas;
foreach my $head (sort keys %lemata)
{
  my $body = $lemata{$head};
  $head =~ s/[^\x{0370}-\x{03df}\x{1f00}-\x{1ffe}\s]//g;  # Remove non Greek symbols
  # $head =~ s/^\@//;
  $head = lc($head);                     # Lower case headwords
  print "$head\n";
  $body =~ s/\n/ /g;
  $body =~ s/\- //g;                     # Strip hyphenation
  $body =~ s/(\x{201c}.+?\x{201e})/[c blue]$1\[\/c]/g;    # quoted text “...„
  $body =~ s/\x{2329}(.+?)\x{232a}/[c red]$1\[\/c]/g;     # Angle brackets 〈...〉
  $body =~ s/\<(.+?)\>/[c green]$1\[\/c]/g;                 #  brackets <...>
  # chomp $body;
  print "\t[m]$body\[\/m]\n" if $body;
}
