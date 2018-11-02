# July 2013 by BH
# Here compiled all the scripts for computing TPC
# Input: CRM.fa, CRM.txt
# Output: Result/tpc-result.txt

#Updated May 2014

#print "scan 682 TF motifs for each enhancer\n";
system("perl $ARGV[0]/PredictTF_2/2/Scan_tf.pl");
#print "pick top 5 TFs for each enhancer\n";
system("perl $ARGV[0]/PredictTF_2/2/Select_top5_TF.pl $ARGV[0]");# input parameter: cell type (detail see top.pl)
print "compute TPC...\n";

