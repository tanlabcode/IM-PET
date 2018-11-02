# July 2013 by BH
#
# Given the synteny scores and the sequence similarity profiles, the script computes the final COEV score
#
# Input: all_pairs_syn.txt, all_crm_alf.txt
# Output: Result/evo-result.txt

open(A,"all_pairs_syn.txt");
open(B,"all_crm_alf.txt");
open(C,"all_pro_alf.txt");
open(D,">Result/evo-result.txt");
#open(E,">nega_score4.txt");
#open(D,">posi_crm_0.txt");
while(<A>){
    $l1=<B>;
    $l2=<C>;
    @abc=split(/\s+/,$_);
    @ab=split(/\s+/,$l1);
    @a=split(/\s+/,$l2);
    #for($ii=1;$ii<=13;$ii++){
	#$ab[$ii]=($ab[$ii]+1)/2;
	#$a[$ii]=($a[$ii]+1)/2;
    #}
    $s1=0;
    for($i=0;$i<13;$i++){
	if($abc[$i]==1){
	    $s1=$s1+$ab[$i+1]*$a[$i+1];
	}
    }
    print D "$s1\n";
}

