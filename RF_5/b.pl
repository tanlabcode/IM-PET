open(A,$ARGV[0]);
open(B,">tmp.txt");
while(<A>){
    if(/^\s+\d.*/){
	@abc=split(/\s+/,$_);
	if($abc[4] eq "+"){
	    print B "$abc[5]\n";
	}else{
	    $l=1-$abc[4];
	    print B "$l\n";
	}
    }
    elsif(/^\d.*/){
	@abc=split(/\s+/,$_);
	if($abc[3] eq "+"){
	    print B "$abc[4]\n";
	}else{
	    $l=1-$abc[3];
	    print B "$l\n";
	}
    }
}
system("mv tmp.txt $ARGV[0]");
