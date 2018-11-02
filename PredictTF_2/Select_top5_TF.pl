# July 2013 by BH
# 
# The script picks the top 5 TFs and extracts their activity profiles output in all_tf.txt
#
# Prerequisite: summary.txt (TF expression values across 11 cell types)
# Input: TF_pred_result_bg.txt
# Output: all_tf.txt
#
# Input parameter: cell type:
# 3-GM12878
# 4-H1
# 5-HepG2
# 6-HMEC
# 7-HSMM
# 8-HUVEC
# 9-K562
# 10-NHEK
# 11-NHLF
# 12-Mcf7
# 13-T

die "usage: perl top.pl <cell type>\n" if (@ARGV<1); 
open(A,"TF_pred_result_bg.txt");
open(B,">max_bge.txt");
open(O,">max_bge_ratio.txt");
$line=<A>;
@n=split(/\s+/,$line);
@ln=();
open(C,"../PredictTF_2/summary.txt");
@lnn=();
@exp=();
while(<C>){
    $e=(split(/\s+/,$_))[$ARGV[0]];
    push(@exp,$e);
    push(@lnn,$_);
}
close C;
foreach $jj(@n){
    $jj=$jj.".mat";
    foreach $line(@lnn){
	@abc=split(/\s+/,$line);
	if($abc[0] eq $jj){
	    push(@ln,$abc[1]);
	    #print "$abc[1]\n";
	    last;
	}
    }
}
#print "Done\n";
$ij=1;
while(<A>){
    #print "$ij\t";
    $ij++;
    @org=split(/\s+/,$_);
    for($i=0;$i<526;$i++){
	$org[$i]=$org[$i]*$exp[$i];
    }
    $y=@org;
    if($ij==61){
#	print "@org ";
    }
    @sorted=sort{$b<=>$a}@org;
    @maxp=();
    @maxn=();
    $i=0;
    $i1=-1;
    while($i<5){
	if(($ij==61)&&($i==4)){
#	    print "$i1 ";
	}
	$i1++;
	for($j=0;$j<$y;$j++){
	    if($org[$j]==$sorted[$i1]){
		if(($ij==61)&&($i==4)){
#		    print "$j @maxn @maxp $ln[$j]\n";
		}
		$flag1=0;
		foreach $jj(@maxp){
		    if($j==$jj){
			$flag1=1;
			last;
		    }
		}
		if($flag1==0){
		    $flag2=0;
		    foreach $jj(@maxn){
			if($ln[$j] eq $jj){
			    $flag2=1;
			    last;
			}
		    }
		    if($flag2==0){
			push(@maxn,$ln[$j]);
			#print "$i $org[$j]\n";
			push(@maxp,$org[$j]);
			$i++;
			last;
		    }
		}
	    }
	}
    }
    #print "\n";
    for($i=0;$i<5;$i++){
	print B "$maxn[$i]\t";
	print O "$maxp[$i]\t";
    }
    print B "\n";
    print O "\n";
}
system("perl ../PredictTF_2/d.pl");
system("perl ../PredictTF_2/all.pl");
