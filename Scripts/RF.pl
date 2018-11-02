# July 2013 by BH
# 
# Given 4 files of feature scores in hand: dis-, epc-, tpc-, evo-result.txt,
# the script integrates these files into an arff file (Weka input format)

#system("cp $ARGV[0]/RF_5/tmp2.arff test.arff");
use threads;

$PATH=shift;

open(A,"Result/dis-result.txt");
open(B,"Result/epc-result.txt");
#open(C,"Result/tpc-result.txt");
#open(D,"Result/evo-result.txt");
@input=();
while(<A>){
    chomp;
    $l=<B>;
    chomp($l);
    $n="$_,\t$l,\t0\n";
    push(@input,$n);
    #$l=<C>;
    #chomp($l);
    #print O "$l,\t";
    #$l=<D>;
    #chomp($l);
    #print O "$l,\t0\n";
}

$s=@input;
$n=int($s/3);

for($i=1;$i<=2;$i++){
    system("cp $PATH/RF_5/tmp2.arff test$i.arff");
    open(O,">>test$i.arff");
    $l=($i-1)*$n;
    $r=$i*$n-1;
    for($j=$l;$j<=$r;$j++){
	print O $input[$j];
    }
}
system("cp $PATH/RF_5/tmp2.arff test$i.arff");
open(O,">>test$i.arff");
$l=($i-1)*$n;
#$r=$i*100000-1;
for($j=$l;$j<=$s;$j++){
    print O $input[$j];
}

#===========run weka==================
$thr1=threads->create(\&weka,$PATH,1);
$thr2=threads->create(\&weka,$PATH,2);
$thr1->join();
$thr2->join();
#weka($PATH,1);
#weka($PATH,2);

sub weka{
    my $p=shift;
    my $ii=shift;
    system("java weka.classifiers.trees.RandomForest -l $p/RF_5/Trained.model -T test$ii.arff -p 0 > out$ii.txt");
}

system("perl $PATH/RF_5/runWeka.pl $PATH");
system("cat out1.txt out2.txt out3.txt > out.txt");
system("rm out1.txt out2.txt out3.txt");

system("perl $PATH/RF_5/top.pl $PATH");
