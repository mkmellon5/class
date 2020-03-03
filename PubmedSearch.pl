#!/usr/bin/perl -w
#This script gets the pubmed abstracts for a given term
use LWP::Simple;


#search term to find
$search_term="plant based diet";

#replace space with +
$search_term=~s/\s/+/g;

$retmax=10;

$base='http://eutils.ncbi.nlm.nih.gov/entrez/eutils/';

$db_name='pmc';

$url=$base."esearch.fcgi?db=$db_name&retmax=$retmax&term=$search_term";
#print$url

$esearch_result=get($url);
#print "$esearch_result";

@ids=($esearch_result=~m|.*<Id>(.*)</Id>.*|g);
#print join(',',@ids);

unlink "abstracts.txt";

foreach $id (@ids)
    {
    print "$id\n";
    $fetchurl=$base."efetch.fcgi?db=pubmed&id=$id&retmode=text&rettype=abstract";
    open(OUTFILE,'>>','abstracts.txt');
    print OUTFILE get($fetchurl);
    sleep 1;
    close OUTFILE;
    }

