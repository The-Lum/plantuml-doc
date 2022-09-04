#!/usr/bin/perl
use strict;
use warnings;
use autodie;

# Generate from TOC: Doc list and Curl cfg

# Credits:
# https://stackoverflow.com/questions/254345/how-can-i-extract-url-and-link-text-from-html-in-perl

# Input File
my $filename = "run/toc.en.html";

# Anchors
my $a;

# Output File 
## List of the Doc from TOC
open (my $OF, '>:encoding(UTF-8)', 'run/doc.en.md');
## Curl cfg file
open (my $OF_CFG, '>:encoding(UTF-8)', 'run/doc.en.curl.cfg');

open(my $fh, '<:encoding(UTF-8)', $filename) or die "cannot open file $filename";
{
    local $/;
    $a = <$fh>;
}
close($fh);
 
while( $a =~ m/<a[^>]*?href=\/doc\/markdown\/en\/([^>]*?)>.*?<\/a>/igs )
{   
    print $OF "$1\n";
    print $OF_CFG qq{-o doc/en/$1.md\n};
    print $OF_CFG qq{url = "http://alphadoc.plantuml.com/raw/markdown/en/$1"\n};
}
close($OF);
close($OF_CFG);
