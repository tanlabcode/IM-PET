$PATH=shift;

open(A,"ANN_Output");
open(B,"$PATH/SelectPromoter_1/ANN31");
open(C,">tmp.txt");
for($i=1;$i<=5;$i++){
    $l=<B>;
    chomp($l);
    print C "$l\t0.00001\n";
}
while(<B>){
    chomp;
    $l=<A>;
    @a=split(/\s+/,$l);
    print C "$_\t$a[1]\n";
}
system("perl $PATH/SelectPromoter_1/Scripts/tl.pl $PATH");
system("rm tmp.txt");
