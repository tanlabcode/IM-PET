open(A,">TF_pred_result.txt");
@pwm=glob("../PredictTF_2/wtmx/*.mat");
foreach $i(@pwm){
    @abc=split(/wtmx\//,$i);
    @ab=split(/\.mat/,$abc[1]);
    #open(B,$i);
    #while(<B>){
	#@abc=split(/\s+/,$_);
	#print A "$abc[0]\t";
    #}
    print A "$ab[0]\t";
}
print A "\n";
