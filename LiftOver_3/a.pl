@file=glob("$ARGV[0]/LiftOver_3/*.over.chain");

foreach $f(@file){
    @abc=split(/\.over/,$f);
    @ab=split(/To/,$abc[0]);
    #system("mv $ab[1]_tmp1.txt $ab[1]_tmp.txt");
    system("cp CRM.txt $ab[1]_tmp.txt");
    open(A,"CRM.txt");
    open(D,"$ab[1]_tmp.txt");
    open(B,"$ab[1]_30.txt");
    open(C,"$ab[1]_30.unmap");
    open(E,">$ab[1]_tmp1.txt");
    $l1=<C>;
    $l2=<C>;
    $lb=<B>;
    while(<A>){
	$line=<D>;
	chomp($line);
	if($_ eq $l2){
	    @a=split(/\s+/,$l1);
	    print E "$line\t$a[0]\n";
	    $l1=<C>;
	    $l2=<C>;
	}else{
	    @a=split(/\s+/,$lb);
	    print E "$line\t$a[0]-$a[1]-$a[2]\n";
	    $lb=<B>;
	}
    }
}
