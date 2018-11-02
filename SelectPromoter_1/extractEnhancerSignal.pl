#July, 2013 by BH
#The script functions to extract CSIANN score profiles for every enhancer

#Updated May,2014

$PATH=shift;

@chr=("chrY","chrX");
for($i=1;$i<23;$i++){
    $n="chr$i";
    push(@chr,$n);
}

open(O,">CRM.CSI.txt");
open(A,"CRM.txt");
$line=<A>;
@al=split(/\s+/,$line);
$s=int($al[1]/200)+5;
foreach $i(@chr){
    open(I,"$PATH/SelectPromoter_1/sig/$i.txt");
    @b=();
    while(<I>){
	push(@b,$_);
    }
    $y=@b;
    #print "$i $y\n";
    if($s<25){
	$l=0;
	$r=49;
    }elsif($s>$y-25){
	$l=$y-50;
	$r=$y-1;
    }else{
	$l=$s-25;
	$r=$s+24;
    }
    for($j=$l;$j<=$r;$j++){
	print O $b[$j];
    }
    while(<A>){
	#print "a\n";
	@a=split(/\s+/,$_);
	if($a[0] eq $i){
	    #print "$a[0] $a[1]\n";
	    $s=int($a[1]/200);
	    if($s<25){
		$l=0;
		$r=49;
	    }elsif($s>$y-25){
		$l=$y-50;
		$r=$y-1;
	    }else{
		$l=$s-25;
		$r=$s+24;
	    }
	    for($j=$l;$j<=$r;$j++){
		print O $b[$j];
	    }
	}else{
	    #print "--> $a[0] $a[1]\n";
	    @al=split(/\s+/,$_);
	    $s=int($al[1]/200);
	    last;
	}
    }
}
