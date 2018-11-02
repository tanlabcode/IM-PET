#July,2013 by BH
#The script computes avg CSIANN score at each enhancer.

#Updated May,2014

open(A,"CRM.CSI.txt");
open(B,">CRM.sig.txt");
open(C,"CRM.txt");
while(<A>){
    $line=<C>;
    if($line){
    @abc=split(/\s+/,$_);
    for($ii=2;$ii<=32;$ii++){
	$abc[$ii]=0;
    }
    for($i=0;$i<49;$i++){
	$line=<A>;
	if(($i>14)&&($i<35)){
	    @ab=split(/\s+/,$line);
	    for($ii=2;$ii<=32;$ii++){
		$abc[$ii]+=$ab[$ii];
	    }
	}
    }
    for($ii=2;$ii<32;$ii++){
	$abc[$ii]=$abc[$ii]/20;
	print B "$abc[$ii]\t";
    }
    $abc[32]=$abc[32]/20;
    print B "$abc[32]\n";
    }
}
