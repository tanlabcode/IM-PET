open(A,"all_pairs.txt");
open(B,"CRM.txt");
open(C,"position_CRM.txt");
open(D,">all_crm_syn.txt");
$l=<B>;
chomp($l);
$l1=<C>;
#$l2=<C>;
#$l3=<C>;
#$l4=<C>;
#$l5=<C>;
#$ll=$l1.$l2.$l3.$l4.$l5;
while(<A>){
    @abc=split(/\s+/,$_);
    $c="$abc[0]\t$abc[1]\t$abc[2]";
    if($c eq $l){
	print D $l1;
    }else{
	$l=<B>;
	chomp($l);
	$l1=<C>;
	#$l2=<C>;
	#$l3=<C>;
	#$l4=<C>;
	#$l5=<C>;
	#$ll=$l1.$l2.$l3.$l4.$l5;
	print D $l1;
    }
}
