# July 2013 by BH
# Here compiled all the scripts for computing EPC
# Usage: -p Path to IM-PET, -e enhancer positions, -s enhancer signals -x expression

use Getopt::Long;

if(@ARGV < 8){
    print "Usage:perl IM-PET.pl -p <Path to IM-PET> -e <Enhancer positions> -s <Enhancer signals> -x <Expression>\n";
    exit;
}
GetOptions('p=s'=>\$PATH, 'e=s'=>\$crm, 's=s'=>\$sig, 'x=s'=>\$expr);

system("mv $crm CRM.txt");
system("mv $sig ANN_Output");
system("mv $expr Expr.txt");

#system("perl $PATH/SelectPromoter_1/Scripts/add.pl $PATH");
#system("perl $PATH/SelectPromoter_1/Scripts/add1.pl $PATH");

system("perl $PATH/SelectPromoter_1/Scripts/ex.pl $PATH");
system("perl $PATH/SelectPromoter_1/Scripts/c.pl $PATH");
system("mkdir Result");
#print "select promoters\n";
system("perl $PATH/SelectPromoter_1/SelectPro_new.pl $PATH");
print "compute DIS\n";
system("cut -f 4 all_pairs.txt > Result/dis-result.txt");
print "compute EPC\n";
#system("perl $PATH/LiftOver_3/ab.pl");
system("perl $PATH/SelectPromoter_1/all.pl");
#system("/opt/R/2.11.1/bin/Rscript $PATH/SelectPromoter_1/csi.R");
system("python $PATH/SelectPromoter_1/cor.py");
#print "step 1 done\n";

#system("perl $PATH/LiftOver_3/runLiftover.pl $PATH");
#system("perl $PATH/LiftOver_3/syn.pl $PATH");
#system("perl $PATH/ALF_EVO_4/getseq.pl $PATH");
#system("perl $PATH/ALF_EVO_4/runalf.pl");
#system("perl $PATH/ALF_EVO_4/score.pl");

system("perl $PATH/RF_5/transfer2arff.pl $PATH");
system("perl $PATH/RF_5/runWeka.pl $PATH");
system("perl $PATH/RF_5/top1.pl $PATH");

system("mv CRM.txt $crm");
system("mv ANN_Output $sig");
system("mv Expr.txt $expr");

