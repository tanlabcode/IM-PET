#!/usr/bin/perl

$f1="/Users/bihe/IM-PET_Package/Mcf7/$ARGV[0].CRM.txt";
$f2="/Users/bihe/IM-PET_Package/Mcf7/$ARGV[0].CRM.CSI.txt";
open(A,$f1);
open(C,">$f2");
$ii=0;
while(<A>){
    $ii++;
#    if($ii>1000){
#	exit;
#    }
    chomp;
    @a=split(/\s+/,$_);
#    $chr="chr".$a[0];
    $chr=$a[0];
#    $center=($a[1]+$a[2])/2;
    $center=$a[1];
    $c=int($center/200)*200+1;
#    $c=int($a[1]/200)*200+1;
    $l=$c-4800;
    if($l<0){
	$l=1;
	$r=9801;
    }else{
	$r=$c+5000;
    }
    #print "$c\t$l\t$r\n";
    open(B,"/Users/bihe/IM-PET_Package/SelectPromoter_1/sig/$chr.txt");
    while(<B>){
	if(/$chr/){
	    #print "$a[0]$l\n";
	    while(<B>){
		@b=split(/\s+/,$_);
		if($b[1]>=$l){
		    print C;
		    for($i=$l+200;$i<=$r;$i+=200){
			$line=<B>;
			@b=split(/\s+/,$line);
			if($b[1]==$i){
			    print C "$line";
			}else{
			    print C "$chr\t$i";
			    for($i=1;$i<32;$i++){
				print C "\t0";
			    }
			    print C "\n";
			}
		    } 
		    last;
		}
	    }
	    last;
	}
    }

}

