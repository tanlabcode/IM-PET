# July 2013 by BH
#
# The script extracts the homologous regions of the promoters (ex.pl)
# and computes the synteny score of each EP pair.
#
# Input: all_crm_syn.txt
# Output: all_pairs_syn.txt

system("perl $ARGV[0]/LiftOver_3/ex.pl");

open(A,"all_crm_syn.txt");
open(B,"all_pro_syn.txt");
open(C,">all_pairs_syn.txt");
while(<A>){
    $l=<B>;
    @abc=split(/\s+/,$_);
    @ab=split(/\s+/,$l);
    $s=0;
    $ss=0;
    @len=split(/-/,$abc[0]);
    $d=$len[2]-$len[1];
    #print C "$d\t";
    $c=int(($len[1]+$len[2])/2);
    $p=(split(/-/,$ab[0]))[1]+2000;
    $d=abs($c-$p);
    #print C "$d\t";
    for($i=0;$i<13;$i++){
	if(($abc[$i] eq "NA")&&($ab[$i] eq "NA")){
	    print C "0\t";
	    $ss++;
	}elsif(($abc[$i] eq "NA")||($ab[$i] eq "NA")){
	    print C "0\t";
	    next;
	}else{
	    @len=split(/-/,$abc[$i]);
	    @lem=split(/-/,$ab[$i]);
	    if($len[0] eq $lem[0]){
		$c=($len[1]+$len[2])/2;
		$p=($lem[1]+$lem[2])/2;
		if(abs($c-$p)<2000000){
		    print C "1\t";
		    $s++;
		}else{
		    print C "0\t";
		}
	    }else{
		print C "0\t";
	    }
	}
    }
    print C "$s\n";
}
