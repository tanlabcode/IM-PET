open(A,"alfresult_CRM.txt");
open(B,">tmp.txt");
while(<A>){
    for($i=1;$i<=13;$i++){
	s/nan/1/;
    }
    print B;
}
system("mv tmp.txt alfresult_CRM.txt");
