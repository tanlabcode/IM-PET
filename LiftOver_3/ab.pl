open(A,"CRM.txt");
open(B,">tmp.txt");
while(<A>){
    @a=split(/\s+/,$_);
    $l=$a[1]-1000;
    $r=$a[1]+1000;
    print B "$a[0]\t$l\t$r\n";
}
system("mv tmp.txt CRM.txt");
