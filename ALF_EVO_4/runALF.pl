# July 2013 by BH
#
# The script calculates the sequence similarity scores between the human sequence and its 14 homologous sequences.
# 
# Prerequistite: ALF v1.0 
# Input: CRM.fa
# Output: all_crm_alf.txt

$PATH=shift;

system("perl $PATH/ALF_EVO_4/in.pl"); # generate input files of ALF

open(B,">alfresult_CRM.txt");
#open(C,"test.txt");
#@a=();
#while(<C>){
#    $n=(split(/\s+/,$_))[0];
#    push(@a,$n);
#}
for($i=1;$i<=$ARGV[0];$i++){
    #system("perl run.pl $i");
    system("~$PATH/ALF_EVO_4/alf -k 6 -i INPUT/input$i.txt -o INPUT/output$i.txt");
    #system("./ACANA/ACANA -I input3.txt -S ACANA/dnaMatrix -G -400 -A -30 -O out");
    open(A,"INPUT/output$i.txt");
    $line=<A>;
    print B $line;
}

system("perl $PATH/ALF_EVO_4/nan.pl"); # convert file format
system("perl $PATH/ALF_EVO_4/inr.pl $PATH"); # scale similarity score to between 0 and 1 by the rank 
system("perl $PATH/ALF_EVO_4/all.pl"); # convert file format for computing COEV score
