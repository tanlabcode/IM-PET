# July 22, 2013 by BH
# The script delete the intermediate files.

system("mv CRM* Result/.");
system("mv Predictions.txt Result/.");
system("mv out.n2.txt Result/.");
system("mv all_pairs.txt Result/.");
system("rm *.txt");
#system("rm *.fa");
#system("rm *.bed");
#system("rm *.unmap");
#system("rm *.1");
system("rm *.arff");
#system("rm -r INPUT");
#system("rm -r sig");
#system("mv Result/CRM* .");
system("mv Result/Predictions.txt .");
system("rm -r Result");
system("rm ANN_Output");

print "EP Predictions saved in 'Predictions.txt'\n";
