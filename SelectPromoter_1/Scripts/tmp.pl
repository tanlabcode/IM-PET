open(A,"tmp.txt");
open(B,">sig/$ARGV[0].txt");
while(<A>){
    $n=(split(/\s+/,$_))[0];
    if($n eq $ARGV[0]){
	print B;
    }
}
