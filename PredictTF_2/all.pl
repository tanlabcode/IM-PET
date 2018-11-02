# July 2013 by BH
# The script functions to convert file format for computing TPC by 'tf.R'

open(A,"all_pairs.txt");
open(B,"CRM.txt");
open(C,"max_bge.txt.1");
open(D,">all_tf.txt");
$l=<B>;
chomp($l);
$l1=<C>;
$l2=<C>;
$l3=<C>;
$l4=<C>;
$l5=<C>;
$ll=$l1.$l2.$l3.$l4.$l5;
while(<A>){
    @abc=split(/\s+/,$_);
    $c="$abc[0]\t$abc[1]\t$abc[2]";
    if($c eq $l){
	print D $ll;
    }else{
	$l=<B>;
	chomp($l);
	$l1=<C>;
	$l2=<C>;
	$l3=<C>;
	$l4=<C>;
	$l5=<C>;
	$ll=$l1.$l2.$l3.$l4.$l5;
	print D $ll;
    }
}
