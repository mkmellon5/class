<?php
#need .php extension

#Author-Marlo
#print a string
print "Hello World\n";

#variable
$DNA='ACGGGAGGACGGGAAAATTACTACGGCATTAGC';
print $DNA."\n";

#string concatenation 
$DNA2='ATAGTGCCGTGAGAGTGATGATGAT';
print "Here are the original two DNA fragments:\n\n";
print $DNA."\n";
print $DNA2."\n\n";

$DNA3="$DNA$DNA2";
print "Here is the concatenation of the first two gragments (version 1):\n\n";
print $DNA3."\n";

#Transcribe DNA to RNA
$RNA=$DNA;
$RNA=str_replace("T","U",$RNA);
print "Here is the result of transcribing the DNA to RNA:\n\n";
print "$RNA\n"

?>
