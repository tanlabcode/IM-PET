# July 2013 by BH
# The script scan the 350 TFs to the given enhancer sequence.

$pseu=0.1;
open(A,"CRM.fa");
@pwm=glob("../PredictTF_2/wtmx/*.mat");
while(<A>){
    $line=<A>;
    open(C,">seq.txt");
    print C $line;
    close C;
    foreach $i(@pwm){
	open(B,$i);
	$line=<B>;
	@fa=split(/\s+/,$line);
	$line=<B>;
	@fc=split(/\s+/,$line);
	$line=<B>;
	@fg=split(/\s+/,$line);
	$line=<B>;
	@ft=split(/\s+/,$line);
	$y=@fa;
	for($ii=2;$ii<$y;$ii++){
	    $total=$fa[$ii]+$fc[$ii]+$fg[$ii]+$ft[$ii]+4*$pseu;
	    $sa[$ii-2]=log(($fa[$ii]+$pseu)/$total/0.265);
	    $sc[$ii-2]=log(($fc[$ii]+$pseu)/$total/0.235);
	    $sg[$ii-2]=log(($fg[$ii]+$pseu)/$total/0.235);
	    $st[$ii-2]=log(($ft[$ii]+$pseu)/$total/0.265);
	}
	open(D,">motif.txt");
	$y=$y-2;
	print D "$y\n";
	for($ii=0;$ii<$y-1;$ii++){
	    print D "$sa[$ii]\t";
	}
	print D "$sa[$ii]\n";
	for($ii=0;$ii<$y-1;$ii++){
            print D "$sc[$ii]\t";
	}
	print D "$sc[$ii]\n";
	for($ii=0;$ii<$y-1;$ii++){
            print D "$sg[$ii]\t";
	}
	print D "$sg[$ii]\n";
	for($ii=0;$ii<$y-1;$ii++){
            print D "$st[$ii]\t";
	}
	print D "$st[$ii]\n";
	close D;
	system("python ../PredictTF_2/a.py");
    }
    open(E,">>TF_pred_result.txt");
    print E "\n";
    close E;
}
