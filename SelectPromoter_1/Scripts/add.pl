$PATH=shift;

open(A,"Expr.txt");
open(B,"$PATH/SelectPromoter_1/t31.gtf");
open(C,">tmp.gtf");
while(<B>){
    chomp;
    $l=<A>;
    @a=split(/\s+/,$l);
    print C "$_\t$a[1]\n";
}
system("mv tmp.gtf $PATH/SelectPromoter_1/transcript.gtf");
