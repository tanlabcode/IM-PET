@file=glob("*summary.txt");
foreach $f(@file){
    $f1=$f;
    $f1=~s/txt/bed/;
    open(A,$f);
    open(B,">$f1");
    while(<A>){
	@abc=split(/\s+/,$_);
	if($abc[1] eq "NA"){
	    next;
	}else{
	    @ab=split(/-/,$abc[1]);
	    print B "$ab[0]\t$ab[1]\t$ab[2]\n";
	}
    }
}
