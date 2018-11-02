$PATH=shift;

@file=glob("$PATH/LiftOver_3/*.over.chain");
foreach $f(@file){
	@abc=split(/\.over/,$f);
	@ab=split(/To/,$abc[0]);
	system("~$PATH/LiftOver_3/liftOver -minMatch=0.30 CRM.txt $f $ab[1]_30.txt $ab[1]_30.unmap");
	system("~$PATH/LiftOver_3/liftOver -minMatch=0.50 CRM.txt $f $ab[1]_50.txt $ab[1]_50.unmap");
	system("~$PATH/LiftOver_3/liftOver -minMatch=0.70 CRM.txt $f $ab[1]_70.txt $ab[1]_70.unmap");
	system("~$PATH/LiftOver_3/liftOver -minMatch=0.90 CRM.txt $f $ab[1]_90.txt $ab[1]_90.unmap");
}

