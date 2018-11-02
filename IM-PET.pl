# July 2013 by BH
# Here compiled all the scripts for computing EPC
# Usage: -p Path to IM-PET, -e enhancer positions, -s enhancer signals -x expression

#system("export CLASSPATH=/nfs/homes/bihe/IM-PET_Package/weka-3-6-9/weka.jar");
#system("echo $CLASSPATH");

use Getopt::Long;

if(@ARGV < 8){
    print "Usage:perl IM-PET.pl -p <Path to IM-PET> -e <Enhancer positions> -s <
Enhancer signals> -x <Expression>\n";
    exit;
}
GetOptions('p=s'=>\$PATH, 'e=s'=>\$crm, 's=s'=>\$sig, 'x=s'=>\$expr);

system("cp $crm CRM.txt");
system("cp $sig ANN_Output");
system("cp $expr Expr.txt");

#Pre-process: extract CSIANN score profile for every enhancer; extract candidate promoters for every enhancer. 
system("perl $PATH/Scripts/Preprocess.pl $PATH");
#print "1 ";
#Compute 4 feature scores for every possible EP pair.
system("perl $PATH/Scripts/FeatureScore.pl $PATH");
#print "2 ";
#Run random forest classifier.
system("perl $PATH/Scripts/RF.pl $PATH");
#print "3 ";
#Delete intermediate files.
system("perl $PATH/Scripts/clean.pl");
#print "\n";
