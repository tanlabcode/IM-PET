# July 2013 by BH
#
# This script functions to extract all active promoters within a distance range.
# The default is 2M bp, which can be changed below.
#
#Define distance range here
$dis=1000000;
#############
# Prerequisite: transcript.gtf (annotation file containing genomic position and expression value across 11 cell types)
# Input: CRM.txt
# Output: all_pairs.txt and Result/dis-result.txt
#############

$PATH=shift;

$/=undef;
open(A,"$PATH/SelectPromoter_1/transcript.gtf");
$f=<A>;
close A;
@g=split(/\n/,$f);

@temp1=();
@temp2=();
foreach $i(@g){
    @a=split(/\s+/,$i);
    push(@temp1,$a[0]);
    push(@temp1,$a[2]);
    push(@temp2,$a[0]);
    push(@temp2,$i);
}
%pro=@temp1;
%line=@temp2;

$/="\n";

open(B,"$PATH/SelectPromoter_1/hash.txt");
@temp3=();
while(<B>){
    chomp;
    push(@temp3,$_);
}
%num=@temp3;
close B;

open(IN,"CRM.txt");
open(OUT,">all_pairs.txt");
while(<IN>){
    chomp;
    @a=split(/\s+/,$_);
    @b=split(/\s+/,$num{$a[0]});
    foreach $i(@b){
	$d=abs($pro{$i}-$a[1]-1000);
	if($d<$dis){
	    print OUT "$_\t$d\t$line{$i}\n";	
	}
    }
}
close IN;
close OUT;
