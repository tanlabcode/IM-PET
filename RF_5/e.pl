open(A,"CRM.txt");
open(B,"all_pairs.txt");
open(C,">all-tss.txt");
$la=<A>;
@abc=split(/\s+/,$la);
while(<B>){
    @ab=split(/\s+/,$_);
    if(($abc[0] eq $ab[0])&&($abc[1]==$ab[1])&&($abc[2]==$ab[2])){
	push(@tss,$ab[6]);
    }else{
	$y=@tss;
	print C "$abc[1]-$abc[2]\t$y\t";
	print C join(",",@tss);
	print C "\n";
	@tss=();
	push(@tss,$ab[4]);
	$la=<A>;
	@abc=split(/\s+/,$la);
    }
}
$y=@tss;
print C "$abc[1]-$abc[2]\t$y\t";
print C join(",",@tss);
print C "\n";
