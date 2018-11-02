# July 2013 by BH
# The last step for scanning TFs: considering background binding probability

open(A,"TF_pred_result.txt");
open(B,"../PredictTF_2/result_b.txt");
open(C,">TF_pred_result_bg.txt");
$line=<A>;
print C $line;
$line=<B>;
$line=<B>;
@abc=split(/\s+/,$line);
while(<A>){
    @ab=split(/\s+/,$_);
    for($i=0;$i<526;$i++){
	$s=1000000*$ab[$i]/$abc[$i];
	print C "$s\t";
    }
    print C "\n";
}
