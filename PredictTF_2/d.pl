# July 2013 by BH
# Given top 5 TFs for each enhancer
# The script extract the expression values of the 5 TFs for computing TPC

open(A,"max_bge.txt");
#open(B,$ARGV[1]);
open(C,">max_bge.txt.1");
#open(D,">$ARGV[1].1");
open(E,"../PredictTF_2/TF_sum_exp.txt");
@tf=();
while(<E>){
    push(@tf,$_);
}
close E;
while(<A>){
    @abc=split(/\s+/,$_);
    foreach $i(@abc){
	$flag=0;
	foreach $t(@tf){
	    $n=(split(/\s+/,$t))[0];
	    if($i eq $n){
		print C $t;
		$flag=1;
		last;
	    }
	}
	if($flag==0){
	    print C "$i\t";
	    for($j=0;$j<=10;$j++){
		srand;
		$r=rand();
		if($r>0.5){
		    print C "0\t";
		}else{
		    print C "0.00000001\t";
		}
	    }
	    print C "\n";
	    #print "$i\n";
	}
    }
}
