system("cut -f $ARGV[1] $ARGV[0]/ALF_EVO_4/training_crm.txt > 1.txt");
system("cut -f $ARGV[1] alfresult_CRM.txt > 2.txt");
open(A,"2.txt");
open(B,"1.txt");
@b=();
while(<B>){
    chomp;
    push(@b,$_);
}
open(C,"alfresult_nom.txt");
open(D,">tmp.txt");
while(<A>){
    $l=<C>;
    chomp($l);
    #print D "$l\t";
    $s=0;
    chomp;
    foreach $i(@b){
	if($_>$i){
	    $s++;
	}
    }
    $s=$s/2234;
    print D "$s\n";
}
system("mv tmp.txt alfresult_nom.txt");
