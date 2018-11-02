@file=glob("$ARGV[0]/LiftOver_3/*.over.chain");
foreach $f(@file){
$nn=(split(/\.over/,$f))[0];
$n=(split(/To/,$nn))[1];
$a=$n."_aCRM.txt";
open(A,$a);
$a=$n."_CRM.txt";
open(C,$a);
$a=$n."_summary.txt";
open(B,">$a");
while(<C>){
    @abc=split(/\s+/,$_);
    $c="$abc[0]-$abc[1]-$abc[2]";
    if($abc[6]=~/\#/){
	if($abc[5]=~/\#/){
	    if($abc[4]=~/\#/){
		if($abc[3]=~/\#/){
		    print B "$c\tNA\t";
		}else{
		    print B "$c\t$abc[3]\t";
		}
	    }else{
		print B "$c\t$abc[4]\t";
	    }
	}else{
	    print B "$c\t$abc[5]\t";
	}
    }else{
	print B "$c\t$abc[6]\t";
    }
    $line=<A>;
    @abc=split(/\s+/,$line);
    $c=int(($abc[2]+$abc[1])/2);
    if($abc[6]=~/\#/){
	if($abc[5]=~/\#/){
            if($abc[4]=~/\#/){
		if($abc[3]=~/\#/){
                    print B "$c\tNA\n";
		}else{
                    print B "$c\t$abc[3]\n";
		}
            }else{
		print B"$c\t$abc[4]\n";
            }
	}else{
            print B "$c\t$abc[5]\n";
	}
    }else{
	print B"$c\t$abc[6]\n";
    }
}
}
