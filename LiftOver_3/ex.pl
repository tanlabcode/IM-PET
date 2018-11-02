# July 2013 by BH
# The homologous regions of each promoter were pre-computed and saved in the position_aPRO.txt.
# The script extracts the homologous regions of the promoters.

open(A,"../SelectPromoter_1/position_aPRO.txt");
open(B,"../SelectPromoter_1/alf_aPRO.txt");
@a=();
@b=();
while(<A>){
    push(@a,$_);
    $l=<B>;
    push(@b,$l);
}

open(C,"all_pairs.txt");
open(D,">all_pro_syn.txt");
open(E,">all_pro_alf.txt");
while(<C>){
    $n=(split(/\s+/,$_))[4];
    print D $a[$n-1];
    print E $b[$n-1];
}
