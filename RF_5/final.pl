$PATH=shift;

open(A,"$PATH/RF_5/genes.txt");
@b=();
while(<A>){
    chomp;
    push(@b,$_);
}
open(B,"all_pairs.txt");
open(C,"out.n2.txt");
open(D,">Predictions.txt");
print D "Chr\tStart\tEnd\tTarget\tScore\n";
while(<C>){
    $l=<B>;
    @a=split(/\s+/,$_);
    if($a[1]<4){
	@ab=split(/\s+/,$l);
	$l=$ab[1]-1000;
	$r=$ab[1]+1000;
	print D "$ab[0]\t$ab[1]\t$ab[2]\t$b[$ab[4]-1]\t$a[0]\n";
    }
}
